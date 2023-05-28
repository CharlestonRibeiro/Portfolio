
import 'package:flutter/material.dart';
import 'package:portfolio/src/core/colors/app_colors.dart';

ThemeData customThemeData() {
  return ThemeData(

        
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontFamily: 'PermanentMarker',
        fontSize: 36,
        fontWeight: FontWeight.w600,
        color: AppColors.yellow
      ),

      headlineSmall: TextStyle(
       fontFamily: 'Poppins',
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: AppColors.white
      ),
      // titleMedium: TextStyle(
      //  fontFamily: 'Montserrat',
      //   fontSize: 14,
      //   fontWeight: FontWeight.w500,
      //   color: CustomColors.description
      // ),
      // titleSmall: TextStyle(
      //  fontFamily: 'Montserrat',
      //   fontSize: 12,
      //   fontWeight: FontWeight.w500,
      //   color: CustomColors.lightCard
      // ),
    ),

  );
}