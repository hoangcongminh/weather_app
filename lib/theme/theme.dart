import 'package:flutter/material.dart';

class ApplicationTheme {
  static get lightTheme => _themeData(Brightness.light);
  static get darkTheme => _themeData(Brightness.dark);

  static ThemeData _themeData(Brightness brightness) {
    return ThemeData(
      brightness: brightness,
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: brightness == Brightness.light ? Colors.black : Colors.white,
        ),
      ),
      colorSchemeSeed: Colors.cyanAccent,
      useMaterial3: true,
    );
  }
}
