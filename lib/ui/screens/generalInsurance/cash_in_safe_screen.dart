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
import '../premiumCalculator/generalInsurance/cashInSafe/cashInSafe_premium_calculator_screen.dart';

class CashInSafeScreen extends StatelessWidget {
  const CashInSafeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalCashInSafeIcon,
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
                        titleTxt: 'cash_in_safe_title',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'cash_in_safe_title_desc', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'cash_in_safe_purpose',
                        paddingSize: 0.0,
                      ),
                    ],
                  )),
            ),
          ),
          const CalculatorFloatingBtn(
            childWidget: CashInSafePremiumCalculatorScreen(),
          ),
        ],
      ),
    );
  }
}
