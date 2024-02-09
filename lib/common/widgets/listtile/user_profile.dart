import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../images/circular_image.dart';

class UserProfile extends StatelessWidget {
  const UserProfile(
      {super.key,
      this.title,
      this.subTtile,
      required this.imageUrl,
      this.icon,
      this.onTap});
  final String? title, subTtile;
  final String imageUrl;
  final IconData? icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
          CircularImage(image: imageUrl, height: 50, width: 50, padding: 0),
      title: Text(
        title!,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: AppColors.whiteColor),
      ),
      subtitle: Text(
        subTtile!,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: AppColors.whiteColor),
      ),
      trailing: IconButton(
        onPressed: onTap,
        icon: Icon(
          icon,
        ),
        color: AppColors.whiteColor,
      ),
    );
  }
}
