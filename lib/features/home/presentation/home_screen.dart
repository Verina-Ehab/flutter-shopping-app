import 'package:flutter/material.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/constants/colors.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/helpers/extensions.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/localization/app_localizations.dart';

import '../../../core/common_widgets/spacing.dart';
import '../../../core/routing/routes.dart';
import 'widgets/featured_products_section.dart';
import 'widgets/hot_offers_section.dart';
import 'widgets/shop_collection_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ourProducts'.tr(context),
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            color: ColorsManager.main,
            fontWeight: FontWeight.w600,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false, // Removes the back arrow
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.pushNamed(Routes.settingsScreen);
            },
            color: ColorsManager.grey,
            iconSize: 30,
          ),
          horizontalSpace(16),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const FeaturedProductsSection(),
              verticalSpace(24),
              const ShopCollectionSection(),
              verticalSpace(32),
              const HotOffersSection(),
              verticalSpace(16),
            ],
          ),
        ),
      ),
    );
  }
}
