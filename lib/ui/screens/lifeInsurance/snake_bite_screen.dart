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
import '../premiumCalculator/lifeInsurance/snakeBite/snake_bite_pc_screen.dart';
import 'widget/widget_two_column_txt.dart';
import 'widget/widget_square_indicator_row_txt.dart';

class SnakeBiteScreen extends StatelessWidget {
  const SnakeBiteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeSnakeBiteIcon,
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
                        titleTxt: 'snake_insurance',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      context.isEnglish
                          ? const SnakeBiteInsuranceEn()
                          : const SnakeBiteInsuranceMm(),
                    ],
                  )
              ),
            ),
          ),
          const CalculatorFloatingBtn(
            childWidget: SnakeBitePCScreen(),
          ),
        ],
      ),
    );
  }
}

class SnakeBiteInsuranceEn extends StatelessWidget {
  const SnakeBiteInsuranceEn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        LocalizedParagraphText(txt: AppStrings.educationTxtEn1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtEn1, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtEn2, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtEn3, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtEn4, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtEn5, paddingSize: 0.0, isLocalized: false,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermAge, txt2: AppStrings.snakeBiteTxtEn6,),
        TwoColumnTextWidget(txt1: AppStrings.seamanTxtEn2, txt2: AppStrings.snakeBiteTxtEn7,),
        TwoColumnTextWidget(txt1: AppStrings.shoreJobTxtEn8, txt2: AppStrings.snakeBiteTxtEn8,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermMaxSI, txt2: AppStrings.snakeBiteTxtEn10,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermPeriod, txt2: AppStrings.snakeBiteTxtEn11,),
        
        LocalizedParagraphText(txt: AppStrings.snakeBiteTxtEn12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        TwoColumnTextWidget(txt1: AppStrings.snakeBiteTxtEn13, txt2: AppStrings.snakeBiteTxtEn14,),
        TwoColumnTextWidget(txt1: AppStrings.snakeBiteTxtEn15, txt2: AppStrings.snakeBiteTxtEn16,),
        TwoColumnTextWidget(txt1: AppStrings.snakeBiteTxtEn17, txt2: AppStrings.snakeBiteTxtEn16,),
        TwoColumnTextWidget(txt1: AppStrings.snakeBiteTxtEn18_1, txt2: AppStrings.snakeBiteTxtEn16,),
        TwoColumnTextWidget(txt1: AppStrings.snakeBiteTxtEn18, txt2: AppStrings.snakeBiteTxtEn19,),
        
        LocalizedParagraphText(txt: AppStrings.snakeBiteTxtEn20, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonShortTermBenefit, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.snakeBiteTxtEn21, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtEn22, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtEn23, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtEn24, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtEn25, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtEn26, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtEn27, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtEn28, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.shoreJobTxtEn10, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.snakeBiteTxtEn29, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
      ],
    );
  }
}

class SnakeBiteInsuranceMm extends StatelessWidget {
  const SnakeBiteInsuranceMm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtMm1, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtMm2, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtMm3, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtMm4, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtMm5, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtMm6, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtMm7, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtMm8, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtMm9, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtMm10, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtMm11, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtMm12, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtMm13, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.snakeBiteTxtMm14, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.publicTxtMm12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
      ],
    );
  }
}
