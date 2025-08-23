import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class NavBarThemeManager {
  NavBarThemeManager._();

  static NavigationBarThemeData lightNavBarTheme = const NavigationBarThemeData(
    // height: 100,
    backgroundColor: ColorsManager.bckg,
    indicatorColor: ColorsManager.main,
  );

  static NavigationBarThemeData darkNavBarTheme = const NavigationBarThemeData(
    backgroundColor: ColorsManager.bckg,
    indicatorColor: ColorsManager.main,
  );
}
