import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../cashInTransit/cashInTransit_premium_calculator_screen.dart';

class TravelPremiumCalculatorScreen extends StatefulWidget {
  const TravelPremiumCalculatorScreen({super.key});

  @override
  State<TravelPremiumCalculatorScreen> createState() =>
      _TravelPremiumCalculatorScreenState();
}

class _TravelPremiumCalculatorScreenState
    extends State<TravelPremiumCalculatorScreen> {
  String travelTypes = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalTravelIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(
                height: kMarginMedium_2,
              ),
              const ProductInfoDetailTitleWidget(
                  titleTxt: 'travel_title'),
              const SizedBox(
                height: kMarginMedium_2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kMarginMedium,
                  vertical: kMarginCardMedium_2,
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: context.appColors.colorPrimary),
                    borderRadius: BorderRadius.circular(boxRadius_2),
                  ),
                  child: Column(
                    children: [
                      PremiumAndTypesWidget(
                        typesTxt: 'types_of_travel'.tr(),
                      ),
                      Divider(
                        color: context.appColors.colorPrimary,
                      ),
                      RadioListTile<String>(
                        title: RadioTitleTxtWidget(titleTxt: 'local_travel'.tr()),
                        value: '1',
                        groupValue: travelTypes,
                        onChanged: (value) {
                          setState(() {
                            travelTypes = value!;
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: RadioTitleTxtWidget(titleTxt: 'foreign_travel'.tr()),
                        value: '2',
                        groupValue: travelTypes,
                        onChanged: (value) {
                          setState(() {
                            travelTypes = value!;
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: RadioTitleTxtWidget(titleTxt: 'travel_title'.tr()),
                        value: '3',
                        groupValue: travelTypes,
                        onChanged: (value) {
                          setState(() {
                            travelTypes = value!;
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: RadioTitleTxtWidget(titleTxt: 'under_100_miles_travel'.tr()),
                        value: '4',
                        groupValue: travelTypes,
                        onChanged: (value) {
                          setState(() {
                            travelTypes = value!;
                          });
                        },
                      ),
                      const SizedBox(
                        height: kMarginMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          NextBtnWidget(
            onNextPressed: () {
              if(travelTypes == '1' || travelTypes == '2') {
                CustomNavigationHelper.router.push(
                    Routes.travelPClLocalPath.path,
                    );
              }else if(travelTypes == '3'){
                CustomNavigationHelper.router.push(
                  Routes.travelPath.path,
                );
              }else{
                CustomNavigationHelper.router.push(
                    Routes.travelPCUnderPath.path,
                );
              }
            },
            txt: 'next_btn_txt'.tr(),
          ),
        ],
      ),
    );
  }
}

class RadioTitleTxtWidget extends StatelessWidget {
  final String titleTxt;

  const RadioTitleTxtWidget({
    super.key, required this.titleTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Text(titleTxt, style: context.appFonts.bodySmall()?.copyWith(
      fontSize: 14.0
    ),);
  }
}
