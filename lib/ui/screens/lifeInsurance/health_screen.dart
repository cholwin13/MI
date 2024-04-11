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
import '../premiumCalculator/lifeInsurance/health/health_life_screen.dart';

class HealthScreen extends StatelessWidget {
  const HealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeHealthIcon,
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
                        titleTxt: 'health_insurance',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      context.isEnglish
                          ? const HealthInsuranceEn()
                          : const HealthInsuranceMm(),
                    ],
                  )
              ),
            ),
          ),
          const CalculatorFloatingBtn(
            childWidget: HealthLifeScreen(),
          ),
        ],
      ),
    );
  }
}

class HealthInsuranceEn extends StatelessWidget {
  const HealthInsuranceEn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.healthTxtEn1, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.healthTxtEn2, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.healthTxtEn3, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.healthTxtEn4, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.healthTxtEn5, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.healthTxtEn6, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.healthTxtEn7, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.healthTxtEn8, paddingSize: 0.0, isLocalized: false,),
        Image.asset(AppImages.lifeHealthEnTable2),
        Image.asset(AppImages.lifeHealthEnTable3),
        const SizedBox(height: kMarginCardMedium,),
        Image.asset(AppImages.lifeHealthEnTable1),
        const SizedBox(height: kMarginCardMedium,),
        Image.asset(AppImages.lifeHealthEnTable),
        const SizedBox(height: kMarginCardMedium,),
        
        const LocalizedParagraphText(txt: AppStrings.healthTxtEn9, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        const SizedBox(height: kMarginCardMedium,),
        
        const LocalizedParagraphText(txt: AppStrings.healthTxtEn10, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        const SizedBox(height: kMarginCardMedium,),
        
        const LocalizedParagraphText(txt: AppStrings.healthTxtEn11, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
      ],
    );
  }
}

class HealthInsuranceMm extends StatelessWidget {
  const HealthInsuranceMm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.healthTxtMm1, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.healthTxtMm2, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.healthTxtMm3, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.healthTxtMm4, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.healthTxtMm5, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.healthTxtMm6, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.healthTxtMm7, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.healthTxtMm8, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm15, paddingSize: 0.0, isLocalized: false,),
        Image.asset(AppImages.lifeHealthMmTable3),
        Image.asset(AppImages.lifeHealthMmTable4),
        const SizedBox(height: kMarginCardMedium_2,),
        Image.asset(AppImages.lifeHealthMmTable1),
        Image.asset(AppImages.lifeHealthMmTable2),
        const SizedBox(height: kMarginCardMedium_2,),
        Image.asset(AppImages.lifeHealthMmTable),
        
        const LocalizedParagraphText(txt: AppStrings.publicTxtMm12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
      ],
    );
  }
}
