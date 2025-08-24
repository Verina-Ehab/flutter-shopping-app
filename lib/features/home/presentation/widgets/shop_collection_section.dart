import 'package:flutter/material.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/localization/app_localizations.dart';

import '../../../../core/common_widgets/spacing.dart';
import '../../models/products_data.dart';
import 'product_card.dart';

class ShopCollectionSection extends StatelessWidget {
  const ShopCollectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'shopOurCollection'.tr(context),
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.w500),
        ),
        verticalSpace(16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: GridView.builder(
            itemCount: mockProducts.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.7,
            ),
            itemBuilder: (context, index) {
              return ProductCard(product: mockProducts[index]);
            },
          ),
        ),
      ],
    );
  }
}
