import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:up_todo/core/utils/app_colors.dart';

ThemeData getAppThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.lato(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
      ),
      displayMedium: GoogleFonts.lato(fontSize: 16, color: AppColors.textColor),
      displaySmall: GoogleFonts.lato(fontSize: 16, color: AppColors.textColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
    ),
  );
}

ThemeData getAppDarkThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.c1,

    textTheme: TextTheme(
      displayLarge: GoogleFonts.lato(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
      ),
      displayMedium: GoogleFonts.lato(fontSize: 16, color: AppColors.textColor),
      displaySmall: GoogleFonts.lato(fontSize: 16, color: AppColors.textColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    ),

  );
}
