import 'dart:ui';
import 'package:flutter/material.dart';

import 'auth/signin/ui/singin_screen.dart';
import 'auth/signup/ui/signup_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 0;
  late TabController _tabController;

  final List<Tab> myTabs = <Tab>[
    const Tab(
      child: Text(
        'Create Account',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    const Tab(
      child: Text(
        'Login',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBB034),
      body: Stack(
        children: <Widget>[
          _buildHeaderImage(context),
        ],
      ),
      bottomSheet: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24), topRight: Radius.circular(24)),
              color: Colors.white),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xffD2D4D8),
                        borderRadius: BorderRadius.circular(20)),
                    height: 7,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  controller: _tabController,
                  tabs: myTabs,
                  unselectedLabelColor: const Color(0xff89909E),
                  labelColor: const Color(0xffFBB034),
                  indicatorColor: const Color(0xffFFDD00),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child:
                      TabBarView(controller: _tabController, children: <Widget>[
                    SignUpScreen(),
                    const LoginScreen(),
                  ]),
                ),
              ],
            ),
          )),
    );
  }

  Widget _buildHeaderImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: <Color>[
          Color(0xffFFDD00),
          Color(0xffFBB034),
        ]),
      ),
      child: Image.asset(
        'assets/image/png/login.png',
      ),
    );
  }
}
