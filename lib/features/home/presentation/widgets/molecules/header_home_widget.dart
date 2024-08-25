import 'package:flutter/material.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/core/utils/sized_box.dart';
import 'package:medhub/generated/assets.dart';

class HeaderHomeWidget extends StatelessWidget {
  const HeaderHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntrinsicHeight(
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppPalette.gradient1,
                          AppPalette.gradient2,
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -MediaQuery.of(context).size.height * 0.25,
                    left: 0,
                    child: Image.asset(
                      Assets.homeElips,
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    40.heightSB,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                              Assets.imagesAppIcon2x,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              Assets.homeNotif,
                              width: 27,
                            ),
                            10.widthSB,
                            Image.asset(
                              Assets.homeCart,
                              width: 27,
                            ),
                          ],
                        )
                      ],
                    ),
                    20.heightSB,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Lorem",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: Colors.white,
                              ),
                        ),
                        Text(
                          "Welcome to MedHub",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ],
                    ),
                    50.heightSB,
                  ],
                ),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -30),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    blurRadius: 25,
                    spreadRadius: 1,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search Medicine & Healthcare products",
                  hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 13,
                        color: AppPalette.secondaryMutedColor,
                      ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: AppPalette.secondaryMutedColor,
                    size: 25,
                  ),
                  prefixIconConstraints: const BoxConstraints(
                    minWidth: 40,
                    minHeight: 0,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
