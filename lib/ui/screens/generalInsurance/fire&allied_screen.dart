import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_calculator_floating_btn.dart';
import '../../widgets/widget_localized_paragraph_txt.dart';
import '../../widgets/widget_product_info_detail_title.dart';
import '../../widgets/widget_arrow_indicator_row_txt.dart';
import '../premiumCalculator/generalInsurance/fireAllied/fire_premium_calculator_screen.dart';

class FireAndAlliedScreen extends StatelessWidget {
  const FireAndAlliedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalFireAlliedIcon,
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
                      titleTxt: 'fire_and_allied_title',
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    LocalizedParagraphText(txt: 'fire_title_1', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                    LocalizedParagraphText(txt: 'fire_title_2', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                    const LocalizedParagraphText(
                      txt: 'fire_para_1',
                      paddingSize: 0.0,
                    ),
                    const LocalizedParagraphText(
                      txt: 'fire_para_2',
                      paddingSize: 0.0,
                    ),
                    const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'fire_para_2_1',
                        paddingSize: kMarginMedium,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'fire_para_2_2',
                      paddingSize: kMarginMedium,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'fire_para_2_3',
                      paddingSize: kMarginMedium,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'fire_para_2_4',
                      paddingSize: kMarginMedium,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'fire_para_2_5',
                      paddingSize: kMarginMedium,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'fire_para_2_6',
                      paddingSize: kMarginMedium,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'fire_para_2_7',
                      paddingSize: kMarginMedium,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'fire_para_2_8',
                      paddingSize: kMarginMedium,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'fire_para_2_9',
                      paddingSize: kMarginMedium,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'fire_para_2_10',
                      paddingSize: kMarginMedium,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'fire_para_2_11',
                      paddingSize: kMarginMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const CalculatorFloatingBtn(
            childWidget: FirePremiumCalculatorScreen(),
          ),
        ],
      ),
    );
  }
}