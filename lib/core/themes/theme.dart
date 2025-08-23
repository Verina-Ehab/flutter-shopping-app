import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'custom_themes/appbar_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/dialog_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/list_tile_theme.dart';
import 'custom_themes/navbar_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/text_theme.dart';

class AppThemeManager {
  static ThemeData lightTheme = ThemeData(
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    fontFamily: 'ClashGrotesk',
    brightness: Brightness.dark,
    primaryColor: ColorsManager.bckg,
    scaffoldBackgroundColor: ColorsManager.bckg,
    textTheme: TextThemeManager.lightTextTheme,
    appBarTheme: AppBarThemeManager.lightAppBarTheme,
    elevatedButtonTheme: ElevetedButtonThemeManager.lightElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemeManager.lightOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldManager.lightTextFormField,
    navigationBarTheme: NavBarThemeManager.lightNavBarTheme,
    checkboxTheme: MyCheckboxTheme.lightCheckboxThemeData,
    listTileTheme: MyListTileTheme.lightListTileTheme,
    // colorScheme: const ColorScheme.light(
    //   primary: ColorsManager.main,
    //   secondary: ColorsManager.second,
    //   // Set the indicator color here
    //   surface: Colors.white,
    //   onSurface: Colors.black, // text/icon color
    // ),
    dialogTheme: MyDialogTheme.lightDialogTheme, tabBarTheme: const TabBarThemeData(indicatorColor: ColorsManager.second),
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: TextThemeManager.darkTextTheme,
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    fontFamily: 'ClashGrotesk',
    brightness: Brightness.dark,
    primaryColor: ColorsManager.bckg,
    scaffoldBackgroundColor: ColorsManager.bckg,
    elevatedButtonTheme: ElevetedButtonThemeManager.darkElevatedButtonTheme,
    appBarTheme: AppBarThemeManager.darkAppBarTheme,
    outlinedButtonTheme: OutlinedButtonThemeManager.darkOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldManager.darkTextFormField,
    navigationBarTheme: NavBarThemeManager.darkNavBarTheme,
    checkboxTheme: MyCheckboxTheme.darkCheckboxThemeData,
    listTileTheme: MyListTileTheme.darkListTileTheme,
    // colorScheme: const ColorScheme.dark(
    //   primary: ColorsManager.main,
    //   secondary: ColorsManager.second,
    //   // Set the indicator color here
    //   surface: Colors.white,
    //   onSurface: Colors.black, // text/icon color
    // ),
    dialogTheme: MyDialogTheme.darkDialogTheme, tabBarTheme: const TabBarThemeData(indicatorColor: ColorsManager.second),
  );

  AppThemeManager._();
}
