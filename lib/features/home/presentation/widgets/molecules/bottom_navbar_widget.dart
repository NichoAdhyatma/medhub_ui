import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/features/home/presentation/cubit/bottom_navbar_cubit/bottom_navbar_cubit.dart';

class BottomNavbarWidget extends StatelessWidget {
  const BottomNavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavbarCubit, int>(
      builder: (context, state) {
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
              _buildIconButton(
                context,
                index: 0,
                icon: Icons.home_outlined,
              ),
              _buildIconButton(
                context,
                index: 1,
                icon: Icons.notifications_none_outlined,
              ),
              _buildCenterButton(
                context,
                index: 2,
                icon: Icons.add_circle_outline_outlined,
              ),
              _buildIconButton(
                context,
                index: 3,
                icon: Icons.shopping_bag_outlined,
              ),
              _buildIconButton(
                context,
                index: 4,
                icon: Icons.person_outline_outlined,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildIconButton(
    BuildContext context, {
    required int index,
    required IconData icon,
  }) {
    return IconButton(
      onPressed: () {
        context.read<BottomNavbarCubit>().changeIndex(index);
      },
      icon: Icon(
        icon,
        size: 25,
        color: context.read<BottomNavbarCubit>().state == index
            ? AppPalette.accentColor
            : AppPalette.secondaryMutedColor,
      ),
    );
  }

  Widget _buildCenterButton(
    BuildContext context, {
    required int index,
    required IconData icon,
  }) {
    return IconButton(
      onPressed: () {
        context.read<BottomNavbarCubit>().changeIndex(index);
      },
      icon: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppPalette.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
