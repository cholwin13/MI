import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_calculator_floating_btn.dart';
import '../../widgets/widget_localized_paragraph_txt.dart';
import '../../widgets/widget_arrow_indicator_row_txt.dart';
import '../../widgets/widget_product_info_detail_title.dart';
import '../premiumCalculator/generalInsurance/motor/motor_premium_calculator_screen.dart';

class MotorScreen extends StatelessWidget {
  const MotorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalMotorIcon,
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
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductInfoDetailTitleWidget(
                      titleTxt: 'motor_title',
                    ),
                    SizedBox(
                      height: kMarginCardMedium,
                    ),
                    LocalizedParagraphText(
                      txt: 'motor_para_1',
                      paddingSize: 0.0,
                    ),
                    LocalizedParagraphText(
                      txt: 'motor_para_2',
                      paddingSize: 0.0,
                    ),
                    LocalizedParagraphText(
                      txt: 'motor_para_2_a',
                      paddingSize: kMarginMedium_2,
                    ),
                    ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'motor_para_2_a_1',
                        paddingSize: kMarginMedium),
                    ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'motor_para_2_a_2',
                        paddingSize: kMarginMedium),
                    ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'motor_para_2_a_3',
                        paddingSize: kMarginMedium),
                    ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'motor_para_2_a_4',
                        paddingSize: kMarginMedium),
                    ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'motor_para_2_a_5',
                        paddingSize: kMarginMedium),
                    ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'motor_para_2_a_6',
                        paddingSize: kMarginMedium),
                    LocalizedParagraphText(
                      txt: 'motor_para_2_b',
                      paddingSize: kMarginMedium_2,
                    ),
                    ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'motor_para_2_b_1',
                        paddingSize: kMarginMedium),
                    ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'motor_para_2_b_2',
                        paddingSize: kMarginMedium),
                    LocalizedParagraphText(
                      txt: 'motor_para_3',
                      paddingSize: 0.0,
                    ),
                    ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'motor_para_3_a', paddingSize: 0.0),
                  ],
                ),
              ),
            ),
          ),
          const CalculatorFloatingBtn(childWidget: MotorPremiumCalculatorScreen(),),
        ],
      ),
    );
  }
}
