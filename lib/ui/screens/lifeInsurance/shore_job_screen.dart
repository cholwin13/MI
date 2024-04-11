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
import '../premiumCalculator/lifeInsurance/shore_job/shore_job_pc_screen.dart';
import 'widget/widget_two_column_txt.dart';

class ShoreJobScreen extends StatelessWidget {
  const ShoreJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeShoreJobIcon,
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
                        titleTxt: 'shore_job_insurance',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      context.isEnglish
                          ? const ShoreJobTxtEn()
                          : const ShoreJobTxtMm(),
                    ],
                  )
              ),
            ),
          ),
          const CalculatorFloatingBtn(
            childWidget: ShoreJobPCScreen(),
          ),
        ],
      ),
    );
  }
}

class ShoreJobTxtEn extends StatelessWidget {
  const ShoreJobTxtEn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtEn1, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtEn2, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtEn3, paddingSize: 0.0, isLocalized: false,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermAge, txt2: AppStrings.shoreJobTxtEn4,),
        TwoColumnTextWidget(txt1: AppStrings.shoreJobTxtEn5, txt2: AppStrings.shoreJobTxtEn6,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermMaxSI, txt2: AppStrings.shoreJobTxtEn7,),
        TwoColumnTextWidget(txt1: AppStrings.shoreJobTxtEn8, txt2: AppStrings.shoreJobTxtEn9,),
        
        LocalizedParagraphText(txt: AppStrings.shoreJobTxtEn10, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtEn11, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtEn12, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtEn13, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtEn14, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.shoreJobTxtEn15, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.shoreJobTxtEn16, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtEn17, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtEn18, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtEn19, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtEn20, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtEn21, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtEn22, paddingSize: 0.0, isLocalized: false,),

        LocalizedParagraphText(txt: AppStrings.shoreJobTxtEn23, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
      ],
    );
  }
}

class ShoreJobTxtMm extends StatelessWidget {
  const ShoreJobTxtMm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtMm1, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtMm2, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtMm3, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtMm4, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtMm5, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtMm6, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtMm7, paddingSize: 0.0, isLocalized: false,),

        LocalizedParagraphText(txt: AppStrings.shoreJobTxtMm8, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtMm9, paddingSize: 0.0, isLocalized: false,),

        LocalizedParagraphText(txt: AppStrings.shoreJobTxtMm10, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtMm11, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtMm12, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtMm13, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtMm14, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.shoreJobTxtMm15, paddingSize: 0.0, isLocalized: false,),

        LocalizedParagraphText(txt: AppStrings.publicTxtMm12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
      ],
    );
  }
}
