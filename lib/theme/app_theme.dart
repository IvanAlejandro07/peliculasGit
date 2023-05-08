import 'package:flutter/material.dart';

class AppTheme {
  static Color colorPrimario = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
          backgroundColor: colorPrimario, 
        )
    );
}
