import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

ThemeData getAppThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: AppBarTheme(
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
  );
}

ThemeData getAppDarkThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.c1,
    appBarTheme: AppBarTheme(
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
  );
}
