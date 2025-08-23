import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class TextThemeManager {
  TextThemeManager._();

  // =================================V2 June2025===========================================================================
  static const String _fontFamily = 'ClashGrotesk';

  static TextStyle _getTextStyle(double fontSize, Color color,
      {FontWeight fontWeight = FontWeight.normal}) {
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
      // === FONT SIZE 20 ===
      headlineLarge: _getTextStyle(
        20.0, ColorsManager.white,
        // fontWeight: FontWeight.w600
      ), // white,
      headlineMedium: _getTextStyle(20.0, ColorsManager.main), // Main Color
      headlineSmall: _getTextStyle(20.0, ColorsManager.grey), // Grey

      // === FONT SIZE 16 ===
      titleLarge: _getTextStyle(16.0, ColorsManager.white,
          fontWeight: FontWeight.bold), // white,
      // titleMedium: _getTextStyle(16.0, ColorsManager.main), // Main Color
      titleSmall: _getTextStyle(16.0, ColorsManager.grey), // Grey

      // === FONT SIZE 14 ===
      bodyLarge: _getTextStyle(
        14.0,
        ColorsManager.white,
      ), // white, Medium Weight
      bodyMedium: _getTextStyle(14.0, ColorsManager.main), // Main Color
      bodySmall: _getTextStyle(14.0, ColorsManager.grey), // Grey

      // === FONT SIZE 12 ===
      labelLarge: _getTextStyle(
        12.0,
        ColorsManager.white,
      ), // white, Bold
      labelMedium: _getTextStyle(12.0, ColorsManager.grey), // Grey
      labelSmall: _getTextStyle(12.0, ColorsManager.main), // Main Color

      // === FONT SIZE 10 ===
      displayLarge: _getTextStyle(10.0, ColorsManager.white), // white
      displayMedium: _getTextStyle(10.0, ColorsManager.grey), // Grey
      displaySmall: _getTextStyle(10.0, ColorsManager.main), // Main Color
    );
  }

  // -- Customized Dark Text Theme
  static TextTheme get darkTextTheme {
    return TextTheme(
      // === FONT SIZE 20 ===
      headlineLarge: _getTextStyle(
        20.0, ColorsManager.black,
        // fontWeight: FontWeight.w600
      ), // white,
      headlineMedium: _getTextStyle(20.0, ColorsManager.main), // Main Color
      headlineSmall: _getTextStyle(20.0, ColorsManager.grey),

      // === FONT SIZE 16 ===
      titleLarge: _getTextStyle(
        16.0,
        ColorsManager.black,
      ), // black, Bold
      // titleMedium: _getTextStyle(16.0, ColorsManager.main), // Main Color
      titleSmall: _getTextStyle(16.0, ColorsManager.grey), // Grey

      // === FONT SIZE 14 ===
      bodyLarge: _getTextStyle(
        14.0,
        ColorsManager.black,
      ), // black, Medium Weight
      bodyMedium: _getTextStyle(14.0, ColorsManager.main), // Main Color
      bodySmall: _getTextStyle(14.0, ColorsManager.grey), // Grey

      // === FONT SIZE 12 ===
      labelLarge: _getTextStyle(
        12.0,
        ColorsManager.black,
      ), // black, Bold
      labelMedium: _getTextStyle(12.0, ColorsManager.grey), // Grey
      labelSmall: _getTextStyle(12.0, ColorsManager.main), // Main Color

      // === FONT SIZE 10 ===
      displayLarge: _getTextStyle(10.0, ColorsManager.black), // black
      displayMedium: _getTextStyle(10.0, ColorsManager.grey), // Grey
      displaySmall: _getTextStyle(10.0, ColorsManager.main), // Main Color
    );
  }

// =================================V1===========================================================================

//   // -- Customized Light Text Theme
//   // to use it "Theme.of(context).textTheme.bodyMedium"
//   static TextTheme lightTextTheme = TextTheme(
// // =========== Head 20_white =======================================================
//     headlineLarge: const TextStyle().copyWith(
//         fontFamily: 'ClashGrotesk',
//         fontSize: 20.0,
//         // fontWeight: FontWeight.w600,
//         color: ColorsManager.white),

// // =========== Head 16_white =======================================================
//     headlineMedium: const TextStyle().copyWith(
//         fontFamily: 'ClashGrotesk',
//         fontSize: 16.0,
//         // // fontWeight: FontWeight.w600,
//         color: ColorsManager.white),

