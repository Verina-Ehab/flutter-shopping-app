import 'package:flutter/material.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/common_widgets/custom_button.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/common_widgets/custom_text_field.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/localization/app_localizations.dart';

import '../../../core/common_widgets/custom_success_dialog.dart';
import '../../../core/common_widgets/spacing.dart';
import '../../../core/constants/colors.dart';
import '../../../core/routing/routes.dart';

class RegisterWidget extends StatefulWidget {
  final VoidCallback onShowLogin;

  const RegisterWidget({super.key, required this.onShowLogin});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void _submit() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (ctx) => CustomSuccessDialog(
          title: 'dialog_success'.tr(context),
          message: 'dialog_signUpSuccessMessage'.tr(context),
          onClose: () {
            Navigator.of(
              ctx,
            ).pushNamedAndRemoveUntil(Routes.homeScreen, (route) => false);
          },
        ),
      );
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(24.0),
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'createAccount'.tr(context),
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: ColorsManager.main,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                verticalSpace(8),
                Text(
                  'joinShopCraft'.tr(context),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                verticalSpace(32),
                CustomTextField(
                  controller: _nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'validation_enterFullName'.tr(context);
                    }
                    return null;
                  },
                  labelText: 'fullName'.tr(context),
                ),
                verticalSpace(16),
                CustomTextField(
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || !value.contains('@')) {
                      return 'validation_validEmail'.tr(context);
                    }
                    return null;
                  },
                  labelText: 'email'.tr(context),
                ),
                verticalSpace(16),
                CustomTextField(
                  controller: _passwordController,
                  isPassword: true,
                  labelText: 'password'.tr(context),
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return 'validation_passwordLength'.tr(context);
                    }
                    return null;
                  },
                ),
                verticalSpace(16),
                CustomTextField(
                  controller: _confirmPasswordController,
                  isPassword: true,
                  labelText: "confirmPassword".tr(context),
                  validator: (value) {
                    if (value != _passwordController.text) {
                      return 'validation_passwordsNoMatch'.tr(context);
                    }
                    return null;
                  },
                ),
                verticalSpace(32),
                CustomButton(
                  onPressed: _submit,
                  backgroundColor: ColorsManager.main,
                  width: double.infinity,
                  label: 'createAccount'.tr(context),
                ),
                verticalSpace(16),
                TextButton(
                  onPressed: widget.onShowLogin,
                  child: Text(
                    'alreadyHaveAccount'.tr(context),
                    style: TextStyle(color: ColorsManager.main),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
