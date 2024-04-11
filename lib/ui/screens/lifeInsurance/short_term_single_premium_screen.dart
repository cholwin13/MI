import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../helper/app_images.dart';
import '../../../helper/app_strings.dart';
import '../../../helper/dimens.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_arrow_indicator_row_txt.dart';
import '../../widgets/widget_calculator_floating_btn.dart';
import '../../widgets/widget_localized_paragraph_txt.dart';
import '../../widgets/widget_product_info_detail_title.dart';
import 'widget/widget_two_column_txt.dart';

class ShortTermSinglePremiumScreen extends StatelessWidget {
  const ShortTermSinglePremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeShortTermSinglePremiumIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.all(kMarginMedium_3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ProductInfoDetailTitleWidget(
                        titleTxt: 'short_term_single_premium_insurance',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      context.isEnglish
                          ? const ShortTermSinglePremiumInsuranceEn()
                          : const ShortTermSinglePremiumInsuranceMm(),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class ShortTermSinglePremiumInsuranceEn extends StatelessWidget {
  const ShortTermSinglePremiumInsuranceEn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LocalizedParagraphText(
          txt: AppStrings.farmerTxtEn1,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.bold,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtEn1,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtEn2,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        LocalizedParagraphText(
          txt: AppStrings.singlePremiumTxtEn4,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.bold,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtEn3,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        LocalizedParagraphText(
          txt: AppStrings.singlePremiumTxtEn6,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.bold,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtEn4,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        LocalizedParagraphText(
          txt: AppStrings.singlePremiumTxtEn8,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.bold,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.singlePremiumTxtEn9,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        TwoColumnTextWidget(
          txt1: AppStrings.govPersonShortTermAge,
          txt2: AppStrings.shortTermSinglePremiumTxtEn7,
        ),
        TwoColumnTextWidget(
          txt1: AppStrings.sportManTxtEn8,
          txt2: AppStrings.shortTermSinglePremiumTxtEn8,
        ),
        TwoColumnTextWidget(
          txt1: AppStrings.singlePremiumTxtEn11_1,
          txt2: AppStrings.shortTermSinglePremiumTxtEn9,
        ),
        LocalizedParagraphText(
          txt: AppStrings.shortTermSinglePremiumTxtEn10,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.bold,
        ),
        LocalizedParagraphText(
          txt: AppStrings.shortTermSinglePremiumTxtEn11,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.normal,
        ),
        LocalizedParagraphText(
          txt: AppStrings.govPersonShortTermBenefit,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.bold,
        ),
        LocalizedParagraphText(
          txt: AppStrings.singlePremiumTxtEn14,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.normal,
        ),
        LocalizedParagraphText(
          txt: AppStrings.singlePremiumTxtEn15,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.normal,
        ),
        LocalizedParagraphText(
          txt: AppStrings.singlePremiumTxtEn16,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(
          height: kMarginCardMedium,
        ),
        LocalizedParagraphText(
          txt: AppStrings.shortTermSinglePremiumTxtEn12,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.normal,
        ),
      ],
    );
  }
}

class ShortTermSinglePremiumInsuranceMm extends StatelessWidget {
  const ShortTermSinglePremiumInsuranceMm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LocalizedParagraphText(
          txt: AppStrings.singlePremiumTxtMm1,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.normal,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm1,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        LocalizedParagraphText(
          txt: AppStrings.eductionTxtMm2,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.normal,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm2,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm3,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        LocalizedParagraphText(
          txt: AppStrings.shortTermSinglePremiumTxtMm4,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.normal,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm5,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm6,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm7,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm8,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm9,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm10,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        LocalizedParagraphText(
          txt: AppStrings.shortTermSinglePremiumTxtMm11,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.normal,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm12,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm13,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        LocalizedParagraphText(
          txt: AppStrings.singlePremiumTxtMm14,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.normal,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm14,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm15,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm16,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm17,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm18,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm19,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm20,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        LocalizedParagraphText(
          txt: AppStrings.singlePremiumTxtMm18,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.normal,
        ),
        LocalizedParagraphText(
          txt: AppStrings.singlePremiumTxtMm19,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.normal,
        ),
        LocalizedParagraphText(
          txt: AppStrings.singlePremiumTxtMm20,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.normal,
        ),
        LocalizedParagraphText(
          txt: AppStrings.singlePremiumTxtMm21,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.normal,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm21,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        LocalizedParagraphText(
          txt: AppStrings.govPersonShortTermMmTxt14,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.normal,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm22,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm23,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        LocalizedParagraphText(
          txt: AppStrings.shortTermSinglePremiumTxtMm24,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.normal,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm25,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm26,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm27,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm28,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm29,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        ArrowIndicatorRowTextWidget(
          rowParaTxt: AppStrings.shortTermSinglePremiumTxtMm30,
          paddingSize: 0.0,
          isLocalized: false,
        ),
        LocalizedParagraphText(
          txt: AppStrings.publicTxtMm12,
          paddingSize: 0.0,
          isLocalized: false,
          fontWeight: FontWeight.normal,
        ),
      ],
    );
  }
}
