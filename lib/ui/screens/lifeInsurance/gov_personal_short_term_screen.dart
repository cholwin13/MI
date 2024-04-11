import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';
import 'package:test_pj_mi/ui/screens/lifeInsurance/widget/widget_square_indicator_row_txt.dart';

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

class GovPersonalShortTermScreen extends StatelessWidget {
  const GovPersonalShortTermScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeGovPersonalShortTermIcon,
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
                      titleTxt: 'government_short_term_insurance',
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    context.isEnglish
                        ? const GovPersonalShortTermEn()
                        : const GovPersonalShortTermMm(),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class GovPersonalShortTermEn extends StatelessWidget {
  const GovPersonalShortTermEn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermPerson, txt2: AppStrings.govPersonShortTermPerson1,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermAge, txt2: AppStrings.govPersonShortTermAge1,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermSI, txt2: AppStrings.govPersonShortTermSI1,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermMaxSI, txt2: AppStrings.govPersonShortTermMaxSI1,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermPeriod, txt2: AppStrings.govPersonShortTermPeriod1,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonShortTermDesc, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonShortTermBenefit, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonShortTermBenefitDesc, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
      ],
    );
  }
}

class GovPersonalShortTermMm extends StatelessWidget {
  const GovPersonalShortTermMm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt1, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt2, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt2_1, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt2_2, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt2_3, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt2_4, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt3, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt4, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt5, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt6, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt7, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt8, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt9, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt10, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt11, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt12, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt13, paddingSize: 0.0, isLocalized: false,),
        SizedBox(height: kMarginMedium_2,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonShortTermMmTxt14, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt15, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt15_1, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt16, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt16_1, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt17, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt17_1, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt18, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt18_1, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt18_2, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt19, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt19_1, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt19_2, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt20, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt20_1, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt20_2, paddingSize: kMarginLarge),
        SizedBox(height: kMarginMedium_2,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonShortTermMmTxt21, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt22, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt23, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt24, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.govPersonShortTermMmTxt25, paddingSize: 0.0, isLocalized: false,),
      ],
    );
  }
}
