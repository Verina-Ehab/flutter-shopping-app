import 'package:flutter/material.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/localization/app_localizations.dart';
import '../constants/colors.dart';

void customSnackBar(
    // bool mounted,
    {required bool isError,
    required String message,
    required BuildContext context}) {
  // if (!mounted) return;
  ScaffoldMessenger.of(context)
      .removeCurrentSnackBar(); // Remove previous snackbar quickly
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message.tr(context),
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      backgroundColor: isError ? ColorsManager.red : ColorsManager.green,
    ),
  );
}
