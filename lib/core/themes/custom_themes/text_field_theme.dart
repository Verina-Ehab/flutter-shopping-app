import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import 'text_theme.dart';

class TextFormFieldManager {
  TextFormFieldManager._();

  static InputDecorationTheme lightTextFormField = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: ColorsManager.grey,
    suffixIconColor: ColorsManager.grey,
    // fillColor: MyColors.greyOpacity,
    // constraints: const BoxConstraints.expand(height: 14.inputFieldHeight),
    labelStyle: TextThemeManager.lightTextTheme.labelLarge,
    hintStyle: TextThemeManager.lightTextTheme.labelLarge,
    errorStyle: TextThemeManager.lightTextTheme.displayMedium!
        .copyWith(color: ColorsManager.red),
    //
    floatingLabelStyle: TextThemeManager.lightTextTheme.labelMedium!
        .copyWith(color: ColorsManager.greyIcon),
    border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(appSharedRadius),
        borderSide: const BorderSide(width: 1, color: ColorsManager.grey)),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(appSharedRadius),
        borderSide: const BorderSide(width: 1, color: ColorsManager.greyIcon)),
    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(appSharedRadius),
        borderSide: const BorderSide(width: 1, color: ColorsManager.main)),
    errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(appSharedRadius),
        borderSide: const BorderSide(width: 1, color: ColorsManager.red)),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(appSharedRadius),
        borderSide: const BorderSide(width: 2, color: ColorsManager.orange)),
  );

  static InputDecorationTheme darkTextFormField = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: ColorsManager.grey,
    suffixIconColor: ColorsManager.grey,
    // fillColor: MyColors.greyOpacity,
    // constraints: const BoxConstraints.expand(height: 14.inputFieldHeight),
    labelStyle: TextThemeManager.darkTextTheme.labelLarge,
    hintStyle: TextThemeManager.darkTextTheme.labelLarge,
    errorStyle: TextThemeManager.darkTextTheme.displayMedium!
        .copyWith(color: ColorsManager.red),
    //
    floatingLabelStyle: TextThemeManager.darkTextTheme.displayMedium,
    border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(appSharedRadius),
        borderSide: const BorderSide(width: 1, color: ColorsManager.grey)),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(appSharedRadius),
        borderSide: const BorderSide(width: 1, color: ColorsManager.greyIcon)),
    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(appSharedRadius),
        borderSide: const BorderSide(width: 1, color: ColorsManager.main)),
    errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(appSharedRadius),
        borderSide: const BorderSide(width: 1, color: ColorsManager.red)),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(appSharedRadius),
        borderSide: const BorderSide(width: 2, color: ColorsManager.orange)),
  );
}
