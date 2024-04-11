import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../widgets/app_bar_widget.dart';

class VisionAndMission extends StatelessWidget {
  const VisionAndMission({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.homeVisionAndMission,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: kMarginCardMedium_2),
        margin: const EdgeInsets.only(top: kMarginMedium_3),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(kMarginCardMedium_2),
              decoration: BoxDecoration(
                border: Border.all(color: context.appColors.colorPrimary),
                borderRadius: BorderRadius.circular(boxRadius),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppImages.homeVisionIcon,
                        width: iconLarge,
                        height: iconLarge,
                      ),
                      const SizedBox(
                        width: kMarginSmall_3,
                      ),
                      Text(
                        'insurance_vision'.tr(),
                        style: context.appFonts.titleSmall()?.copyWith(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'insurance_vision_detail'.tr(),
                    style:
                    context.appFonts.bodySmall(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kMarginMedium_2,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(kMarginCardMedium_2),
              decoration: BoxDecoration(
                border: Border.all(color: context.appColors.colorPrimary),
                borderRadius: BorderRadius.circular(boxRadius),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppImages.homeVisionAndMission,
                        width: iconLarge,
                        height: iconLarge,
                      ),
                      const SizedBox(
                        width: kMarginSmall_3,
                      ),
                      Text(
                        'insurance_mission'.tr(),
                        style: context.appFonts.titleSmall()?.copyWith(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'insurance_mission_detail'.tr(),
                    style:
                    context.appFonts.bodySmall(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
