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

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeEducationIcon,
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
                        titleTxt: 'education_insurance',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      context.isEnglish
                          ? const EducationInsuranceEn()
                          : const EducationInsuranceMm(),
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

class EducationInsuranceEn extends StatelessWidget {
  const EducationInsuranceEn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        LocalizedParagraphText(txt: AppStrings.educationTxtEn1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.educationTxtEn2, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.educationTxtEn3, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        SizedBox(height: kMarginCardMedium,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermAge, txt2: AppStrings.educationTxtEn4,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermSI, txt2: AppStrings.educationTxtEn5,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermMaxSI, txt2: AppStrings.educationTxtEn6,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermPeriod, txt2: AppStrings.educationTxtEn7,),
        TwoColumnTextWidget(txt1: AppStrings.educationTxtEn8, txt2: AppStrings.educationTxtEn9,),
        TwoColumnTextWidget(txt1: AppStrings.educationTxtEn10, txt2: AppStrings.educationTxtEn11,),
        SizedBox(height: kMarginCardMedium,),
        
        LocalizedParagraphText(txt: AppStrings.shortTermEndowmentTxtEn10, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.educationTxtEn12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        SizedBox(height: kMarginCardMedium,),
        
        LocalizedParagraphText(txt: AppStrings.educationTxtEn13, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        SizedBox(height: kMarginCardMedium,),
        
        LocalizedParagraphText(txt: AppStrings.educationTxtEn14, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        SizedBox(height: kMarginCardMedium,),
        
        LocalizedParagraphText(txt: AppStrings.educationTxtEn15, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        SizedBox(height: kMarginCardMedium,),
        
        LocalizedParagraphText(txt: AppStrings.educationTxtEn16, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        SizedBox(height: kMarginCardMedium,),
        
        LocalizedParagraphText(txt: AppStrings.educationTxtEn17, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        SizedBox(height: kMarginCardMedium,),
        
        LocalizedParagraphText(txt: AppStrings.educationTxtEn18, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
      ],
    );
  }
}

class EducationInsuranceMm extends StatelessWidget {
  const EducationInsuranceMm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm1, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm2, paddingSize: 0.0, isLocalized: false,),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm2_1, paddingSize: kMarginLarge),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm2_2, paddingSize: kMarginLarge),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm3, paddingSize: 0.0, isLocalized: false,),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm3_1, paddingSize: kMarginLarge),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm3_2, paddingSize: kMarginLarge),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm3_3, paddingSize: kMarginLarge),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm3_4, paddingSize: kMarginLarge),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm3_5, paddingSize: kMarginLarge),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm4, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm5, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm6, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm7, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm8, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm9, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm10, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm11, paddingSize: 0.0, isLocalized: false,),
        Image.asset(AppImages.lifeEducationTable),
        const SizedBox(height: kMarginCardMedium,),
        
        const LocalizedParagraphText(txt: AppStrings.eductionTxtMm12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm13, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm14, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm15, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm16, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm17, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm18, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm19, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm20, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm21, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm22, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm23, paddingSize: 0.0, isLocalized: false,),
        const SizedBox(height: kMarginCardMedium,),
        
        const LocalizedParagraphText(txt: AppStrings.eductionTxtMm24, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm25, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm26, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm27, paddingSize: 0.0, isLocalized: false,),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm27_1, paddingSize: kMarginLarge),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm27_2, paddingSize: kMarginLarge),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm27_3, paddingSize: kMarginLarge),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm27_4, paddingSize: kMarginLarge),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm27_5, paddingSize: kMarginLarge),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm28, paddingSize: 0.0, isLocalized: false,),
        const SizedBox(height: kMarginCardMedium,),
        
        const LocalizedParagraphText(txt: AppStrings.eductionTxtMm29, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm30, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm31, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm32, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm33, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm34, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm35, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm36, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm37, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm38, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm39, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm40, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.eductionTxtMm41, paddingSize: 0.0, isLocalized: false,),
        const LocalizedParagraphText(txt: AppStrings.publicTxtMm12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
      ],
    );
  }
}

