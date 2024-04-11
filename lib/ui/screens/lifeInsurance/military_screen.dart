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

class MilitaryScreen extends StatelessWidget {
  const MilitaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeMilitaryPersonalIcon,
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
                        titleTxt: 'military_personal_life_insurance',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      context.isEnglish
                          ? const ArmyInsuranceEn()
                          : const ArmyInsuranceMm(),
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

class ArmyInsuranceEn extends StatelessWidget {
  const ArmyInsuranceEn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermPerson, txt2: AppStrings.armyTxtEn1,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermAge, txt2: AppStrings.armyTxtEn2,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermSI, txt2: AppStrings.govPersonShortTermSI1,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermMaxSI, txt2: AppStrings.govPersonShortTermMaxSI1,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermPeriod, txt2: AppStrings.armyTxtEn3,),
        
        LocalizedParagraphText(txt: AppStrings.armyTxtEn4, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.armyTxtEn5, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonShortTermBenefit, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonTextEn5, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
      ],
    );
  }
}

class ArmyInsuranceMm extends StatelessWidget {
  const ArmyInsuranceMm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.armyTxtMm1, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.armyTxtMm2, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.armyTxtMm3, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.armyTxtMm4, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.armyTxtMm5, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.armyTxtMm6, paddingSize: 0.0, isLocalized: false,),
        SizedBox(height: kMarginMedium_2,),
        
        LocalizedParagraphText(txt: AppStrings.armyTxtMm7, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm7_1, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm7_2, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm7_3, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm7_4, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm7_5, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm7_6, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm7_7, paddingSize: 0.0, isLocalized: false,),
        SizedBox(height: kMarginMedium_2,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonTxtMm7_1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm8_1, paddingSize: 0.0, isLocalized: false,),
        SizedBox(height: kMarginMedium_2,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonTxtMm7_2, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm9_1, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm9_2, paddingSize: 0.0, isLocalized: false,),
        SizedBox(height: kMarginMedium_2,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonTxtMm10, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm10_1, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm10_2, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm10_3, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm10_4, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm10_5, paddingSize: 0.0, isLocalized: false,),
        SizedBox(height: kMarginMedium_2,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonTxtMm7_4, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm11_1, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm11_2, paddingSize: 0.0, isLocalized: false,),
        SizedBox(height: kMarginMedium_2,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonTxtMm7_5, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm12_1, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm12_2, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm12_3, paddingSize: 0.0, isLocalized: false,),
        SizedBox(height: kMarginMedium_2,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonTxtMm7_6, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm13_1, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm13_2, paddingSize: 0.0, isLocalized: false,),
        SizedBox(height: kMarginMedium_2,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonTxtMm14, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm14_1, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm14_2, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm14_3, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm14_31, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm14_32, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm14_33, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm14_34, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm14_35, paddingSize: kMarginLarge),
        
        LocalizedParagraphText(txt: AppStrings.govPersonTxtMm14_36, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm14_4, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm14_41, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonTxtMm14_42, paddingSize: kMarginLarge),
      ],
    );
  }
}
