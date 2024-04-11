import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/ui/screens/premiumCalculator/generalInsurance/personalAccidentAndDisease/personal_accident_mmk_screen.dart';
import 'package:test_pj_mi/ui/screens/premiumCalculator/generalInsurance/personalAccidentAndDisease/personal_accident_usd_screen.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/dimens.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_slider.dart';

class PersonalAccidentPremiumCalculatorScreen extends StatefulWidget {
  const PersonalAccidentPremiumCalculatorScreen({super.key});

  @override
  State<PersonalAccidentPremiumCalculatorScreen> createState() => _PersonalAccidentPremiumCalculatorScreenState();
}

class _PersonalAccidentPremiumCalculatorScreenState extends State<PersonalAccidentPremiumCalculatorScreen> {
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
              leftBtnTxt: 'mmk_txt',
              rightBtnTxt: 'usd_txt',
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
                    ? const PersonalAccidentMMKScreen()
                    : const PersonalAccidentUSDScreen())
          ],
        ),
      ),
    );
  }
}
