import 'package:flutter/material.dart';

class AppTheme {
  static Color primaryColor = const Color(0xff67C4A7);
  static Color secondaryColor = const Color(0xffffffff);
  static Color selectedBottomNavBar = const Color(0xff67C4A7);
  static Color unselectedBottomNavBar = const Color(0xff939393);
  ThemeData appTheme = ThemeData(
      textTheme: const TextTheme(
    titleLarge: TextStyle(
        fontSize: 14, color: Color(0xff393F42), fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(
      fontSize: 14,
      color: Color(0xff393F42),
    ),
    bodyMedium: TextStyle(
      fontSize: 12,
      color: Color(0xff393F42),
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: Color(0xff939393),
    ),
  ));
}
