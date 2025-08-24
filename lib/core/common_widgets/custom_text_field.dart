import 'package:flutter/material.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/constants/colors.dart';

import '../themes/custom_themes/text_theme.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool isPassword;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const   CustomTextField({
    super.key,
    required this.labelText,
    this.isPassword = false,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      style: TextThemeManager.lightTextTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: ColorsManager.greyIcon.withValues(alpha: 0.2),
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 6.0,
        ),
      ),
      validator: validator,
    );
  }
}
