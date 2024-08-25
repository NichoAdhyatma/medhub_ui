import 'package:flutter/material.dart';
import 'package:medhub/core/themes/app_palette.dart';

class BottomNavbarWidget extends StatelessWidget {
  const BottomNavbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppPalette.bottomNavbarShadow,
            blurRadius: 14,
            spreadRadius: 0,
            offset: Offset(0, -7),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home_outlined,
              size: 25,
              color: AppPalette.accentColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              size: 25,
              color: AppPalette.secondaryMutedColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppPalette.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.add_circle_outline_outlined,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              size: 25,
              color: AppPalette.secondaryMutedColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_outline_outlined,
              size: 25,
              color: AppPalette.secondaryMutedColor,
            ),
          ),
        ],
      ),
    );
  }
}
