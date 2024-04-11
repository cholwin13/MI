import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../../helper/navigation_routes.dart';

class ContactUS extends StatelessWidget {
  const ContactUS({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kMarginCardMedium),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LocationAndPhone(),
          SizedBox(
            height: kMarginCardMedium_2,
          ),
          ContactInformation(),
        ],
      ),
    );
  }
}

class LocationAndPhone extends StatelessWidget {
  const LocationAndPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kMarginMedium_3),
      decoration: BoxDecoration(
        color: context.appColors.colorWhite,
        borderRadius: BorderRadius.circular(boxRadius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: (){
                  CustomNavigationHelper.router.push(Routes.googleMapScreen.path);
                },
                child: Container(
                  padding: const EdgeInsets.all(kMarginMedium_3),
                  decoration: BoxDecoration(
                    border: Border.all(color: context.appColors.colorPrimary),
                    borderRadius: BorderRadius.circular(boxRadius),
                  ),
                  child: Image.asset(
                    AppImages.contactLocationIcon,
                    width: iconLarge_2,
                    height: iconLarge_2,
                  ),
                ),
              ),
              const SizedBox(
                height: kMarginCardMedium,
              ),
              Text('Near By',
                  style: context.appFonts.labelSmall()?.copyWith(
                        fontSize: 13.0,
                        color: context.appColors.colorPrimary,
                      ))
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  launchUrl(Uri(scheme: 'tel', path: '01379696'));
                },
                child: Container(
                  padding: const EdgeInsets.all(kMarginMedium_3),
                  decoration: BoxDecoration(
                    border: Border.all(color: context.appColors.colorPrimary),
                    borderRadius: BorderRadius.circular(boxRadius),
                  ),
                  child: Image.asset(
                    AppImages.contactPhoneIcon,
                    width: iconLarge_2,
                    height: iconLarge_2,
                  ),
                ),
              ),
              const SizedBox(
                height: kMarginCardMedium,
              ),
              Text('Call Us',
                  style: context.appFonts.labelSmall()?.copyWith(
                        fontSize: 13.0,
                        color: context.appColors.colorPrimary,
                      ))
            ],
          ),
        ],
      ),
    );
  }
}

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              AppImages.contactLocationIcon,
              width: iconMedium_3,
              height: iconMedium_3,
            ),
            Text(
              'location'.tr(),
              style: context.appFonts.labelSmall(),
            ),
          ],
        ),
        const SizedBox(
          height: kMarginCardMedium_2,
        ),
        GestureDetector(
          onTap: () {
            launchUrl(Uri(scheme: 'tel', path: '01379696'));
          },
          child: Row(
            children: [
              Icon(
                Icons.phone_android,
                color: context.appColors.colorPrimary,
              ),
              const SizedBox(
                width: kMarginSmall,
              ),
              Text(
                'phone'.tr(),
                style: context.appFonts.labelSmall(),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: kMarginCardMedium_2,
        ),
        GestureDetector(
          onTap: () {
            launchUrl(Uri(scheme: 'tel', path: '01252373'));
          },
          child: Row(
            children: [
              Icon(
                Icons.fax_outlined,
                color: context.appColors.colorPrimary,
              ),
              const SizedBox(
                width: kMarginSmall,
              ),
              Text(
                'mobile_phone'.tr(),
                style: context.appFonts.labelSmall(),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: kMarginCardMedium_2,
        ),
        Row(
          children: [
            Image.asset(
              AppImages.contactMailIcon,
              width: iconMedium_2,
              height: iconMedium_2,
            ),
            const SizedBox(
              width: kMarginSmall,
            ),
            Expanded(
                child: Text(
              'mail'.tr(),
              style: context.appFonts.labelSmall(),
            )),
          ],
        ),
      ],
    );
  }
}


