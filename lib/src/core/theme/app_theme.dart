import 'package:flutter/material.dart';
import 'package:minepet/src/core/theme/app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.pastelPink,
      primary: AppColors.darkMauve,
      secondary: AppColors.softRed,
      background: AppColors.pastelWhite,
      surface: AppColors.pastelPeach,
    ),

    scaffoldBackgroundColor: AppColors.pastelWhite,

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkMauve,
      foregroundColor: Colors.white,
      elevation: 0,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.pastelPink,
        foregroundColor: AppColors.darkMauve,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),

    textTheme: const TextTheme(

      displayLarge: TextStyle(color: AppColors.darkMauve , fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(color: AppColors.darkMauve)

    ),
  );
}
