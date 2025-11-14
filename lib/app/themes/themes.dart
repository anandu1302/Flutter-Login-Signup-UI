import 'package:flutter/material.dart';
import 'package:flutter_login_ui/app/constants/colors.dart';

class ATheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AColors.bgColor,
    appBarTheme: AppBarTheme(color: AColors.bgColor),
  );

  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark);
}
