import 'package:flutter/material.dart';

import '../../helper/app_color.dart';
import '../../helper/dimens.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  final Widget titleIcon;

  const AppBarHome({
    super.key,
    required this.titleIcon,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.appColors.colorPrimary,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            color: context.appColors.colorGold,
            iconSize: kMarginLarge_3,
          );
        },
      ),
      // title: Icon(
      //   titleIcon,
      //   color: goldColor,
      //   size: kMarginLarge_3,
      // ),
      title: titleIcon,
      centerTitle: true,
    );
  }
}
