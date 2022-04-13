import 'package:feasty/const/color.dart';
import 'package:feasty/const/global_list.dart';
import 'package:feasty/ui/cart/ui/iteam_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3 + 80,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/image/png/pizza2.png',
                            ),
                            fit: BoxFit.fill),
                      ),
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  _builCounter(context),
                ],
              ),
            ),
            const SizedBox(
              height: 21,
            ),
            //
            _buildMenuList(),
            SingleChildScrollView(
              child: GridView.builder(
                itemCount: gridImage.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 3,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context, int index) =>
                    GestureDetector(
                  onTap: () {
                    Navigator.of(context).push<void>(MaterialPageRoute<void>(
                      builder: (BuildContext context) => const ItemDetail(),
                    ));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          gridImage[index]['image'].toString(),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                gridImage[index]['name'].toString(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Text(
                                'Chicken Pizza and special sauce',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 9),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 9),
                                child: MaterialButton(
                                  color: Colors.white,
                                  minWidth: double.infinity,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)),
                                  onPressed: () {},
                                  child: const Text('\$4.99'),
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
        _appbar(context)
      ],
    ));
  }

  Widget _buildMenuList() {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Menu',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'PlayfairRegular',
                        fontWeight: FontWeight.bold)),
                SvgPicture.asset(
                  'assets/image/svg/serach.svg',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 43,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: itemList.length,
              itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: () {
                    selectIndex = index;
                    setState(() {});
                  },
                  child: Container(
                    width: 100,
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    decoration: BoxDecoration(
                      gradient: index == selectIndex
                          ? const LinearGradient(
                              colors: <Color>[
                                Color(0xffFFDD00),
                                Color(0xffFBB034),
                              ],
                            )
                          : const LinearGradient(
                              colors: <Color>[
                                Color(0xffFAFAFA),
                                Color(0xffFAFAFA)
                              ],
                            ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(9),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        itemList[index]['name'].toString(),
                        style: TextStyle(
                            color: index == selectIndex
                                ? Colors.white
                                : const Color(0xff302F3C),
                            fontFamily: 'GothamMedium',
                            fontWeight: FontWeight.w700,
                            fontSize: 13.5),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _appbar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset('assets/image/png/back_arrow.png'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset('assets/image/png/hart.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _builCounter(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
          height: MediaQuery.of(context).size.height / 7,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: <Color>[
                  Color(0xffFFDD00),
                  Color(0xffFBB034),
                ],
              ),
              borderRadius: BorderRadius.circular(19)),
          child: Column(
            children: <Widget>[
              const Text('Chicken Pizza',
                  style: TextStyle(
                      fontSize: 31,
                      fontFamily: 'PlayfairRegular',
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _buildContainer(
                        image: 'assets/image/png/delivery-man.png',
                        name: 'Free'),
                    _buildContainer(
                        image: 'assets/image/png/chronometer.png',
                        name: '10-20min'),
                    _buildContainer(
                        image: 'assets/image/png/star.png', name: '4.8'),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Widget _buildContainer({
    String? name,
    String? image,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
          color: const Color(0xfff5f5f5),
          borderRadius: BorderRadius.circular(19)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(image!),
          const SizedBox(
            width: 5,
          ),
          Text(name!,
              style: const TextStyle(
                fontFamily: 'GothamMedium',
                color: Colours.backColor,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }
}
