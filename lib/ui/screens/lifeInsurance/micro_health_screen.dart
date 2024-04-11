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
import '../premiumCalculator/lifeInsurance/microHealth/micro_health_pc_screen.dart';

class MicroHealthScreen extends StatelessWidget {
  const MicroHealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeMicroIllnessIcon,
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
                        titleTxt: 'micro_health_insurance',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      context.isEnglish
                          ? const MicroHealthInsuranceEn()
                          : const MicroHealthInsuranceMm(),
                    ],
                  )
              ),
            ),
          ),
          const CalculatorFloatingBtn(
            childWidget: MicroHealthPCScreen(),
          ),
        ],
      ),
    );
  }
}

class MicroHealthInsuranceEn extends StatelessWidget {
  const MicroHealthInsuranceEn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.microHealthTxtEn1, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.microHealthTxtEn2, paddingSize: 0.0, isLocalized: false,),
        Image.asset(AppImages.lifeMicroTableEn1),
        const SizedBox(height: kMarginCardMedium_2,),
        Image.asset(AppImages.lifeMicroTableEn2),
      ],
    );
  }
}

class MicroHealthInsuranceMm extends StatelessWidget {
  const MicroHealthInsuranceMm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.microHealthTxtMm1, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.microHealthTxtMm2, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.microHealthTxtMm3, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.microHealthTxtMm4, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.microHealthTxtMm5, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.microHealthTxtMm6, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm15, paddingSize: 0.0, isLocalized: false,),
        Image.asset(AppImages.lifeMicroTableMm1),
        const SizedBox(height: kMarginCardMedium_2,),
        Image.asset(AppImages.lifeMicroTableMm2),
        const LocalizedParagraphText(txt: AppStrings.publicTxtMm12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
      ],
    );
  }
}
