import 'package:flutter/material.dart';
import 'package:flutter_twod_myanmar/model/giftNumber.dart';

import '../model/user.dart';

class CustomColor {
  static const Color yellow = Color(0xFFffcc00);
  static const Color yellow1 = Color(0xFFffcc66);

  static const Color white = Color(0xFFffffff);
  static const Color red = Color(0xFFcc66666);
  static const Color black = Color(0xFF000000);
  static const Color darkGreen = Color(0xFF023631);
  static const Color greenblue = Color(0xFF006666);
  static const Color pink1 = Color(0xFFcc6699);
  static const Color pink2 = Color(0xFF993366);
  static const Color blue = Color(0xFF0f3d71);
  static const Color purple = Color(0xFF4c65e8);

  static Map<String, String> header = {"Content-Type": "application/json"};

  static User? user;

  static Map<String, String> tokenHeader = {
    "Content-Type": "application/json",
    "authorization ": "Bearer ${user?.token} "
  };
}
