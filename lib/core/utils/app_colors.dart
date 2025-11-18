import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color deepPurple = Color(0xFF81017F);
  static const Color mediumPurple = Color(0xFFA83F98);
  static const Color lightPink = Color(0xFFF5B7CA);

  // Background colors
  static const Color lightPinkBackground = Color(0xFFFFF3F7);
  static const Color creamBackground = Color(0xFFFDF1D6);

  // Text colors
  static const Color darkGray = Color(0xFF3C3939);
  static const Color mediumGray = Color(0xFF7A7E80);

  // Shadow colors
  static const Color shadowBlack15 = Color(0x26000000);

  static const List<Color> linearGradientIcon = [
    deepPurple,
    mediumPurple,
    lightPink,
  ];
}
