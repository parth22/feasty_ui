  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget buildSerchFiled() {
    return TextField(
      decoration: InputDecoration(
          suffixIcon: Container(
            padding: const EdgeInsets.all(20),
            child: Image.asset(
              'assets/image/png/more.png',
            ),
          ),
          filled: true,
          enabled: false,
          fillColor: const Color(0xffF5f5f5),
          hintText: 'Search your food',
          prefixIcon: Container(
            padding: const EdgeInsets.all(20),
            child: SvgPicture.asset(
              'assets/image/svg/serach.svg',
            ),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(19))),
    );
  }
