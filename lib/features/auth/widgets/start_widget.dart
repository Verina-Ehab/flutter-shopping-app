import 'package:flutter/material.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/common_widgets/custom_button.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/constants/assets_pathes.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/constants/colors.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/localization/app_localizations.dart';

import '../../../core/common_widgets/spacing.dart';

class StartWidget extends StatelessWidget {
  final VoidCallback onShowLogin;
  final VoidCallback onShowRegister;

  const StartWidget({
    super.key,
    required this.onShowLogin,
    required this.onShowRegister,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        verticalSpace(100),
        Text(
          'ShopCraft'.tr(context),
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        ),
        verticalSpace(8),
        Text(
          'yourPremiumShoppingExperience'.tr(context),
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: ColorsManager.white.withValues(alpha: 0.7),
          ),
        ),
        const Spacer(),
        Container(
          height: 140,
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
              image: AssetImage(auth1),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
              image: AssetImage(auth2),
              fit: BoxFit.cover,
            ),
          ),
        ),
        verticalSpace(40),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                onPressed: onShowRegister,
                backgroundColor: Colors.white,
                textColor: ColorsManager.main,
                label: "signUp".tr(context),
              ),
            ),
            horizontalSpace(16),
            Expanded(
              child: CustomButton(
                onPressed: onShowLogin,
                textColor: ColorsManager.main,
                backgroundColor: ColorsManager.white,
                label: "signIn".tr(context),
              ),
            ),
          ],
        ),
        verticalSpace(30),
      ],
    );
  }
}
