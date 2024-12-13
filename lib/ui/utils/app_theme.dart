import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.transparent,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: AppColors.transparent,
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.white,
      secondary: AppColors.accent,
      onSecondary: AppColors.white,
      background: AppColors.white,
      onBackground: AppColors.black,
      surface: AppColors.white,
      onSurface: AppColors.black,
      error: Colors.red,
      onError: Colors.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.lightBlack,
      selectedIconTheme: IconThemeData(size: 36),
      unselectedIconTheme: IconThemeData(size: 34),
      unselectedItemColor: AppColors.white,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.darkBlue,
    scaffoldBackgroundColor: AppColors.transparent,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: AppColors.transparent,
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.darkBlue,
      onPrimary: AppColors.white,
      secondary: AppColors.yellow,
      onSecondary: AppColors.black,
      background: AppColors.black,
      onBackground: AppColors.white,
      surface: AppColors.darkBlue,
      onSurface: AppColors.white,
      error: Colors.red,
      onError: Colors.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.yellow,
      selectedIconTheme: IconThemeData(size: 36),
      unselectedIconTheme: IconThemeData(size: 34),
      unselectedItemColor: AppColors.white,
    ),
  );

  static String get mainBackground {
    return 'assets/images/main_background.png'; // Adjust the file path if necessary
  }
}
