import 'package:flutter/material.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/core/utils/sized_box.dart';
import 'package:medhub/generated/assets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'category_widget.dart';

class TopCategoriesWidget extends StatelessWidget {
  const TopCategoriesWidget({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Top Categories",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        20.heightSB,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              (MediaQuery.of(context).size.width * 0.06).widthSB,
              const CategoryWidget(
                label: "Dental",
                image: Assets.categoriesDental,
              ),
              (MediaQuery.of(context).size.width * 0.06).widthSB,
              const CategoryWidget(
                label: "Wellness",
                image: Assets.categoriesWellnes,
                colors: [
                  AppPalette.gradientGreen1,
                  AppPalette.gradientGreen2,
                ],
              ),
              (MediaQuery.of(context).size.width * 0.06).widthSB,
              const CategoryWidget(
                label: "Homeo",
                image: Assets.categoriesHomeo,
                colors: [
                  AppPalette.gradientYellow1,
                  AppPalette.gradientYellow2,
                ],
              ),
              (MediaQuery.of(context).size.width * 0.06).widthSB,
              const CategoryWidget(
                label: "Eye Care",
                image: Assets.categoriesEyeCare,
                colors: [
                  AppPalette.gradientBlue1,
                  AppPalette.gradientBlue2,
                ],
              ),
              (MediaQuery.of(context).size.width * 0.06).widthSB,
              const CategoryWidget(
                label: "Skin & Hair",
                image: Assets.categoriesSkinHair,
                colors: [
                  AppPalette.gradientBlack1,
                  AppPalette.gradientBlack2,
                ],
              ),
            ],
          ),
        ),
        30.heightSB,
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 140,
          child: PageView(
            controller: pageController,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.only(bottom: 20),
                width: MediaQuery.of(context).size.width,
                height: 140,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.categoriesBanner),
                    fit: BoxFit.contain,
                  ),
                ),
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: const WormEffect(
                    dotWidth: 6.0,
                    dotHeight: 6.0,
                    activeDotColor: AppPalette.accentColor,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.only(bottom: 20),
                width: MediaQuery.of(context).size.width,
                height: 140,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.categoriesBanner),
                    fit: BoxFit.contain,
                  ),
                ),
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: const WormEffect(
                    dotWidth: 6.0,
                    dotHeight: 6.0,
                    activeDotColor: AppPalette.accentColor,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.only(bottom: 20),
                width: MediaQuery.of(context).size.width,
                height: 140,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.categoriesBanner),
                    fit: BoxFit.contain,
                  ),
                ),
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: const WormEffect(
                    dotWidth: 6.0,
                    dotHeight: 6.0,
                    activeDotColor: AppPalette.accentColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}