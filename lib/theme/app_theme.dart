import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.amber;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(color: primary, elevation: 10),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary
    ), 
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.primary,
            shape: const StadiumBorder(),
            elevation: 0
          ),
    )
  );

}