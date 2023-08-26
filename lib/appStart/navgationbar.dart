import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_twod_myanmar/screen/3Dresult.dart';
import 'package:flutter_twod_myanmar/screen/gift.dart';
import 'package:flutter_twod_myanmar/screen/giftNo.dart';
import 'package:flutter_twod_myanmar/screen/home.dart';
import 'package:flutter_twod_myanmar/screen/2Dresult.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../utils/constants.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  // bool login = Global.isLogIn;
  // final NaviController naviController = Get.put(NaviController());
  int _selectedIndex = 0;
  final List<Widget> screen = [
    HomePage(),
    GiftNumberScreen(),
    TwoDResultScreen(),
    ThreeDResultScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screen.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        // color: Colors.black,
        //padding: EdgeInsets.symmetric(vertical: 10),
        child: GNav(
            gap: 8,
            padding: EdgeInsets.all(20),
            backgroundColor: Colors.grey.shade200,
            color: Colors.white,
            activeColor: CustomColor.blue,
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            // tabBackgroundColor: Colors.grey.shade700,
            tabs: [
              GButton(
                icon: Icons.home,
                iconSize: 30,
                iconColor: CustomColor.black,
              ),
              GButton(
                icon: Icons.wallet_giftcard,
                iconSize: 30,
                iconColor: CustomColor.black,
              ),
              GButton(
                icon: Icons.calendar_today,
                iconSize: 30,
                iconColor: CustomColor.black,
              ),
              GButton(
                icon: Icons.threed_rotation,
                iconSize: 30,
                iconColor: CustomColor.black,
              )
            ]),
      ),
    );
  }
}
