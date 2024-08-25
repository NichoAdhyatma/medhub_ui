import 'package:flutter/material.dart';
import 'package:medhub/features/home/presentation/widgets/molecules/deals_of_the_day_widget.dart';
import 'package:medhub/features/home/presentation/widgets/molecules/featured_brand_widget.dart';
import 'package:medhub/features/home/presentation/widgets/molecules/header_home_widget.dart';
import 'package:medhub/features/home/presentation/widgets/molecules/top_categories_widget.dart';

class HomePageOrganism extends StatelessWidget {
  const HomePageOrganism({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderHomeWidget(),
        TopCategoriesWidget(),
        DealsOfTheDayWidget(),
        FeaturedBrandWidget()
      ],
    );
  }
}