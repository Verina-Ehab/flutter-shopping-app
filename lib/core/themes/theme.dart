import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'custom_themes/appbar_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/text_theme.dart';

class AppThemeManager {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'ClashGrotesk',
    brightness: Brightness.dark,
    primaryColor: ColorsManager.bckg,
    scaffoldBackgroundColor: ColorsManager.bckg,
    textTheme: TextThemeManager.lightTextTheme,
    appBarTheme: AppBarThemeManager.lightAppBarTheme,
    inputDecorationTheme: TextFormFieldManager.lightTextFormField,
  );

  AppThemeManager._();
}
