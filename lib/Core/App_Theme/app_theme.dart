import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static Color primaryColor = const Color(0xff67C4A7);
  static Color secondaryColor = const Color(0xffffffff);
  static Color selectedBottomNavBar = const Color(0xff67C4A7);
  static Color unselectedBottomNavBar = const Color(0xff939393);
  static final ThemeData appTheme = ThemeData(
      textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 26,
              color:  Color(0xff878787),
              fontWeight: FontWeight.w700),
          bodyLarge: TextStyle(
            fontSize: 14,
            color:  Color(0xff393F42),
          ),
          bodyMedium: TextStyle(
            fontSize: 12,
            color:  Color(0xff393F42),
          ),
          bodySmall: TextStyle(
            fontSize: 12,
            color:  Color(0xff939393),
          ),
          titleMedium: TextStyle(
              fontSize: 14,
              color:Color(0xff393F42),
              fontWeight: FontWeight.bold)));
}
