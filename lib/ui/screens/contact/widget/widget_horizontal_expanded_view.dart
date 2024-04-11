import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/dimens.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import 'branches_modal.dart';

class HorizontalExpandedCardViewWidget extends StatelessWidget {
  final String region;
  final String location;
  final String contactNo;
  final Marker marker;

  const HorizontalExpandedCardViewWidget(
      {super.key,
      required this.region,
      required this.location,
      required this.contactNo,
        required this.marker,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        CustomNavigationHelper.router.push(
            Routes.branchesMapPath.path,
          extra: BranchData(region: region, location: location, contactNo: contactNo, marker: marker)
        );
      },
      child: Container(
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
              GestureDetector(
                onTap: (){
                  launchUrl(Uri(scheme: 'tel', path: contactNo));
                },
                child: Row(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
