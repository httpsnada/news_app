import 'package:flutter/material.dart';

import 'design.dart';

class AppTheme {
  static var lightTheme = ThemeData(
    colorScheme: ColorScheme.light(primary: AppColors.dark),
    scaffoldBackgroundColor: AppColors.light,
    brightness: Brightness.light,

    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: AppColors.dark,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.dark,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.text,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.light,
        foregroundColor: AppColors.dark,
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        textStyle: TextStyle(
          color: AppColors.dark,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),

    appBarTheme: AppBarTheme(
      elevation: 3,
      backgroundColor: AppColors.light,
      surfaceTintColor: Colors.transparent,
      foregroundColor: AppColors.dark,
      titleTextStyle: TextStyle(
        color: AppColors.dark,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      centerTitle: true,
    ),
  );

  static var darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(primary: AppColors.light),
    scaffoldBackgroundColor: AppColors.dark,
    brightness: Brightness.dark,

    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: AppColors.light,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.light,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.text,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.dark,
        foregroundColor: AppColors.light,
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        textStyle: TextStyle(
          color: AppColors.light,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),

    appBarTheme: AppBarTheme(
      elevation: 3,
      backgroundColor: AppColors.dark,
      surfaceTintColor: Colors.transparent,
      foregroundColor: AppColors.light,
      titleTextStyle: TextStyle(
        color: AppColors.light,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      centerTitle: true,
    ),
  );
}
