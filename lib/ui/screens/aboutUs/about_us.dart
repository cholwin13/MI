import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../helper/app_color.dart';
import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../widgets/app_bar_home.dart';
import '../drawer/DrawerScreen.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(
        titleIcon: Image.asset(
          AppImages.sideMenuAboutUsIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      drawer: const DrawerScreen(),
      body: SingleChildScrollView(
        child: Container(
            padding:
            const EdgeInsets.symmetric(horizontal: kMarginCardMedium_2),
            margin: const EdgeInsets.only(
                top: kMarginMedium_3, bottom: kMarginMedium_3),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(kMarginCardMedium_2),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: context.appColors.colorPrimary),
                    borderRadius: BorderRadius.circular(boxRadius),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            AppImages.sideMenuAboutUsIcon,
                            width: iconMedium_3,
                            height: iconMedium_3,
                          ),
                          const SizedBox(
                            width: kMarginCardMedium,
                          ),
                          Text(
                            'about_us_title'.tr(),
                            style: context.appFonts.titleSmall(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      Text(
                        'about_us_detail'.tr(),
                        style: context.appFonts.bodySmall(),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
