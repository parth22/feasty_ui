import 'package:feasty/bottom_bar.dart';
import 'package:feasty/widgtes/button.dart';
import 'package:feasty/const/color.dart';
import 'package:feasty/widgtes/hader_text.dart';
import 'package:feasty/widgtes/liner_progress.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context, int indexOfBuilder) => PageView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  index == 0
                      ? const Text(
                          'Welcome',
                          style: TextStyle(
                              color: Colours.backColor,
                              fontSize: 32,
                              fontFamily: 'PlayfairRegular',
                              fontWeight: FontWeight.w900),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xffFFDD00),
                                        Color(0xffFBB034),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                  child: Container(
                                    height: 1,
                                    width: 1,
                                    child: Image.asset(
                                      'assets/image/png/back_arrow.png',
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                  const SizedBox(
                    height: 20,
                  ),
                  index == 0
                      ? haderText(
                          subTitleHeader:
                              'Enjoy our Choose My Meal service to explore your'
                              'inflight menu options and reserve your favourite'
                              'meal long before'
                              'you step onboard & enjoy your food.',
                          titleHeader: 'Choose your food',
                        )
                      : index == 1
                          ? haderText(
                              subTitleHeader:
                                  'After choose your order then you can order'
                                  'your favourite meal menu options and'
                                  'reserve your favourite meal long before'
                                  'you step onboard.',
                              titleHeader: 'Give your order',
                            )
                          : haderText(
                              subTitleHeader:
                                  'We make food odering fast no matter if your'
                                  'order online or cash, then you can pick'
                                  'your order at your'
                                  'doorstep.',
                              titleHeader: 'Pick your order',
                            ),
                  Expanded(
                    child: Image.asset(
                      index == 0
                          ? 'assets/image/png/welcome.png'
                          : index == 1
                              ? 'assets/image/png/give_order.png'
                              : 'assets/image/png/pickup_order.png',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                  index == 0
                      ? progrssBar(
                          percent: 0.33,
                        )
                      : index == 1
                          ? progrssBar(
                              percent: 0.66,
                            )
                          : progrssBar(
                              percent: 1,
                            ),
                  const SizedBox(
                    height: 30,
                  ),
                  buildButton(
                      buttonText: 'Next',
                      context: context,
                      onPressed: () {
                        if (index == 0) {
                          index = 1;
                        } else if (index == 1) {
                          index = 2;
                        } else {
                          index = 0;
                          Navigator.of(context)
                              .push<void>(MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const BottomBarScreen(),
                          ));
                        }
                        setState(() {});
                      }),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
