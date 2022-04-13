import 'package:feasty/ui/cart/ui/cart.dart';
import 'package:feasty/ui/home.dart';
import 'package:feasty/ui/profile/ui/profile.dart';
import 'package:feasty/ui/search/serach_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: _selectedItem == 0
                  ? const Home()
                  : _selectedItem == 1
                      ? const SearchHomeScreen()
                      : _selectedItem == 2
                          ? const CartScreen()
                          : const Profile()),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNavigationBar(
                iconList: const <String>[
                  'assets/image/svg/bottom/home.svg',
                  'assets/image/svg/bottom/search.svg',
                  'assets/image/svg/bottom/cart.svg',
                  'assets/image/svg/bottom/profile.svg',
                ],
                activeIconList: const <String>[
                  'assets/image/svg/bottom/home_select.svg',
                  'assets/image/svg/bottom/serach_select.svg',
                  'assets/image/svg/bottom/cart_select.svg',
                  'assets/image/svg/bottom/profile_select.svg',
                ],
                onChange: (int val) {
                  setState(() {
                    _selectedItem = val;
                  });
                },
                defaultSelectedIndex: 0,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar(
      {this.defaultSelectedIndex = 0,
      @required this.iconList,
      @required this.activeIconList,
      @required this.onChange});

  final int defaultSelectedIndex;
  final Function(int)? onChange;
  final List<String>? iconList;
  final List<String>? activeIconList;

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<String>? _iconList = <String>[];
  List<String>? _activeIconList = <String>[];

  @override
  void initState() {
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList!;
    _activeIconList = widget.activeIconList!;
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _navBarItemList = <Widget>[];

    for (int i = 0; i < _iconList!.length; i++) {
      _navBarItemList.add(buildNavBarItem(SvgPicture.asset(_iconList![i]),
          SvgPicture.asset(_activeIconList![i]), i));
    }

    return Container(
      height: 68,
      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
          topRight: Radius.circular(10),
        ),
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xffFFDD00),
            Color(0xffFBB034),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _navBarItemList,
        ),
      ),
    );
  }

  Widget buildNavBarItem(Widget icon, Widget activeIcon, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange!(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: index == _selectedIndex ? activeIcon : icon,
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path = Path()
      ..moveTo(size.width * 0.5000000, 0)
      ..cubicTo(size.width * 0.2942378, 0, size.width * 0.1120146,
          size.height * 0.3941789, 0, size.height)
      ..lineTo(size.width, size.height)
      ..cubicTo(size.width * 0.8879865, size.height * 0.3941789,
          size.width * 0.7057622, 0, size.width * 0.5000000, 0)
      ..close();
    final Paint paint0Fill = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xff363062).withOpacity(1);
    canvas.drawPath(path, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
