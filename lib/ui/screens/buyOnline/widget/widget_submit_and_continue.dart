import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';

class SubmitAndContinueWidget extends StatefulWidget {
  final String parentScreenName;
  const SubmitAndContinueWidget({super.key, required this.parentScreenName});

  @override
  State<SubmitAndContinueWidget> createState() => _SubmitAndContinueWidgetState();
}

class _SubmitAndContinueWidgetState extends State<SubmitAndContinueWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kMarginCardMedium_2, vertical: kMarginCardMedium_2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(checkBoxRadius))),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
                checkColor: Colors.white,
                activeColor: context.appColors.colorPrimary,
              ),
              Text(
                AppStrings.termsAndConditions,
                style: context.appFonts.bodySmall()?.copyWith(
                  color: context.appColors.colorPrimary,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: kMarginCardMedium_2,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 16,
            child: TextButton(
              onPressed: () {
                if(widget.parentScreenName == 'Inbound'){
                  isChecked == true
                      ? CustomNavigationHelper.router
                      .push(Routes.inboundPassportInfoPath.path)
                      : null;
                }else if(widget.parentScreenName == 'OutboundMMK'){
                  isChecked == true
                      ? CustomNavigationHelper.router
                      .push(Routes.outboundMMKPassportInfoPath.path)
                      : null;
                }else if(widget.parentScreenName == 'OutboundUSD'){
                  isChecked == true
                      ? CustomNavigationHelper.router
                      .push(Routes.outboundPassportInfoPath.path)
                      : null;
                }else{
                  isChecked == true
                      ? CustomNavigationHelper.router
                      .push(Routes.seamanInsureInfoPath.path)
                      : null;
                }
              },
              style: isChecked == true
                  ? ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).primaryColor),
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(boxRadius_2),
                    )),
              )
                  : ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(boxRadius_2),
                    side: const BorderSide(
                        color: Colors
                            .grey), // Set border color to gray
                  ),
                ),
              ),
              child: Text(
                AppStrings.submitAndContinue,
                style: isChecked == true
                    ? context.appFonts.bodySmall()?.copyWith(
                  color: context.appColors.colorGold,
                )
                    : context.appFonts.bodySmall()?.copyWith(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}