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
import '../premiumCalculator/lifeInsurance/seamen/seamen_life_screen.dart';
import 'widget/widget_two_column_txt.dart';

class SeamanScreen extends StatelessWidget {
  const SeamanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeSeamanIcon,
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
                        titleTxt: 'seaman_insurance',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      context.isEnglish
                          ? const SeamanTxtEn()
                          : const SeamanTxtMm(),
                    ],
                  )
              ),
            ),
          ),
          const CalculatorFloatingBtn(
            childWidget: SeamanLifeScreen(),
          ),
        ],
      ),
    );
  }
}

class SeamanTxtEn extends StatelessWidget {
  const SeamanTxtEn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermAge, txt2: AppStrings.seamanTxtEn1,),
        TwoColumnTextWidget(txt1: AppStrings.seamanTxtEn2, txt2: AppStrings.seamanTxtEn3,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermMaxSI, txt2: AppStrings.seamanTxtEn4,),
        TwoColumnTextWidget(txt1: AppStrings.shoreJobTxtEn8, txt2: AppStrings.seamanTxtEn5,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.seamanTxtEn6, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.seamanTxtEn7, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        SizedBox(height: kMarginCardMedium,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonShortTermBenefit, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.seamanTxtEn8, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.seamanTxtEn9, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.seamanTxtEn10, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.seamanTxtEn11, paddingSize: 0.0, isLocalized: false,),
        SizedBox(height: kMarginCardMedium,),
        
        LocalizedParagraphText(txt: AppStrings.shoreJobTxtEn10, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        LocalizedParagraphText(txt: AppStrings.seamanTxtEn12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
      ],
    );
  }
}

class SeamanTxtMm extends StatelessWidget {
  const SeamanTxtMm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.seamanTxMm1, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.seamanTxMm2, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.seamanTxMm3, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.seamanTxMm4, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.seamanTxMm5, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.seamanTxMm6, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.seamanTxMm7, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.seamanTxMm8, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.seamanTxMm9, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.seamanTxMm10, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.seamanTxMm11, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.publicTxtMm12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
      ],
    );
  }
}
