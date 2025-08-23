import 'package:flutter/material.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/constants/colors.dart';

class MyListTileTheme {
  MyListTileTheme._();

  static ListTileThemeData lightListTileTheme = const ListTileThemeData(
    // Color of icons and text when the tile is enabled
    textColor: ColorsManager.white,
    iconColor: ColorsManager.white,
    // You can also customize other properties like content padding
    // contentPadding: EdgeInsets.all(16.0),
  );

  static ListTileThemeData darkListTileTheme = const ListTileThemeData(
    // Color of icons and text when the tile is enabled
    textColor: ColorsManager.black,
    iconColor: ColorsManager.black,
  );
}

// For CheckboxListTile
// CheckboxListTile(
//   title: Text('killsOnly'.tr(context)),
//   fillColor:
//       WidgetStateProperty.all(ColorsManager.main),
//   value: state.isKillsOnly,
//   onChanged: (value) => cubit.setIsKillsOnly(value!),
//   controlAffinity: ListTileControlAffinity.leading,
//   contentPadding: EdgeInsets.zero,
// ),
