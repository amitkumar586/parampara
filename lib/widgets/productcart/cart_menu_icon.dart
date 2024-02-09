import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/app_colors.dart';

class CardCounterIcon extends StatelessWidget {
  const CardCounterIcon({
    super.key,
    required this.iconColor,
    required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Iconsax.shopping_bag,
          ),
          color: iconColor,
        ),
        Positioned(
          right: 4,
          top: 5,
          child: Container(
            alignment: Alignment.center,
            width: 15,
            height: 18,
            decoration: const BoxDecoration(
                color: AppColors.blackColor, shape: BoxShape.circle),
            child: Text(
              "2",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: AppColors.whiteColor, fontSizeFactor: 0.8),
            ),
          ),
        )
      ],
    );
  }
}
