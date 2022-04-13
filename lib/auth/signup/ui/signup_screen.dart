import 'dart:ui';
import 'package:feasty/const/color.dart';
import 'package:feasty/widgtes/button.dart';
import 'package:feasty/widgtes/comman_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          textfiledHederText(text: 'Full Name'),
          const SizedBox(
            height: 10,
          ),
          commanTextfiled(
            hintText: 'Enter Name',
          ),
          const SizedBox(
            height: 20,
          ),
          textfiledHederText(text: 'Email Address'),
          const SizedBox(
            height: 10,
          ),
          commanTextfiled(
            hintText: 'Johndoe234@gmail.com',
          ),
          const SizedBox(
            height: 20,
          ),
          textfiledHederText(text: 'Password'),
          const SizedBox(
            height: 10,
          ),
          commanTextfiled(
            hintText: 'Enter Password',
          ),
          const SizedBox(
            height: 30,
          ),
          loginButton(context),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: MaterialButton(
              elevation: 0,
              padding: const EdgeInsets.symmetric(vertical: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19)),
              onPressed: () {},
              color: const Color(0xffFAFAFA),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width / 1.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SvgPicture.asset('assets/image/svg/google.svg'),
                    const Text(
                      'SignUp with Google',
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        color: Colours.backColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/image/svg/google.svg',
                      color: Colors.white.withOpacity(0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
