import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = Colors.blue;
  static Color secondaryColor = Colors.red;
  static Color accentColor = Colors.green;
  static Color textColor = Colors.black;
  static Color backgroundColor = const Color(0x00091026);

  static void setColors(
    Color primaryColor,
    Color secondaryColor,
    Color accentColor,
    Color textColor,
    Color backgroundColor,
  ) {
    AppColors.primaryColor = primaryColor;
    AppColors.secondaryColor = secondaryColor;
    AppColors.accentColor = accentColor;
    AppColors.textColor = textColor;
    AppColors.backgroundColor = backgroundColor;
  }
}
