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
import '../premiumCalculator/lifeInsurance/student/student_life_screen.dart';
import 'widget/widget_two_column_txt.dart';
import 'widget/widget_square_indicator_row_txt.dart';

class StudentScreen extends StatelessWidget {
  const StudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeStudentIcon,
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
                        titleTxt: 'student_insurance',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      context.isEnglish
                          ? const StudentTxtEn()
                          : const StudentTextMm(),
                    ],
                  )
              ),
            ),
          ),
          const CalculatorFloatingBtn(
            childWidget: StudentLifeScreen(),
          ),
        ],
      ),
    );
  }
}

class StudentTxtEn extends StatelessWidget {
  const StudentTxtEn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        LocalizedParagraphText(txt: AppStrings.studentTxtEn1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        TwoColumnTextWidget(txt1: AppStrings.studentTxtEn2, txt2: AppStrings.studentTxtEn3,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermAge, txt2: AppStrings.studentTxtEn4,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermMaxSI, txt2: AppStrings.studentTxtEn5,),
        TwoColumnTextWidget(txt1: AppStrings.govPersonShortTermPeriod, txt2: AppStrings.studentTxtEn6,),
        TwoColumnTextWidget(txt1: AppStrings.educationTxtEn8, txt2: AppStrings.studentTxtEn7,),
        TwoColumnTextWidget(txt1: AppStrings.educationTxtEn10, txt2: AppStrings.educationTxtEn11,),
        
        LocalizedParagraphText(txt: AppStrings.shortTermEndowmentTxtEn10, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtEn8, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        SizedBox(height: kMarginCardMedium,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtEn9, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        SizedBox(height: kMarginCardMedium,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtEn10, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        SizedBox(height: kMarginCardMedium,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtEn11, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        SizedBox(height: kMarginCardMedium,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtEn12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtEn13, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtEn14, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtEn15, paddingSize: kMarginLarge),
      ],
    );
  }
}

class StudentTextMm extends StatelessWidget {
  const StudentTextMm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm1, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm2, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm3, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm3_1, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm3_2, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm3_3, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm3_4, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm3_5, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm3_6, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm4, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.studentTxtMm4_1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtMm4_2, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtMm4_3, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtMm4_4, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm5, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.studentTxtMm5_1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtMm5_2, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtMm5_3, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtMm5_4, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm6, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.studentTxtMm6_1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtMm6_2, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm7, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.studentTxtMm7_1, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtMm7_2, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtMm7_3, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtMm7_4, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtMm7_5, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        LocalizedParagraphText(txt: AppStrings.studentTxtMm7_6, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.normal,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm8, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm9, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm10, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm11, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm12, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm13, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm14, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm15, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm16, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm17, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm18, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm19, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm20, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm21, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm22, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm23, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm24, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm25, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm26, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm27, paddingSize: 0.0, isLocalized: false,),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm27_1, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm27_2, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm27_3, paddingSize: kMarginLarge),
        SquareIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm27_4, paddingSize: kMarginLarge),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm28, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm29, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm30, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm31, paddingSize: 0.0, isLocalized: false,),
        
        ArrowIndicatorRowTextWidget(rowParaTxt: AppStrings.studentTxtMm32, paddingSize: 0.0, isLocalized: false,),
        LocalizedParagraphText(txt: AppStrings.publicTxtMm12, paddingSize: 0.0, isLocalized: false, fontWeight: FontWeight.bold,),
      ],
    );
  }
}
