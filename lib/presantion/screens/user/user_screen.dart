import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/presantion/screens/conttact_us/conttact__us.dart';
import 'package:graduationproject/presantion/screens/home_screen/home_screen.dart';
import 'package:graduationproject/presantion/screens/info_screen/info_complete.dart';
import 'package:graduationproject/presantion/screens/info_screen/info_body.dart';
import 'package:graduationproject/presantion/screens/info_screen/info_screen.dart';
import 'package:graduationproject/presantion/screens/profile/profile_screen.dart';

void main() => runApp(MaterialApp(home: BottomNavBarscreen()));

class BottomNavBarscreen extends StatefulWidget {
  @override
  _BottomNavBarscreenState createState() => _BottomNavBarscreenState();
}

class _BottomNavBarscreenState extends State<BottomNavBarscreen> {
  int page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  List<Widget> _buildScreens = [
    HomeScreen(),
    ConttactUs(),
    ProfileScreen(),
    InfoScreen(),
    InfoBody(),
    Infocomplete(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: page,
        height: MediaQuery.of(context).size.height / 16,
        items: [
          CurvedNavigationBarItem(
            child: Icon(
              Icons.home_outlined,
              size: 25,
            ),
          ),
          CurvedNavigationBarItem(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(12),
                  child: Icon(
                    Icons.phone_callback_rounded,
                    color: Colors.blueAccent,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.person,
              size: 25,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.info_outline,
              size: 25,
            ),
          ),
        ],
        color: Colors.white,
        backgroundColor: Color(0XFFC8C5CE),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: _buildScreens[page],
    );
  }
}
