import 'package:flutter/material.dart';

Widget backbutton(BuildContext context) {
  return Row(
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
        ),
      ]);
}
