import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Widget progrssBar({required double percent}) {
  return LinearPercentIndicator(
    alignment: MainAxisAlignment.center,
    width: 140,
    lineHeight: 5,
    percent: percent,
    backgroundColor: const Color(0xffDDDDDD),
    linearGradient: const LinearGradient(
      colors: <Color>[
        Color(0xffFFDD00),
        Color(0xffFBB034),
      ],
    ),
  );
}
