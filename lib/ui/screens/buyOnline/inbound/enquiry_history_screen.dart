import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_product_info_detail_title.dart';
import '../../lifeInsurance/widget/widget_two_column_txt.dart';

class EnquiryHistoryScreen extends StatefulWidget {
  final String screenName;

  const EnquiryHistoryScreen({super.key, required this.screenName});

  @override
  State<EnquiryHistoryScreen> createState() =>
      _EnquiryHistoryScreenState();
}

class _EnquiryHistoryScreenState
    extends State<EnquiryHistoryScreen> {
  final String name = 'Daw Hla Hla';
  final List<Map<String, dynamic>> purchaseHistoryList = [
    {"insureName": 'Kyaw Myint Htun', "Age": 61},
    {"insureName": 'John', "Age": 16},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalInboundIcon,
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
            ProductInfoDetailTitleWidget(
              // titleTxt: 'inbound_title',
              titleTxt: widget.screenName == 'inbound'
                  ? 'inbound_title'
                  : 'outbound_travel_accident_insurance',
            ),
            const SizedBox(
              height: kMarginCardMedium,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: purchaseHistoryList.length,
                itemBuilder: (BuildContext context, int index) {
                  final purchase = purchaseHistoryList[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: kMarginLarge),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(kMarginCardMedium_2),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: context.appColors.colorPrimary,
                        ),
                        borderRadius: BorderRadius.circular(boxRadius),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TwoColumnTextWidget(
                            txt1: AppStrings.no,
                            txt2: '${index + 1}',
                            textColor: context.appColors.colorPrimary,
                            lftFontWeight: FontWeight.bold,
                            fontSize: textRegular,
                          ),
                          TwoColumnTextWidget(
                            txt1: AppStrings.insureName,
                            txt2: purchase['insureName'] ?? '',
                            textColor: context.appColors.colorPrimary,
                            lftFontWeight: FontWeight.bold,
                            fontSize: textRegular,
                          ),
                          TwoColumnTextWidget(
                            txt1: AppStrings.age,
                            txt2: purchase['Age'].toString(),
                            textColor: context.appColors.colorPrimary,
                            lftFontWeight: FontWeight.bold,
                            fontSize: textRegular,
                          ),
                          TwoColumnTextWidget(
                            txt1: AppStrings.contactNo,
                            txt2: purchase['Age'].toString(),
                            textColor: context.appColors.colorPrimary,
                            lftFontWeight: FontWeight.bold,
                            fontSize: textRegular,
                          ),
                          TwoColumnTextWidget(
                            txt1: AppStrings.coveragePlan,
                            txt2: purchase['Age'].toString(),
                            textColor: context.appColors.colorPrimary,
                            lftFontWeight: FontWeight.bold,
                            fontSize: textRegular,
                          ),
                          TwoColumnTextWidget(
                            txt1: AppStrings.premiumAmountMMK,
                            txt2: purchase['Age'].toString(),
                            textColor: context.appColors.colorPrimary,
                            lftFontWeight: FontWeight.bold,
                            fontSize: textRegular,
                          ),
                          SizedBox(
                            height: kMarginLarge_2,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                context.appColors.colorPrimary,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(boxRadius),
                                ),
                              ),
                              onPressed: () {
                                // Action on button press
                              },
                              child: Text(
                                'Download',
                                style:
                                context.appFonts.bodySmall()?.copyWith(
                                  color: context.appColors.colorGold,
                                  fontSize: textSmall,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

