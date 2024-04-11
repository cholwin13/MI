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

class SinglePremiumEndowmentScreen extends StatelessWidget {
  const SinglePremiumEndowmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeSinglePremiumEndowmentIcon,
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
                        titleTxt: 'single_premium_insurance',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      context.isEnglish
                          ? const SinglePremiumEndowmentEn()
                          : const SinglePremiumEndowmentMm(),
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

class SinglePremiumEndowmentEn extends StatelessWidget {
  const SinglePremiumEndowmentEn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        const LocalizedParagraphText(txt: AppStrings.farmerTxtEn1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        const LocalizedParagraphText(txt: AppStrings.singlePremiumEndowmentTxtEn1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        const LocalizedParagraphText(txt: AppStrings.sportManTxtEn1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        const LocalizedParagraphText(txt: AppStrings.singlePremiumEndowmentTxtEn2, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        const TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermSI, txt2: AppStrings.singlePremiumEndowmentTxtEn3,),
        const TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermMaxSI, txt2: AppStrings.singlePremiumEndowmentTxtEn4,),
        const TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermPeriod, txt2: AppStrings.singlePremiumEndowmentTxtEn5,),
        const TwoColumnTextWidget(txt1: AppStrings.seamanTxtEn2, txt2: AppStrings.singlePremiumEndowmentTxtEn6,),
        
        const LocalizedParagraphText(txt: AppStrings.publicTermTxtEn5, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        const LocalizedParagraphText(txt: AppStrings.singlePremiumEndowmentTxtEn7, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        const LocalizedParagraphText(txt: AppStrings.govPersonShortTermBenefit, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtEn8, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtEn9, paddingSize: 0.0, isLocalized: false,),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtEn10, paddingSize: kMarginLarge),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtEn11, paddingSize: kMarginLarge),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtEn12, paddingSize: kMarginLarge),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtEn13, paddingSize: kMarginLarge),
        
        const LocalizedParagraphText(txt: AppStrings.singlePremiumEndowmentTxtEn14, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        const LocalizedParagraphText(txt: AppStrings.singlePremiumEndowmentTxtEn15, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        const SizedBox(height: kMarginCardMedium_2,),
        Image.asset(AppImages.lifeSinglePremiumEndowmentTable1),
        const SizedBox(height: kMarginCardMedium_2,),
        Image.asset(AppImages.lifeSinglePremiumEndowmentTable2),
        const SizedBox(height: kMarginCardMedium_2,),
        Image.asset(AppImages.lifeSinglePremiumEndowmentTable3),
      ],
    );
  }
}

class SinglePremiumEndowmentMm extends StatelessWidget {
  const SinglePremiumEndowmentMm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm2, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm1, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm2, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm3, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm4, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm5, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm6, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm7, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm8, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm9, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm10, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm11, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumTxtMm14, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm12, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt14, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm13, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm14, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm15, paddingSize: kMarginLargeX),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm16, paddingSize: kMarginLargeX),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm17, paddingSize: kMarginLargeX),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm18, paddingSize: kMarginLargeX),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm19, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm20, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm21, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm22, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm23, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm24, paddingSize: kMarginLargeX),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm25, paddingSize: kMarginLargeX),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.singlePremiumEndowmentTxtMm26, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt13, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.publicTxtMm12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
      ],
    );
  }
}
