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
import '../premiumCalculator/lifeInsurance/groupLife/group_life_screen.dart';
import 'widget/widget_two_column_txt.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeGroupIcon,
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
                        titleTxt: 'group_insurance',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      context.isEnglish
                          ? const GroupInsuranceEn()
                          : const GroupInsuranceMm(),
                    ],
                  )
              ),
            ),
          ),
          const CalculatorFloatingBtn(
              childWidget: GroupLifeScreen(),
          ),
        ],
      ),
    );
  }
}

class GroupInsuranceEn extends StatelessWidget {
  const GroupInsuranceEn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermAge, txt2: AppStrings.groupLifeTxtEn1,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermPerson, txt2: AppStrings.groupLifeTxtEn2,),
        TwoColumnTextWidget(txt1: AppStrings.seamanTxtEn2, txt2: AppStrings.groupLifeTxtEn3,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermMaxSI, txt2: AppStrings.groupLifeTxtEn4,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermPeriod, txt2: AppStrings.groupLifeTxtEn5,),
        
        LocalizedParagraphText(txt: AppStrings.shoreJobTxtEn10, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.groupLifeTxtEn6, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonShortTermBenefit, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.groupLifeTxtEn7, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtEn8, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtEn9, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.shoreJobTxtEn10, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtEn10, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtEn11, paddingSize: 0.0, isLocalized: false,),
      ],
    );
  }
}

class GroupInsuranceMm extends StatelessWidget {
  const GroupInsuranceMm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm1, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm2, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm3, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm4, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm5, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm6, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm7, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm8, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm9, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm10, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm11, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm12, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm13, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm14, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.groupLifeTxtMm15, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.publicTxtMm12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
      ],
    );
  }
}
