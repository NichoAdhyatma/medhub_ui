import 'package:flutter/material.dart';
import 'package:medhub/core/themes/app_palette.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    this.onPressed,
    this.icon,
    required this.label,
  });

  final VoidCallback? onPressed;
  final Widget? icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          side: BorderSide(
            color: AppPalette.borderColor,
            width: 1,
          ),
        ),
      ),
      child: icon != null
          ? Stack(
              alignment: Alignment.centerLeft,
              children: [
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppPalette.primaryMutedColor,
                        fontWeight: FontWeight.w700,

                      ),
                ),
                Transform.translate(
                  offset: const Offset(-35, -1),
                  child: icon ?? const SizedBox.shrink(),
                ),
              ],
            )
          : Text(
              label,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: AppPalette.primaryMutedColor,
                  ),
            ),
    );
  }
}
