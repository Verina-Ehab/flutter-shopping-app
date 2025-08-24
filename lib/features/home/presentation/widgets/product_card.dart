// lib/features/home/widgets/product_card.dart

import 'package:flutter/material.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/common_widgets/snackbar.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/constants/colors.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/localization/app_localizations.dart';
import 'package:flutter_sprints_microsoft_shopcraft/features/home/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(product.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: CircleAvatar(
                      backgroundColor: ColorsManager.main.withValues(
                        alpha: 0.8,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () {
                          customSnackBar(
                            isError: false,
                            message:
                                '${product.name} ${'addedToCart'.tr(context)}',
                            context: context,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    product.price,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: ColorsManager.main,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
