import 'package:feasty/welcome/ui/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'GothamLight'),
      title: 'Flutter Demo',
      home: WelcomeScreen(),
    );
  }
}
