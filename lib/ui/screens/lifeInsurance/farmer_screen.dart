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
import '../premiumCalculator/lifeInsurance/farmer/farmer_life_screen.dart';
import 'widget/widget_two_column_txt.dart';

class FarmerScreen extends StatelessWidget {
  const FarmerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeFarmerIcon,
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
                        titleTxt: 'farmer_insurance',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      context.isEnglish
                          ? const FarmerInsuranceEn()
                          : const FarmerInsuranceMm(),
                    ],
                  )
              ),
            ),
          ),
          const CalculatorFloatingBtn(
            childWidget: FarmerLifeScreen(),
          ),
        ],
      ),
    );
  }
}

class FarmerInsuranceEn extends StatelessWidget {
  const FarmerInsuranceEn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TwoColumnTextWidget(txt1: AppStrings.farmerTxtEn1, txt2: AppStrings.farmerTxtEn2,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermAge, txt2: AppStrings.farmerTxtEn3,),
        TwoColumnTextWidget(txt1: AppStrings.farmerTxtEn4, txt2: AppStrings.farmerTxtEn5,),
        TwoColumnTextWidget(txt1: AppStrings.seamanTxtEn2, txt2: AppStrings.farmerTxtEn6,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonShortTermBenefit, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.farmerTxtEn7, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.farmerTxtEn8, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
      ],
    );
  }
}

class FarmerInsuranceMm extends StatelessWidget {
  const FarmerInsuranceMm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.farmerTxtMm1, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.farmerTxtMm2, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.farmerTxtMm3, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.farmerTxtMm4, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.farmerTxtMm5, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.farmerTxtMm6, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.farmerTxtMm7, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.farmerTxtMm8, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.farmerTxtMm9, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.farmerTxtMm10, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.publicTxtMm12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
      ],
    );
  }
}

