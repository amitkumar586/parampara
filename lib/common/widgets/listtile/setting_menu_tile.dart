import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';

class SettingMenutile extends StatelessWidget {
  const SettingMenutile(
      {super.key,
      required this.title,
      this.subTtile,
      this.icon,
      this.trailing,
      this.onTap});
  final String? title, subTtile;
  final IconData? icon;
  final Widget? trailing;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 20,
        color: AppColors.primary,
      ),
      title: Text(
        title!,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      subtitle: Text(
        subTtile!,
        style: Theme.of(context).textTheme.labelSmall,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
