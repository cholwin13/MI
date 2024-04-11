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
import '../premiumCalculator/lifeInsurance/criitical/critical_illness_pc_screen.dart';

class CriticalIllnessScreen extends StatelessWidget {
  const CriticalIllnessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeCriticalIcon,
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
                        titleTxt: 'critical_insurance',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      context.isEnglish ? const CriticalIllnessInsuranceEn() : const CriticalIllnessInsuranceMm(),
                    ],
                  )
              ),
            ),
          ),
          const CalculatorFloatingBtn(
            childWidget: CriticalIllnessPCScreen(),
          ),
        ],
      ),
    );
  }
}

class CriticalIllnessInsuranceEn extends StatelessWidget {
  const CriticalIllnessInsuranceEn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.criticalIllnessTxtEn1, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.criticalIllnessTxtEn2, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.criticalIllnessTxtEn3, paddingSize: 0.0, isLocalized: false,),
        Image.asset(AppImages.lifeCriticalTableEn1),
        const SizedBox(height: kMarginCardMedium_2,),
        Image.asset(AppImages.lifeCriticalTableEn1),
      ],
    );
  }
}

class CriticalIllnessInsuranceMm extends StatelessWidget {
  const CriticalIllnessInsuranceMm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.criticalIllnessTxtMm1, paddingSize: 0.0,isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.criticalIllnessTxtMm2, paddingSize: 0.0,isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.criticalIllnessTxtMm3, paddingSize: 0.0,isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.criticalIllnessTxtMm4, paddingSize: 0.0,isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.criticalIllnessTxtMm5, paddingSize: 0.0,isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.criticalIllnessTxtMm6, paddingSize: 0.0,isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm15, paddingSize: 0.0,isLocalized: false,),
        Image.asset(AppImages.lifeCriticalTableMm1),
        const SizedBox(height: kMarginCardMedium_2,),
        Image.asset(AppImages.lifeCriticalTableMm2),
        const LocalizedParagraphText(txt: AppStrings.publicTxtMm12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,)
      ],
    );
  }
}
