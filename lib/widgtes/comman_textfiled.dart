import 'package:feasty/const/color.dart';
import 'package:flutter/material.dart';

Widget commanTextfiled({String? hintText}) {
  return TextField(
    decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colours.textfiledHintColor,
          fontFamily: 'Gotham',
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
  );
}

Widget textfiledHederText({String? text}) {
  return Text(
    text!,
    style: const TextStyle(
      fontFamily: 'Gotham',
      color: Colours.textfiledHeaderColor,
      fontWeight: FontWeight.w700,
    ),
  );
}
