import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import 'text_theme.dart';

class ElevetedButtonThemeManager {
  ElevetedButtonThemeManager._();

  // -- Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        // maximumSize: const Size(double.infinity, 52),
        // minimumSize: Size.infinite *0.4,
        // elevation: 0,
        foregroundColor: ColorsManager.white,
        backgroundColor: ColorsManager.main,
        disabledForegroundColor: ColorsManager.white,
        disabledBackgroundColor: ColorsManager.grey,
        side: const BorderSide(color: ColorsManager.transparent),
        // padding: const EdgeInsets.symmetric(vertical: 15),
        textStyle: TextThemeManager.lightTextTheme.labelLarge,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(appSharedRadius))),
  );

  // -- Dark Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        // elevation: 0,
        foregroundColor: ColorsManager.white,
        backgroundColor: ColorsManager.main,
        disabledForegroundColor: ColorsManager.white,
        disabledBackgroundColor: ColorsManager.grey,
        side: const BorderSide(color: ColorsManager.transparent),
        // padding: const EdgeInsets.symmetric(vertical: 15),
        textStyle: TextThemeManager.darkTextTheme.labelLarge,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(appSharedRadius))),
  );
}
