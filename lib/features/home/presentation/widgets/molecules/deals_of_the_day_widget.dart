import 'package:flutter/material.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/core/utils/sized_box.dart';
import 'package:medhub/generated/assets.dart';

import '../atoms/card_product_widget.dart';

class DealsOfTheDayWidget extends StatelessWidget {
  const DealsOfTheDayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        30.heightSB,
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            children: [
              Text(
                "Deals of the Day",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const Spacer(),
              const Text(
                "More",
                style: TextStyle(
                  color: AppPalette.accentColor,
                ),
              ),
            ],
          ),
        ),
        10.heightSB,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                20.widthSB,
                const CardProductWidget(
                  name: 'Accu-check Active Test Strip',
                  price: 'Rp 112.000',
                  image: Assets.productProductOne,
                  rating: '4.2',
                ),
                14.widthSB,
                const CardProductWidget(
                  name: 'Omron HEM-8712 BP Monitor',
                  price: 'Rp 150.000',
                  image: Assets.productProductTwo,
                  rating: '4.5',
                ),
                20.widthSB,
              ],
            ),
          ),
        ),
        20.heightSB,
      ],
    );
  }
}
