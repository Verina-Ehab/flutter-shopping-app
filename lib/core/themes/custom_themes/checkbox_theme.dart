import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class MyCheckboxTheme {
  MyCheckboxTheme._();

  // -- Customized Checkbox Theme
  static CheckboxThemeData lightCheckboxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(appSharedRadius)),
    // checkColor: WidgetStateProperty.resolveWith((states) {
    //   if (states.contains(WidgetState.selected)) {
    //     return ColorsManager.bottomGradient;
    //   } else {
    //     return ColorsManager.white;
    //   }
    // }),
    side: const BorderSide(color: ColorsManager.main),
    // WidgetStateBorder.resolveWith((states) {
    //   // If selected
    //   if (states.contains(WidgetState.selected)) {
    //     return const BorderSide(width: 2, color: ColorsManager.main);
    //   }
    //   // Otherwise (unselected)
    //   else {
    //     return const BorderSide(width: 2, color: ColorsManager.grey);
    //   }}),
    checkColor: WidgetStateProperty.all(ColorsManager.bckg),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return ColorsManager.main;
      } else {
        return ColorsManager.transparent;
      }
    }),
  );

  // -- Customized Checkbox Theme
  static CheckboxThemeData darkCheckboxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(appSharedRadius)),
    // checkColor: WidgetStateProperty.resolveWith((states) {
    //   if (states.contains(WidgetState.selected)) {
    //     return ColorsManager.bottomGradient;
    //   } else {
    //     return ColorsManager.white;
    //   }
    // }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return ColorsManager.main;
      } else {
        return ColorsManager.transparent;
      }
    }),
  );
}
