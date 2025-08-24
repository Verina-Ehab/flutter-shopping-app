import 'package:flutter/material.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/localization/app_localizations.dart';

import '../../../../core/common_widgets/spacing.dart';
import '../../models/offers_data.dart';
import 'offer_card.dart';

class HotOffersSection extends StatelessWidget {
  const HotOffersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'hotOffers'.tr(context),
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.w500),
        ),
        verticalSpace(16),
        ListView.builder(
          itemCount: mockOffers.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return OfferCard(offer: mockOffers[index]);
          },
        ),
      ],
    );
  }
}
