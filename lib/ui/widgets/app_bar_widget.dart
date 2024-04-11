import 'package:flutter/material.dart';

import '../../helper/app_color.dart';
import '../../helper/dimens.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Widget titleIcon;
  final List<Widget>? actions;

  const AppBarWidget({
    super.key,
    required this.titleIcon, this.actions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.appColors.colorPrimary,
      iconTheme: IconThemeData(
        color: context.appColors.colorGold,
      ),
      title: titleIcon,
      centerTitle: true,
      actions: actions,
    );
  }
}
