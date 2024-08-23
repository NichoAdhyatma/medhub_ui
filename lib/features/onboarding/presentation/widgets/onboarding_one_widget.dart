import 'package:flutter/material.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/core/utils/sized_box.dart';
import 'package:medhub/generated/assets.dart';

class OnboardingOneWidget extends StatelessWidget {
  const OnboardingOneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.onboardingOnboarding1,
          width: MediaQuery.of(context).size.width * 0.7,
        ),
        50.heightSB,
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.15,
          ),
          child: Column(
            children: [
              Text(
                'View and buy Medicine online',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              16.heightSB,
              Text(
                'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppPalette.secondaryMutedColor,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
