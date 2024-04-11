import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/ui/screens/premiumCalculator/generalInsurance/motor/usd/motor_usd_commercial_screen.dart';
import 'package:test_pj_mi/ui/screens/premiumCalculator/generalInsurance/motor/usd/motor_usd_cycle_screen.dart';
import 'package:test_pj_mi/ui/screens/premiumCalculator/generalInsurance/motor/usd/motor_usd_private_screen.dart';
import 'package:test_pj_mi/ui/screens/premiumCalculator/generalInsurance/motor/usd/motot_usd_mobile_plant_screen.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/dimens.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/card_view_vo.dart';
import '../../../../widgets/widget_navigable_grid_view.dart';
import '../../../../widgets/widget_slider.dart';
import 'mmk/motor_mmk_commercial_screen.dart';
import 'mmk/motor_mmk_cycle_screen.dart';
import 'mmk/motor_mmk_mobile_plant_screen.dart';
import 'mmk/motor_mmk_private_screen.dart';
import 'mmk/motor_mmk_social_screen.dart';

class MotorPremiumCalculatorScreen extends StatefulWidget {
  const MotorPremiumCalculatorScreen({super.key});

  @override
  State<MotorPremiumCalculatorScreen> createState() => _MotorPremiumCalculatorScreenState();
}

class _MotorPremiumCalculatorScreenState extends State<MotorPremiumCalculatorScreen> {
  bool isLeftBtnSelected = true;

  final List<CardViewVO> motorMMKList = [
    CardViewVO(AppImages.generalMotorPrivate, 'motor_private', const MotorMMKPrivateScreen()),
    CardViewVO(AppImages.generalMotorCommercial, 'motor_commercial', const MotorMMKCommercialScreen()),
    CardViewVO(AppImages.generalMotorMobile, 'motor_mobile_plant', const MotorMMKMobilePlantScreen()),
    CardViewVO(AppImages.generalMotorCycle, 'motor_motor_cycle', const MotorMMKCycleScreen()),
    CardViewVO(AppImages.generalMotorSocial, 'motor_social', const MotorMMKSocialScreen()),
  ];

  final List<CardViewVO> motorUSDList = [
    CardViewVO(AppImages.generalMotorPrivate, 'motor_private', const MotorUSDPrivateScreen()),
    CardViewVO(AppImages.generalMotorCommercial, 'motor_commercial', const MotorUSDCommercialScreen()),
    CardViewVO(AppImages.generalMotorMobile, 'motor_mobile_plant', const MotorUSDMobilePlantScreen()),
    CardViewVO(AppImages.generalMotorCycle, 'motor_motor_cycle', const MotorUSDCycleScreen()),
  ];

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
            Expanded(child: NavigableGridViewWidget(cardList: isLeftBtnSelected ? motorMMKList : motorUSDList))
          ],
        ),
      ),
    );
  }
}
