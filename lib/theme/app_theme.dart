import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: AppTheme.primaryColor,
    appBarTheme: const AppBarTheme(color: AppTheme.primaryColor, elevation: 0),
    iconTheme: const IconThemeData(color: AppTheme.primaryColor),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppTheme.primaryColor),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      elevation: 5,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.primaryColor,
          shape: const StadiumBorder(),
          elevation: 0),
    ),
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primaryColor),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        )),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: AppTheme.primaryColor,
      appBarTheme:
          const AppBarTheme(color: AppTheme.primaryColor, elevation: 0),
      iconTheme: const IconThemeData(color: AppTheme.primaryColor),
      scaffoldBackgroundColor: Colors.black);
}
