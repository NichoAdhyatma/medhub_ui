import 'package:flutter/material.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/core/utils/sized_box.dart';

class CardProductWidget extends StatelessWidget {
  const CardProductWidget({
    super.key,
    required this.name,
    required this.price,
    required this.rating,
    required this.image,
  });

  final String name;
  final String price;
  final String rating;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppPalette.cardColor,
        boxShadow: const [
          BoxShadow(
            color: AppPalette.shadowColor,
            blurRadius: 13,
            spreadRadius: 0,
            offset: Offset(0, 3),
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            width: MediaQuery.of(context).size.width * 0.32,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 16,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
                10.heightSB,
                Row(
                  children: [
                    Text(
                      price,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 15,
                            ),
                            2.widthSB,
                            Text(
                              rating,
                              style: const TextStyle(color: Colors.white),
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
    );
  }
}
