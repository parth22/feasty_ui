import 'package:feasty/const/color.dart';
import 'package:flutter/material.dart';

Widget haderText(
    {required String titleHeader, required String subTitleHeader}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          titleHeader,
          style: const TextStyle(
              color: Colours.backColor,
              fontSize: 32,
              fontFamily: 'PlayfairRegular',
              fontWeight: FontWeight.w900),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          subTitleHeader,
          style: const TextStyle(
              color: Color.fromRGBO(9, 16, 32, 0.6),
              fontSize: 18,
              fontFamily: 'Gotham',
              fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}
