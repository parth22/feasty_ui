import 'package:feasty/const/color.dart';
import 'package:flutter/material.dart';

import 'bottom_nevigation.dart';

Widget buildButton(
    {required BuildContext context,
    Function()? onPressed,
    required String buttonText}) {
  return MaterialButton(
    onPressed: onPressed,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
    child: Ink(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: <Color>[
          Color(0xffFFDD00),
          Color(0xffFBB034),
        ]),
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      child: Text(
        buttonText,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colours.buttonTextColor,
          fontSize: 14,
          fontFamily: 'GothamBold',
        ),
      ),
    ),
  );
}

Widget loginButton(BuildContext context) {
  return Center(
    child: Container(
      width: MediaQuery.of(context).size.width / 1.6,
      child: MaterialButton(
        elevation: 0,
        padding: const EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
        onPressed: () {
          Navigator.of(context).push<void>(MaterialPageRoute<void>(
            builder: (BuildContext context) => const BottomNavBar(),
          ));
        },
        color: const Color(0xffFAFAFA),
        child: const Text(
          'LogIn',
          style: TextStyle(
            fontFamily: 'Gotham',
            color: Colours.textfiledHintColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ),
  );
}
