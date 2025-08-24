import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import 'text_theme.dart';

class TextFormFieldManager {
  TextFormFieldManager._();

  static InputDecorationTheme lightTextFormField = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: ColorsManager.grey,
    suffixIconColor: ColorsManager.grey,
    // fillColor: MyColors.greyOpacity,
    // constraints: const BoxConstraints.expand(height: 14.inputFieldHeight),
    labelStyle: TextThemeManager.lightTextTheme.labelMedium,
    hintStyle: TextThemeManager.lightTextTheme.labelMedium,
    errorStyle: TextThemeManager.lightTextTheme.displayMedium!.copyWith(
      color: ColorsManager.red,
    ),
    //
    floatingLabelStyle: TextThemeManager.lightTextTheme.labelMedium,
    
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(appSharedRadius),
      borderSide: const BorderSide(
        width: 1,
        color: Color.fromARGB(255, 179, 178, 178),
      ),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(appSharedRadius),
      borderSide: const BorderSide(
        width: 1,
        color: Color.fromARGB(255, 179, 178, 178),
      ),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(appSharedRadius),
      borderSide: const BorderSide(width: 1, color: ColorsManager.main),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(appSharedRadius),
      borderSide: const BorderSide(width: 1, color: ColorsManager.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(appSharedRadius),
      borderSide: const BorderSide(width: 2, color: ColorsManager.orange),
    ),
  );
}
