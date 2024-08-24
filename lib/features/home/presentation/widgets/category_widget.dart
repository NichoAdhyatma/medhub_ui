import 'package:flutter/material.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/core/utils/sized_box.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
      {super.key, required this.label, required this.image, this.colors});

  final String label;
  final String image;
  final List<Color>? colors;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: colors ??
                  [
                    AppPalette.gradientPink1,
                    AppPalette.gradientPink2,
                  ],
            ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              image,
              width: 16,
            ),
          ),
        ),
        10.heightSB,
        Text(
          label,
          maxLines: 2,
          style: TextStyle(
            color: AppPalette.primaryColor.withOpacity(0.95),
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}
