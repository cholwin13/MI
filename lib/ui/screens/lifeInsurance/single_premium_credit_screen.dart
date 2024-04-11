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
import 'widget/widget_square_indicator_row_txt.dart';

class SinglePremiumCreditScreen extends StatelessWidget {
  const SinglePremiumCreditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeSinglePremiumCreditIcon,
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
                        titleTxt: 'single_premium_credit_insurance',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      context.isEnglish
                          ? const SinglePremiumInsuranceEn()
                          : const SinglePremiumInsuranceMm(),
                    ],
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SinglePremiumInsuranceEn extends StatelessWidget {
  const SinglePremiumInsuranceEn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        LocalizedParagraphText(txt: AppStrings.sportManTxtEn1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtEn1, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.govPersonShortTermPerson, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtEn2, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.farmerTxtEn1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtEn3, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtEn4, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtEn5, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtEn6, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtEn7, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtEn8, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtEn9, paddingSize: 0.0, isLocalized: false,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermAge, txt2: AppStrings.singlePremiumTxtEn10,),
        TwoColumnTextWidget(txt1: AppStrings.sportManTxtEn8, txt2: AppStrings.singlePremiumTxtEn11,),
        TwoColumnTextWidget(txt1: AppStrings.singlePremiumTxtEn11_1, txt2: AppStrings.singlePremiumTxtEn12,),
        
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtEn12_1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtEn13, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonShortTermBenefit, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtEn14, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtEn15, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtEn16, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        SizedBox(height: kMarginCardMedium_2,),
        
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtEn17, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
      ],
    );
  }
}


class SinglePremiumInsuranceMm extends StatelessWidget {
  const SinglePremiumInsuranceMm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtMm1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm2, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.eductionTxtMm2, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm3, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtMm4, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm5, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm6, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm7, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm8, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm9, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm10, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm11, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm12, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm13, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtMm14, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm15, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm16, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm17, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtMm18, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtMm19, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtMm20, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtMm21, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtMm22, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm23, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtMm24, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm25, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm26, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm27, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm28, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtMm29, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm30, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm31, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm32, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm33, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm34, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm35, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm36, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.publicTxtMm12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
      ],
    );
  }
}
