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

class SmartSavingScreen extends StatelessWidget {
  const SmartSavingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeSmartSavingIcon,
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
                        titleTxt: 'smart_saving_insurance',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      context.isEnglish
                          ? const SmartSavingInsuranceEn()
                          : const SmartSavingInsuranceMm(),
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

class SmartSavingInsuranceEn extends StatelessWidget {
  const SmartSavingInsuranceEn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        LocalizedParagraphText(txt: AppStrings.farmerTxtEn1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.smartSavingTxtEn1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.smartSavingTxtEn2, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtEn4, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.smartSavingTxtEn3, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.smartSavingTxtEn4, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.smartSavingTxtEn5, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonShortTermAge, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.smartSavingTxtEn6, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.singlePremiumTxtEn6, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.smartSavingTxtEn7, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonShortTermBenefit, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.smartSavingTxtEn8, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtEn12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.smartSavingTxtEn9, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.sportManTxtEn8, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.smartSavingTxtEn10, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.smartSavingTxtEn11, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.smartSavingTxtEn12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
      ],
    );
  }
}

class SmartSavingInsuranceMm extends StatelessWidget {
  const SmartSavingInsuranceMm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        LocalizedParagraphText(txt: AppStrings.smartSavingTxtMm1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.smartSavingTxtMm2, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.smartSavingTxtMm3, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.smartSavingTxtMm4, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.eductionTxtMm2, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.smartSavingTxtMm6, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.smartSavingTxtMm7, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.smartSavingTxtMm8, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.smartSavingTxtMm9, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.smartSavingTxtMm10, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.smartSavingTxtMm11, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.smartSavingTxtMm12, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.smartSavingTxtMm13, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.smartSavingTxtMm14, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.smartSavingTxtMm15, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.smartSavingTxtMm16, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.smartSavingTxtMm17, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.publicTxtMm12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
      ],
    );
  }
}


