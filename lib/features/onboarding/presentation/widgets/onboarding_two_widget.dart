import 'package:flutter/material.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/core/utils/sized_box.dart';
import 'package:medhub/generated/assets.dart';

class OnboardingTwoWidget extends StatelessWidget {
  const OnboardingTwoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.onboardingOnboarding2,
          width: MediaQuery.of(context).size.width * 0.72,
        ),
        50.heightSB,
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.15,
          ),
          child: Column(
            children: [
              Text(
                'Online medical & Healthcare',
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
