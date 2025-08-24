import 'package:flutter/material.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/common_widgets/custom_text_field.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/constants/colors.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/localization/app_localizations.dart';

import '../../../core/common_widgets/custom_button.dart';
import '../../../core/common_widgets/custom_success_dialog.dart';
import '../../../core/common_widgets/spacing.dart';
import '../../../core/routing/routes.dart';

class LoginWidget extends StatefulWidget {
  final VoidCallback onShowRegister;

  const LoginWidget({super.key, required this.onShowRegister});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _submit() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (ctx) => CustomSuccessDialog(
          title: 'dialog_welcome'.tr(context),
          message: 'dialog_signInSuccessMessage'.tr(context),
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
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(12.0),
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
                  'welcomeBack'.tr(context),
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: ColorsManager.main,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                verticalSpace(8),
                Text(
                  'signInToShopCraft'.tr(context),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                verticalSpace(32),

                CustomTextField(
                  controller: _emailController,
                  labelText: 'email'.tr(context),
                  validator: (value) {
                    if (value == null || !value.contains('@')) {
                      return 'validation_validEmail'.tr(context);
                    }
                    return null;
                  },
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
                verticalSpace(32),
                CustomButton(
                  onPressed: _submit,
                  backgroundColor: ColorsManager.main,
                  width: double.infinity,
                  label: 'signIn'.tr(context),
                ),
                verticalSpace(16),
                TextButton(
                  onPressed: widget.onShowRegister,
                  child: Text(
                    "dontHaveAccount".tr(context),
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
