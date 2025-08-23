import 'package:flutter/material.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/themes/custom_themes/text_theme.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class MyDialogTheme {
  MyDialogTheme._();

  static DialogThemeData lightDialogTheme = DialogThemeData(
    backgroundColor: ColorsManager.bckg,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(appSharedRadius),
    ),
    titleTextStyle: TextThemeManager.darkTextTheme.titleLarge,
    contentTextStyle: TextThemeManager.darkTextTheme.bodyLarge,
    // actionsPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
    //   iconColor: ColorsManager.white,
  );

  static DialogThemeData darkDialogTheme = DialogThemeData(
    backgroundColor: ColorsManager.bckg,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(appSharedRadius),
    ),
    titleTextStyle: TextThemeManager.darkTextTheme.titleLarge,
    contentTextStyle: TextThemeManager.darkTextTheme.bodyLarge,
  );
}
