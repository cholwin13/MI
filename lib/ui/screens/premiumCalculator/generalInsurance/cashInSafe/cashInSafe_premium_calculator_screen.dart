import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/dimens.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_slider.dart';
import 'cash_in_safe_public_bank_screen.dart';
import 'cash_in_safe_public_business.dart';

class CashInSafePremiumCalculatorScreen extends StatefulWidget {
  const CashInSafePremiumCalculatorScreen({super.key});

  @override
  State<CashInSafePremiumCalculatorScreen> createState() => _CashInSafePremiumCalculatorScreenState();
}

class _CashInSafePremiumCalculatorScreenState extends State<CashInSafePremiumCalculatorScreen> {
  bool isLeftBtnSelected = true;
  bool isRightBtnSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalCashInSafeIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kMarginCardMedium_2,
          vertical: kMarginCardMedium_2,
        ),
        child: Column(
          children: [
            SliderWidget(
              leftBtnTxt: 'public_bank',
              rightBtnTxt: 'public_business',
              isSelectLeft: isLeftBtnSelected,
              onClick: (bool value) {
                setState(() {
                  isLeftBtnSelected = value;
                });
              },
            ),
            const SizedBox(
              height: kMarginLarge,
            ),
            Expanded(
                child: isLeftBtnSelected
                    ? const CashInSafePublicBankScreen()
                    : const CashInSafePublicBusiness())
          ],
        ),
      ),
    );
  }
}
