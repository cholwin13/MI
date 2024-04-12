import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';

class BuyOnlineBuildTwoButtonRowWidget extends StatelessWidget {
  final Function() continuePressed;
  final Function() enquiryPressed;

  const BuyOnlineBuildTwoButtonRowWidget({
    super.key,
    required this.continuePressed,
    required this.enquiryPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kMarginCardMedium_2, vertical: kMarginCardMedium_2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 12,
              child: TextButton(
                onPressed: continuePressed,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColor),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        boxRadius_2), // Adjust the border radius to match FloatingActionButton
                  )),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      AppImages.generalInboundCart,
                      width: 24,
                      height: 24,
                    ),
                    Flexible(
                      child: Text(
                        AppStrings.continueAndBuy,
                        style: context.appFonts.bodySmall()?.copyWith(
                          color: context.appColors.colorGold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: kMarginCardMedium_2),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 12,
              child: TextButton(
                // onPressed: () {
                //   CustomNavigationHelper.router.push(Routes.inboundEnquiryPath.path);
                // },
                onPressed: enquiryPressed,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColor),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(boxRadius_2),
                  )),
                ),
                child: Text(
                  AppStrings.enquiryAndPrintCertificate,
                  style: context.appFonts.bodySmall()?.copyWith(
                    color: context.appColors.colorGold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}