import 'package:flutter/material.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/core/utils/sized_box.dart';

import 'package:medhub/features/home/presentation/widgets/header_home_widget.dart';
import 'package:medhub/features/home/presentation/widgets/top_categories_widget.dart';
import 'package:medhub/generated/assets.dart';

class HomePage extends StatelessWidget {
  static route() => MaterialPageRoute(
        builder: (_) => const HomePage(),
      );

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderHomeWidget(),
            const TopCategoriesWidget(),
            Column(
              children: [
                30.heightSB,
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Deals of the Day",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      const Spacer(),
                      const Text(
                        "More",
                        style: TextStyle(
                          color: AppPalette.accentColor,
                        ),
                      ),
                    ],
                  ),
                ),
                10.heightSB,
                Row(
                  children: [
                    20.widthSB,
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.45,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppPalette.cardColor,
                        boxShadow: const [
                          BoxShadow(
                            color: AppPalette.borderColor,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            Assets.productProductOne,
                            width: MediaQuery.of(context).size.width * 0.32,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 16,
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Accu-check Active Test Strip",
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                ),
                                10.heightSB,
                                Row(
                                  children: [
                                    Text(
                                      "Rp 112.000",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const Spacer(),
                                    Transform.translate(
                                      offset: const Offset(12, 0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4,
                                        ),
                                        decoration: const BoxDecoration(
                                          color: AppPalette.accentColor,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(50),
                                            bottomLeft: Radius.circular(50),
                                          ),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                            2.widthSB,
                                            const Text(
                                              "4.2",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            20.heightSB,
          ],
        ),
      ),
    );
  }
}
