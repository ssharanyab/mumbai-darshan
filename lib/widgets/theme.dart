import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static Color _iconColor = Colors.black;
  static const Color _lightPrimaryColor = Color(0xffC98686);
  static const Color _lightSecondaryColor = Color(0xffFFDEBF);

  static final ThemeData lightTheme = ThemeData(
      colorScheme: const ColorScheme.light(
        primary: _lightPrimaryColor,
        secondary: _lightSecondaryColor,
      ),
      iconTheme: IconThemeData(
        color: _iconColor,
      ),
      textTheme: _lightTextTheme,
      dividerTheme: const DividerThemeData(color: Colors.black12));

  static const TextTheme _lightTextTheme = TextTheme(
    headline1: _lightScreenHeading1TextStyle,
  );

  static const TextStyle _lightScreenHeading1TextStyle = TextStyle(
    fontSize: 26.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Roboto",
  );
}
