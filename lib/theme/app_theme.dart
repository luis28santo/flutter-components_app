import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: AppTheme.primaryColor,
    appBarTheme: const AppBarTheme(color: AppTheme.primaryColor, elevation: 0),
    iconTheme: const IconThemeData(color: AppTheme.primaryColor),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: AppTheme.primaryColor,
      appBarTheme:
          const AppBarTheme(color: AppTheme.primaryColor, elevation: 0),
      iconTheme: const IconThemeData(color: AppTheme.primaryColor),
      scaffoldBackgroundColor: Colors.black);
}
