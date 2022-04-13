import 'package:feasty/const/color.dart';
import 'package:feasty/widgtes/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const TopBar(
              topBarHeader: 'Profile',
              leftImage: 'assets/image/svg/line.svg',
              rightImage: 'assets/image/svg/setting.svg'),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _buildCard(context),
                  const SizedBox(
                    height: 30,
                  ),
                  _buildListTile(
                      leadingImage: 'assets/image/svg/profile_info.svg',
                      titleText: 'Profile Information'),
                  _buildListTile(
                      leadingImage: 'assets/image/svg/document.svg',
                      titleText: 'Address'),
                  _buildListTile(
                      leadingImage: 'assets/image/svg/dollar.svg',
                      titleText: 'Payment Method'),
                  _buildListTile(
                      leadingImage: 'assets/image/svg/User-plus.svg',
                      titleText: 'Refer to friends'),
                  _buildListTile(
                      leadingImage: 'assets/image/svg/notification.svg',
                      titleText: 'Notification'),
                  _buildListTile(
                    leadingImage: 'assets/image/svg/Question.svg',
                    titleText: 'FAQ',
                  ),
                  _buildListTile(
                      leadingImage: 'assets/image/svg/Two-user.svg',
                      titleText: 'Logout'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 7,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Widget _buildListTile({
    required String leadingImage,
    required String titleText,
  }) {
    return ListTile(
      leading: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Colours.yellowColor,
              Colours.darkYellow,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: SvgPicture.asset(
            leadingImage,
          ),
        ),
      ),
      title: Text(
        titleText,
        style: const TextStyle(
          fontSize: 20,
          color: Colours.buttonTextColor,
          fontFamily: 'GothamBook',
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Image.asset('assets/image/png/arrow.png'),
    );
  }

  Widget _buildCard(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      elevation: 3,
      child: Container(
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Colours.whiteColor,
              borderRadius: BorderRadius.circular(35)),
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 7,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Colours.yellowColor,
                      Colours.darkYellow,
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(35),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      'John Doe',
                      style: TextStyle(
                          color: Colours.backColor,
                          fontSize: 24,
                          fontFamily: 'PlayfairRegular',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'California, U.S.A',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colours.whiteColor,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      cicularBar(
                        bottomText: 'Order',
                        center: '65%',
                        percent: 0.65,
                      ),
                      cicularBar(
                        bottomText: 'Tip',
                        center: '90%',
                        percent: 0.90,
                      ),
                      cicularBar(
                        bottomText: 'Behave',
                        center: '80%',
                        percent: 0.80,
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                  child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(maxWidth: 68, maxHeight: 65),
                      child: Image.asset('assets/image/png/profile.png')))
            ],
          ),
        ),
      ),
    );
  }

  Widget cicularBar({
    double? percent,
    String? center,
    String? bottomText,
  }) {
    return CircularPercentIndicator(
      radius: 40,
      percent: percent!,
      backgroundColor: Colours.whiteColor,
      progressColor: Colours.yellowColor,
      center: Text(
        center!,
        style: const TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
      ),
      footer: Text(
        bottomText!,
        style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
      ),
    );
  }
}
