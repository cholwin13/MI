import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/ui/screens/premiumCalculator/generalInsurance/fidelity/public_bank_screen.dart';
import 'package:test_pj_mi/ui/screens/premiumCalculator/generalInsurance/fidelity/public_business_screen.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/dimens.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_slider.dart';

class FidelityPremiumCalculatorScreen extends StatefulWidget {
  const FidelityPremiumCalculatorScreen({super.key});

  @override
  State<FidelityPremiumCalculatorScreen> createState() => _FidelityPremiumCalculatorScreenState();
}

class _FidelityPremiumCalculatorScreenState extends State<FidelityPremiumCalculatorScreen> {
  bool isLeftBtnSelected = true;
  bool isRightBtnSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalFidelityIcon,
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
                    ? const PublicBankScreen()
                    : const PublicBusinessScreen())
          ],
        ),
      ),
    );
  }
}
