import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../../helper/navigation_routes.dart';
import '../../widgets/app_bar_home.dart';
import '../drawer/DrawerScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(
        titleIcon: Icon(
          Icons.home_outlined,
          color: context.appColors.colorGold,
          size: kMarginLarge_3,
        ),
      ),
      drawer: const DrawerScreen(),
      body: Container(
        // padding: const EdgeInsets.symmetric(horizontal: kMarginMedium),
        margin: const EdgeInsets.only(
            top: kMarginMedium_2),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    AppImages.appLogo,
                    width: 120.0,
                    height: 120.0,
                  ),
                  const SizedBox(
                    height: kMarginCardMedium,
                  ),
                  Text(
                    'For The People',
                    style: context.appFonts
                        .titleLarge()
                        ?.copyWith(color: context.appColors.colorPrimary),
                  ),
                ],
              ),
            ),
            const SizedBox(height: kMarginCardMedium,),
            HomeScreenCardWidget(
              onTap: () {
                // CustomNavigationHelper.router
                //     .push(Routes.visionAndMission.path);
                CustomNavigationHelper.router.go('/homePath/subhome');
              },
              icon: AppImages.homeVisionAndMission,
              text: 'home_vision_and_mission',
            ),
            HomeScreenCardWidget(
              onTap: () {
                CustomNavigationHelper.router
                    .push(Routes.homeGeneralInsurance.path);
              },
              icon: AppImages.homeGeneralIns,
              text: 'home_general_insurance',
            ),
            HomeScreenCardWidget(
              onTap: () {
                CustomNavigationHelper.router
                    .push(Routes.homeLifeInsurance.path);
              },
              icon: AppImages.homeLifeIns,
              text: 'home_life_insurance',
            ),
            HomeScreenCardWidget(
              onTap: () {
                CustomNavigationHelper.router
                    .push(Routes.homeBuyOnline.path);
              },
              icon: AppImages.homeBuyOnline,
              text: 'home_buy_online',
            ),
            HomeScreenCardWidget(
              onTap: () {
                CustomNavigationHelper.router
                    .push(Routes.homeOnlineBiller.path);
              },
              icon: AppImages.homeOnlinePayment,
              text: 'home_online_biller',
            ),
            HomeScreenCardWidget(
              onTap: () {
                CustomNavigationHelper.router
                    .push(Routes.homePrintCertificate.path);
              },
              icon: AppImages.homePrintCertificate,
              text: 'home_print_certificate',
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreenCardWidget extends StatelessWidget {
  final Function onTap;
  final String icon;
  final String text;

  const HomeScreenCardWidget({
    super.key,
    required this.onTap,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: kMarginCardMedium_2, right: kMarginCardMedium_2, bottom: kMarginCardMedium),
      width: double.infinity,
      child: SizedBox(
        height: kMarginExtraLarge,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            foregroundColor: context.appColors.colorPrimary,
            side: BorderSide(
              color: context.appColors.colorPrimary,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(boxRadius_2),
            ),
          ),
          onPressed: (){
            onTap();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                icon,
                width: iconMedium_3,
                height: iconMedium_3,
                color: context.appColors.colorPrimary,
              ),
              const SizedBox(
                width: kMarginCardMedium,
              ),
              Expanded(
                child: Text(
                  text.tr(),
                  style: context.appFonts.titleSmall(),
                  maxLines: 2,
                  // overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: context.appColors.colorPrimary,
              )
            ],
          ),
        ),
      ),
    );
  }
}
