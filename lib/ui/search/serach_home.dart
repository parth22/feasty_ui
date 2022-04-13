import 'package:feasty/const/global_list.dart';
import 'package:feasty/ui/cart/ui/iteam_detail.dart';
import 'package:feasty/widgtes/search_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchHomeScreen extends StatefulWidget {
  const SearchHomeScreen({Key? key}) : super(key: key);

  @override
  _SearchHomeScreenState createState() => _SearchHomeScreenState();
}

class _SearchHomeScreenState extends State<SearchHomeScreen> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                        child: SvgPicture.asset(
                          'assets/image/svg/line.svg',
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Search',
                    style: TextStyle(
                        fontFamily: 'Gotham',
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
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
                        child: SvgPicture.asset(
                            'assets/image/svg/notification.svg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            buildSerchFiled(),
            const SizedBox(
              height: 24,
            ),
            _buildMenuList(),
            const SizedBox(
              height: 24,
            ),
            _buildMenuList2(),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Top Item',
                      style: TextStyle(
                          fontFamily: 'PlayfairRegular',
                          fontWeight: FontWeight.w700,
                          fontSize: 24),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    GridView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: serchGrid.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 2 / 2.5,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (BuildContext context, int index) =>
                          GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push<void>(MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const ItemDetail(),
                          ));
                        },
                        child: Stack(
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19),
                                color: const Color(0xff091020),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          serchGrid[index]['name'].toString(),
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                                serchGrid[index]['price']
                                                    .toString(),
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15)),
                                            SvgPicture.asset(
                                              'assets/image/svg/bottom/cart.svg',
                                              height: 15,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Container(
                                height: 66,
                                width: 110,
                                child: Image.asset(
                                  serchGrid[index]['image'].toString(),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuList() {
    return Column(
      children: <Widget>[
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
                              Color(0xfff5f5f5),
                              Color(0xfff5f5f5),
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
    );
  }

  Widget _buildMenuList2() {
    return Column(
      children: <Widget>[
        Container(
          height: 43,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: searchList.length,
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                width: 100,
                padding: const EdgeInsets.symmetric(horizontal: 9),
                decoration: const BoxDecoration(
                  color: Color(0xfff5f5f5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(9),
                  ),
                ),
                child: Center(
                  child: Text(
                    searchList[index]['name'].toString(),
                    style: const TextStyle(
                        color: Color(0xff302F3C),
                        fontFamily: 'GothamMedium',
                        fontWeight: FontWeight.w700,
                        fontSize: 13.5),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
