import 'package:flutter/material.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/core/utils/sized_box.dart';

class BrandCardWidget extends StatelessWidget {
  const BrandCardWidget({
    super.key,
    required this.label,
    required this.image,
  });

  final String label;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppPalette.shadowColor.withOpacity(0.05),
                blurRadius: 14,
                spreadRadius: 0,
                offset: const Offset(0, 2),
                blurStyle: BlurStyle.outer,
              ),
            ],
          ),
          child: Center(
            child: Image.asset(
              image,
              width: 61,
            ),
          ),
        ),
        14.heightSB,
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 60,
            minHeight: 38
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}