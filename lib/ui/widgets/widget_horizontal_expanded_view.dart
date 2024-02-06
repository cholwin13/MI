import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../helper/app_images.dart';
import '../../helper/dimens.dart';

class WidgetHorizontalExpandedCardView extends StatelessWidget {
  final String region;
  final String location;
  final String contactNo;

  const WidgetHorizontalExpandedCardView(
      {super.key,
        required this.region,
        required this.location,
        required this.contactNo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      const EdgeInsets.only(top: kMarginMedium_2),
      child: Container(
        padding: const EdgeInsets.all(kMarginCardMedium_2),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: context.appColors.colorPrimary),
          borderRadius: BorderRadius.circular(boxRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              region,
              style: context.appFonts.labelSmall()?.copyWith(
                color: context.appColors.colorPrimary,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: kMarginSmall_3,
            ),
            Row(
              children: [
                Image.asset(
                  AppImages.contactLocationIcon,
                  width: iconMedium_2,
                  height: iconMedium_2,
                ),
                Expanded(
                  child: Text(
                    location,
                    style: context.appFonts.labelSmall(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: kMarginSmall_3,
            ),
            Row(
              children: [
                Icon(
                  Icons.phone_android_outlined,
                  color: context.appColors.colorPrimary,
                ),
                Expanded(
                  child: Text(
                    contactNo,
                    style: context.appFonts.labelSmall(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
