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

class PublicTermScreen extends StatelessWidget {
  const PublicTermScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifePublicTermIcon,
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
                        titleTxt: 'public_insurance',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      context.isEnglish
                          ? const PublicTermInsuranceEn()
                          : const PublicTermInsuranceMm(),
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

class PublicTermInsuranceEn extends StatelessWidget {
  const PublicTermInsuranceEn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermAge, txt2: AppStrings.publicTermTxtEn1,),
        TwoColumnTextWidget(txt1: AppStrings.seamanTxtEn2, txt2: AppStrings.publicTermTxtEn2,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermSI, txt2: AppStrings.publicTermTxtEn3,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermMaxSI, txt2: AppStrings.publicTermTxtEn4,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermPeriod, txt2: AppStrings.groupLifeTxtEn5,),
        
        LocalizedParagraphText(txt: AppStrings.publicTermTxtEn5, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.publicTermTxtEn6, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.govPersonShortTermBenefit, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.publicTermTxtEn7, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.publicTermTxtEn8, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.shoreJobTxtEn10, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.publicTermTxtEn9, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
      ],
    );
  }
}


class PublicTermInsuranceMm extends StatelessWidget {
  const PublicTermInsuranceMm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm1, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm2, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm3, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm4, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm5, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm6, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm7, paddingSize: 0.0, isLocalized: false,),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm8, paddingSize: kMarginLarge),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm9, paddingSize: kMarginLarge),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm10, paddingSize: 0.0, isLocalized: false,),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm11, paddingSize: kMarginLarge),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm12, paddingSize: kMarginLarge),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm13, paddingSize: kMarginLarge),
        Image.asset(AppImages.lifePublicTermTable),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm14, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm15, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm16, paddingSize: 0.0, isLocalized: false,),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm17, paddingSize: kMarginLarge),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm18, paddingSize: kMarginLarge),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm19, paddingSize: kMarginLarge),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm20, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm21, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm22, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm23, paddingSize: 0.0, isLocalized: false,),
        const SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm24, paddingSize: kMarginLarge),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm25, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm26, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm27, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm28, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm29, paddingSize: 0.0, isLocalized: false,),
        const LocalizedParagraphText(txt: AppStrings.publicTermTxtMm30, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm31, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm32, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm33, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm34, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm35, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm36, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm37, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm38, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm39, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm40, paddingSize: 0.0, isLocalized: false,),
        
        const ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.publicTermTxtMm41, paddingSize: 0.0, isLocalized: false,),
        const LocalizedParagraphText(txt: AppStrings.publicTxtMm12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
      ],
    );
  }
}
