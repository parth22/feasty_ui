import 'package:feasty/const/color.dart';
import 'package:feasty/const/global_list.dart';
import 'package:feasty/widgtes/search_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  Container(
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/image/png/Location.png'),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          'Surat,Gj',
                          style: TextStyle(
                              fontFamily: 'Gotham',
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Image.asset('assets/image/png/down_arrow.png'),
                      ],
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
                        child: SvgPicture.asset(
                            'assets/image/svg/notification.svg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Text(
                'Find your favorite food',
                style: TextStyle(
                    color: Colours.backColor,
                    fontSize: 23,
                    fontFamily: 'PlayfairRegular',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'for',
                  style: TextStyle(
                      color: Colours.backColor,
                      fontSize: 23,
                      fontFamily: 'PlayfairRegular',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Dinner',
                  style: TextStyle(
                      color: Color(0xffFBB034),
                      fontSize: 23,
                      fontFamily: 'PlayfairRegular',
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            buildSerchFiled(),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: const <Widget>[
                Text(
                  'Categories',
                  style: TextStyle(
                      color: Colours.backColor,
                      fontSize: 18,
                      fontFamily: 'PlayfairRegular',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            _buildItemList(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Popular',
              style: TextStyle(
                  color: Colours.backColor,
                  fontSize: 18,
                  fontFamily: 'PlayfairRegular',
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            _buildPopularList()
          ],
        ),
      ),
    );
  }

  Widget _buildPopularList() {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: popularList.length,
        itemBuilder: (BuildContext context, int index) => Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.asset(
                    popularList[index]['itemImage'].toString(),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                padding: const EdgeInsets.only(
                    top: 13, right: 20, left: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          popularList[index]['name'].toString(),
                          style: const TextStyle(
                              color: Colours.backColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w900),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              popularList[index]['type'].toString(),
                              style: const TextStyle(
                                  color: Color.fromRGBO(48, 47, 60, 0.4),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w900),
                            ),
                            const Text(' . '),
                            Text(
                              popularList[index]['type_fast'].toString(),
                              style: const TextStyle(
                                  color: Color.fromRGBO(48, 47, 60, 0.4),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset('assets/image/png/star.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              popularList[index]['rate'].toString(),
                              style: const TextStyle(
                                  color: Color.fromRGBO(48, 47, 60, 0.4),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          popularList[index]['time'].toString(),
                          style: const TextStyle(
                              color: Color.fromRGBO(48, 47, 60, 0.4),
                              fontSize: 15,
                              fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItemList() {
    return Container(
      height: 57,
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
                        colors: <Color>[Color(0xffFAFAFA), Color(0xffFAFAFA)],
                      ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(19),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 27,
                    width: 27,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(9),
                        ),
                        color: Colors.white),
                    child: Container(
                      height: 18,
                      width: 18,
                      child: Image.asset(
                        itemList[index]['itemImage'].toString(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    itemList[index]['name'].toString(),
                    style: const TextStyle(
                        color: Color(0xff302F3C),
                        fontWeight: FontWeight.w700,
                        fontSize: 13.5),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
