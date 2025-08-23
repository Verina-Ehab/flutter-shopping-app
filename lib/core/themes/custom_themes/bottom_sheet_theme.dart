import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class MyBottomSheetTheme {
  MyBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: ColorsManager.white,
    modalBackgroundColor: ColorsManager.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(appSharedRadius)),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: ColorsManager.bckg,
    modalBackgroundColor: ColorsManager.bckg,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(appSharedRadius)),
  );
}
