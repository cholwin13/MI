import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/dimens.dart';
import '../../../helper/app_images.dart';
import '../../../helper/navigation_routes.dart';

class DrawerScreen extends StatelessWidget {
  // final void Function(int) onTap;

  const DrawerScreen({
    super.key,
    // required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: drawerHeight,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: context.appColors.colorPrimary,
              ),
              child: Image.asset(AppImages.appLogo),
            ),
          ),
          ListTile(
            leading: SizedBox(
              width: iconMedium_3,
              height: iconMedium_3,
              child: Image.asset(AppImages.sideMenuAboutUsIcon),
            ),
            title: Text(
              'about_us'.tr(),
              style: context.appFonts.titleSmall(),
            ),
            onTap: () {
              CustomNavigationHelper.router.push(Routes.aboutUs.path);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: SizedBox(
              width: iconMedium_3,
              height: iconMedium_3,
              child: Image.asset(AppImages.sideMenuContactUsIcon),
            ),
            title: Text(
              'contact_us'.tr(),
              style: context.appFonts.titleSmall(),
            ),
            onTap: () {
              CustomNavigationHelper.router.push(Routes.contactPath.path);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: SizedBox(
              width: iconMedium_3,
              height: iconMedium_3,
              child: Image.asset(AppImages.sideMenuFaqIcon),
            ),
            title: Text(
              'faqs'.tr(),
              style: context.appFonts.titleSmall(),
            ),
            onTap: () {
              CustomNavigationHelper.router.push(Routes.faqs.path);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: SizedBox(
              width: iconMedium_3,
              height: iconMedium_3,
              child: Image.asset(AppImages.sideMenuSettingIcon),
            ),
            title: Text(
              'settings'.tr(),
              style: context.appFonts.titleSmall(),
            ),
            onTap: () {
              CustomNavigationHelper.router.push(Routes.settings.path);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: SizedBox(
              width: iconMedium_3,
              height: iconMedium_3,
              child: Image.asset(AppImages.sideMenuLoginIcon),
            ),
            title: Text(
              'login'.tr(),
              style: context.appFonts.titleSmall(),
            ),
            onTap: () {
              CustomNavigationHelper.router.push(Routes.login.path);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
