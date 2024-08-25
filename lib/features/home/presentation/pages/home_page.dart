import 'package:flutter/material.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/features/home/presentation/widgets/molecules/bottom_navbar_widget.dart';
import 'package:medhub/features/home/presentation/widgets/organism/home_page_organism.dart';

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
        child: HomePageOrganism(),
      ),
      bottomNavigationBar: BottomNavbarWidget(),
    );
  }
}
