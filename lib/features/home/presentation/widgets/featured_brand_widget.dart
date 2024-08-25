import 'package:flutter/material.dart';
import 'package:medhub/core/utils/sized_box.dart';
import 'package:medhub/generated/assets.dart';

import 'brand_card_widget.dart';

class FeaturedBrandWidget extends StatelessWidget {
  const FeaturedBrandWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Featured Brands",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        20.heightSB,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              20.widthSB,
              const BrandCardWidget(
                label: "Himalaya Wellness",
                image: Assets.brandsHimalaya,
              ),
              20.widthSB,
              const BrandCardWidget(
                label: "Accu-Check",
                image: Assets.brandsAccu,
              ),
              20.widthSB,
              const BrandCardWidget(
                label: "VLCC",
                image: Assets.brandsVlcc,
              ),
              20.widthSB,
              const BrandCardWidget(
                label: "Protinex",
                image: Assets.brandsProtinex,
              ),
              20.widthSB,
            ],
          ),
        ),
        20.heightSB,
      ],
    );
  }
}