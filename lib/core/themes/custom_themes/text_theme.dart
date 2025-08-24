import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class TextThemeManager {
  TextThemeManager._();

  static const String _fontFamily = 'ClashGrotesk';

  static TextStyle _getTextStyle(
    double fontSize,
    Color color, {
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: fontSize.sp,
      color: color,
      fontWeight: fontWeight,
    );
  }

  // -- Customized Light Text Theme
  // to use it "Theme.of(context).textTheme.bodyMedium"
  static TextTheme get lightTextTheme {
    return TextTheme(
      // === FONT SIZE 26 ===
      headlineLarge: _getTextStyle(
        26.0,
        ColorsManager.white,
        // fontWeight: FontWeight.w600
      ), // white,
      headlineMedium: _getTextStyle(26.0, ColorsManager.main), // Main Color
      headlineSmall: _getTextStyle(26.0, ColorsManager.black), // Black
      // === FONT SIZE 20 ===
      titleLarge: _getTextStyle(
        20.0,
        ColorsManager.white,
        fontWeight: FontWeight.bold,
      ), // white,
      // titleMedium: _getTextStyle(20.0, ColorsManager.main), // Main Color
      titleSmall: _getTextStyle(20.0, ColorsManager.black), // black
      // === FONT SIZE 16 ===
      bodyLarge: _getTextStyle(
        16.0,
        ColorsManager.white,
      ), // white, Medium Weight
      bodyMedium: _getTextStyle(16.0, ColorsManager.main), // Main Color
      bodySmall: _getTextStyle(16.0, ColorsManager.black), // black
      // === FONT SIZE 14 ===
      labelLarge: _getTextStyle(14.0, ColorsManager.white), // white, Bold
      labelMedium: _getTextStyle(14.0, ColorsManager.black), // black
      labelSmall: _getTextStyle(14.0, ColorsManager.main), // Main Color
      // === FONT SIZE 12 ===
      displayLarge: _getTextStyle(12.0, ColorsManager.white), // white
      displayMedium: _getTextStyle(12.0, ColorsManager.black), // black
      displaySmall: _getTextStyle(12.0, ColorsManager.main), // Main Color
    );
  }
}