// // =========== Head 20_white =======================================================
//     headlineSmall: const TextStyle().copyWith(
//         fontFamily: 'ClashGrotesk',
//         fontSize: 20.0,
//         // // fontWeight: FontWeight.w600,
//         color: ColorsManager.main),

// // =========== body 14_white =======================================================
//     bodyLarge: const TextStyle().copyWith(
//         fontFamily: 'ClashGrotesk',
//         fontSize: 14.0,
//         // // fontWeight: FontWeight.w400,
//         color: ColorsManager.white),

// // =========== body 14_main =======================================================
//     bodyMedium: const TextStyle().copyWith(
//         fontFamily: 'ClashGrotesk',
//         fontSize: 14.0,
//         // // fontWeight: FontWeight.w400,
//         color: ColorsManager.main),

// // =========== body 10_white =======================================================
//     bodySmall: const TextStyle().copyWith(
//         fontFamily: 'ClashGrotesk',
//         fontSize: 10.0,
//         // // fontWeight: FontWeight.w400,
//         color: ColorsManager.white),

// // =========== Buttons 13_white =======================================================
//     labelLarge: const TextStyle().copyWith(
//         fontSize: 13.0,
//         fontFamily: 'ClashGrotesk',
//         // // fontWeight: FontWeight.w700,
//         color: ColorsManager.white),

// // =========== TextField 12_error =======================================================
//     labelMedium: const TextStyle().copyWith(
//         fontFamily: 'ClashGrotesk',
//         fontSize: 12.0,
//         // // fontWeight: FontWeight.w400,
//         color: ColorsManager.red),

// // =========== TextField 12_grey =======================================================
//     labelSmall: const TextStyle().copyWith(
//         fontSize: 12.0,
//         // fontWeight: FontWeight.w400,
//         color: ColorsManager.grey),
//   );

//   // -------- Customized Dark Text Theme ---------------------------------------------------------------------------------------------
//   static TextTheme darkTextTheme = TextTheme(
// // =========== Head 20_white =======================================================
//     headlineLarge: const TextStyle().copyWith(
//         fontFamily: 'ClashGrotesk',
//         fontSize: 20.0,
//         // // fontWeight: FontWeight.w600,
//         color: ColorsManager.white),

// // =========== Head 16_white =======================================================
//     headlineMedium: const TextStyle().copyWith(
//         fontFamily: 'ClashGrotesk',
//         fontSize: 16.0,
//         // // fontWeight: FontWeight.w600,
//         color: ColorsManager.white),

// // =========== Head 20_main =======================================================
//     headlineSmall: const TextStyle().copyWith(
//         fontFamily: 'ClashGrotesk',
//         fontSize: 20.0,
//         // // fontWeight: FontWeight.w600,
//         color: ColorsManager.main),

// // =========== body 14_white =======================================================
//     bodyLarge: const TextStyle().copyWith(
//         fontFamily: 'ClashGrotesk',
//         fontSize: 14.0,
//         // // fontWeight: FontWeight.w400,
//         color: ColorsManager.white),

// // =========== body 14_main =======================================================
//     bodyMedium: const TextStyle().copyWith(
//         fontFamily: 'ClashGrotesk',
//         fontSize: 14.0,
//         // // fontWeight: FontWeight.w400,
//         color: ColorsManager.main),

// // =========== body 10_white =======================================================
//     bodySmall: const TextStyle().copyWith(
//         fontFamily: 'ClashGrotesk',
//         fontSize: 10.0,
//         // // fontWeight: FontWeight.w400,
//         color: ColorsManager.white),

// // =========== Buttons 13_white =======================================================
//     labelLarge: const TextStyle().copyWith(
//         fontFamily: 'ClashGrotesk',
//         fontSize: 13.0,
//         // // fontWeight: FontWeight.w700,
//         color: ColorsManager.white),

// // =========== TextField 12_error =======================================================
//     labelMedium: const TextStyle().copyWith(
//         fontFamily: 'ClashGrotesk',
//         fontSize: 12.0,
//         // // fontWeight: FontWeight.w400,
//         color: ColorsManager.red),

// // =========== TextField 12_grey =======================================================
//     labelSmall: const TextStyle().copyWith(
//         fontFamily: 'ClashGrotesk',
//         fontSize: 12.0,
//         // // fontWeight: FontWeight.w400,
//         color: ColorsManager.grey),
//   );
}
