import 'package:feasty/const/color.dart';
import 'package:feasty/ui/cart/ui/location.dart';
import 'package:feasty/widgtes/top_bar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const TopBar(
                topBarHeader: 'Cart',
                leftImage: 'assets/image/svg/line.svg',
                rightImage: 'assets/image/svg/notification.svg'),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _locationFiled(context),
                  const SizedBox(
                    height: 40,
                  ),
                  _buildCartList(
                      image: 'assets/image/png/demo4.png',
                      name: 'Veg. Pizza',
                      price: '\$7.20'),
                  const SizedBox(
                    height: 30,
                  ),
                  _buildCartList(
                      image: 'assets/image/png/cart_burger.png',
                      name: 'Chicken Burger',
                      price: '\$14.50'),
                  const SizedBox(
                    height: 30,
                  ),
                  _buildCartList(
                      image: 'assets/image/png/demo3.png',
                      name: 'Hotdog',
                      price: '\$9.50'),
                  const SizedBox(
                    height: 30,
                  ),
                  _buildCartList(
                      image: 'assets/image/png/cart_taco.png',
                      name: 'Taco',
                      price: '\$7.5'),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          const Text(
                            'Payment method',
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Image.asset(
                                  'assets/image/png/mastercard-logo.png'),
                              const Text('\**** **** **** 3095'),
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                            side: const BorderSide(color: Color(0xffFBB034))),
                        child: const Text(
                          'Change',
                          style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Text('Total : ',
                                  style: TextStyle(
                                      fontFamily: 'GothamMedium',
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)),
                              Text('\$37.50',
                                  style: TextStyle(
                                      fontFamily: 'GothamMedium',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          const Text(
                            '4 items',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: <Color>[
                              Colours.yellowColor,
                              Colours.darkYellow,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: const Text(
                            'Pay',
                            style: TextStyle(
                                fontFamily: 'GothamMedium',
                                color: Colours.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget _buildCartList(
      {final String? image, final String? name, final String? price}) {
    return Row(
      children: <Widget>[
        Container(
          height: 77,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              color: const Color(0xff091020),
              image: DecorationImage(
                  image: AssetImage(
                    image!,
                  ),
                  fit: BoxFit.contain)),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name!,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'GothamBook'),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              price!,
              style: const TextStyle(
                color: Color.fromRGBO(48, 47, 60, 0.6),
                fontSize: 13,
              ),
            ),
          ],
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: <Color>[
                  Colours.yellowColor,
                  Colours.darkYellow,
                ],
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: const <Widget>[
                Text(
                  '-',
                  style: TextStyle(
                      color: Colours.whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  backgroundColor: Colours.whiteColor,
                  maxRadius: 15,
                  child: Text('1',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'GothamBold',
                          color: Colours.backColor,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '+',
                  style: TextStyle(
                      color: Colours.whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _locationFiled(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Image.asset('assets/image/png/Location.png'),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                '64, Molatvad Katargam',
                style: TextStyle(
                    fontFamily: 'GothamMedium',
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
              Text('Mr. Smith +91 9867 4321',
                  style: TextStyle(
                      fontFamily: 'Gotham',
                      fontWeight: FontWeight.w500,
                      fontSize: 13)),
              Text('Today 11:00 AM',
                  style: TextStyle(
                      fontFamily: 'Gotham',
                      color: Color.fromRGBO(48, 47, 60, 0.4),
                      fontWeight: FontWeight.w400,
                      fontSize: 13))
            ],
          ),
          const Spacer(),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute<void>(
                  builder: (BuildContext context) => const LocationScreen(),
                ));
              },
              child: Image.asset('assets/image/png/arrow.png')),
        ],
      ),
    );
  }
}
