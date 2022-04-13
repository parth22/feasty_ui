import 'package:feasty/const/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 1.4,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/image/png/location_path.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            maxRadius: 46,
                            backgroundColor: Colours.yellowColor,
                            child: Container(
                                decoration: const BoxDecoration(
                                    color: Colours.whiteColor,
                                    shape: BoxShape.circle),
                                child: Image.asset(
                                    'assets/image/png/profile.png')),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text('Mark hood',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  )),
                              Text('8 based on 100 ratings',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colours.backColor)),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Image.asset('assets/image/png/clock_color.png'),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                    Text('Your delivery time'),
                                    Text('15 minutes',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'GothamMedium',
                                          fontSize: 16,
                                        )),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 70,
                                width: 1,
                                color: Colours.backColor,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                SvgPicture.asset(
                                  'assets/image/svg/location.svg',
                                  color: Colours.darkYellow,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                    Text('Your address'),
                                    Text('64, Molatvad katargam',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'GothamMedium',
                                          fontSize: 16,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 60, left: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Colours.yellowColor,
                        Colours.darkYellow,
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/image/png/back_arrow.png',
                    ),
                  ),
                ),
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: <Color>[
                  Colours.yellowColor,
                  Colours.darkYellow,
                ],
              ),
              image: DecorationImage(
                  image: AssetImage('assets/image/png/call1.png'))),
        ),
      ),
    );
  }
}
