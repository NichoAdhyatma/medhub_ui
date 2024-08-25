import 'package:flutter/material.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/features/home/presentation/widgets/bottom_navbar_widget.dart';
import 'package:medhub/features/home/presentation/widgets/deals_of_the_day_widget.dart';
import 'package:medhub/features/home/presentation/widgets/featured_brand_widget.dart';

import 'package:medhub/features/home/presentation/widgets/header_home_widget.dart';
import 'package:medhub/features/home/presentation/widgets/top_categories_widget.dart';

class HomePage extends StatelessWidget {
  static route() => MaterialPageRoute(
        builder: (_) => const HomePage(),
      );

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppPalette.backgroundHomeColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderHomeWidget(),
            TopCategoriesWidget(),
            DealsOfTheDayWidget(),
            FeaturedBrandWidget()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavbarWidget(),
    );
  }
}
