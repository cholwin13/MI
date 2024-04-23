import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../helper/app_images.dart';
import '../../../helper/app_strings.dart';
import '../../../helper/dimens.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_product_info_detail_title.dart';
import '../lifeInsurance/widget/widget_two_column_txt.dart';

class TPLPrintCertificateHistoryScreen extends StatefulWidget {
  const TPLPrintCertificateHistoryScreen({super.key});

  @override
  State<TPLPrintCertificateHistoryScreen> createState() => _TPLPrintCertificateHistoryScreenState();
}

class _TPLPrintCertificateHistoryScreenState extends State<TPLPrintCertificateHistoryScreen> {
  final List<Map<String, dynamic>> purchaseHistoryList = [
    {"periodFrom": '2011-11-01', "periodTo": '2011-11-01'},
    {"periodFrom": '2011-11-01', "periodTo": '2011-11-01'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.homePrintCertificate,
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
            const ProductInfoDetailTitleWidget(
              titleTxt: AppStrings.premiumHistory,
              isLocalized: false,
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
                            txt1: 'Vehicle No.',
                            txt2: '${index + 1}',
                            textColor: context.appColors.colorPrimary,
                            lftFontWeight: FontWeight.w700,
                            fontSize: textRegular,
                          ),
                          TwoColumnTextWidget(
                            txt1: 'Period From',
                            txt2: purchase['periodFrom'] ?? '',
                            textColor: context.appColors.colorPrimary,
                            lftFontWeight: FontWeight.w700,
                            fontSize: textRegular,
                          ),
                          TwoColumnTextWidget(
                            txt1: 'Period To',
                            txt2: purchase['periodTo'] ?? '',
                            textColor: context.appColors.colorPrimary,
                            lftFontWeight: FontWeight.w700,
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
