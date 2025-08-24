import 'package:flutter/material.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/constants/colors.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/localization/app_localizations.dart';

import 'custom_button.dart';

class CustomSuccessDialog extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback onClose;

  const CustomSuccessDialog({
    super.key,
    required this.title,
    required this.message,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      title: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: ColorsManager.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      content: Text(
        message,
        textAlign: TextAlign.center,
        style: Theme.of(
          context,
        ).textTheme.bodyLarge?.copyWith(color: ColorsManager.black),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        CustomButton(
          onPressed: onClose,
          backgroundColor: ColorsManager.green,
          width: double.infinity,
          label: 'close'.tr(context),
        ),
      ],
    );
  }
}
