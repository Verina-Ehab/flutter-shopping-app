import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'text_theme.dart';

class AppBarThemeManager {
  AppBarThemeManager._();

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    // elevation: 0,
    // centerTitle: true,
    // scrolledUnderElevation: 0,

    backgroundColor: ColorsManager.transparent,
    surfaceTintColor: ColorsManager.transparent,
    iconTheme: const IconThemeData(color: ColorsManager.white, size: 24),
    actionsIconTheme: const IconThemeData(color: ColorsManager.white, size: 24),
    titleTextStyle: TextThemeManager.lightTextTheme.headlineMedium,
  );

  static AppBarTheme darkAppBarTheme = AppBarTheme(
    // elevation: 0,
    // centerTitle: true,
    // scrolledUnderElevation: 0,
    backgroundColor: ColorsManager.transparent,
    surfaceTintColor: ColorsManager.transparent,
    iconTheme: const IconThemeData(color: ColorsManager.white, size: 24),
    actionsIconTheme: const IconThemeData(color: ColorsManager.white, size: 24),
    titleTextStyle: TextThemeManager.lightTextTheme.headlineMedium,
  );
}
