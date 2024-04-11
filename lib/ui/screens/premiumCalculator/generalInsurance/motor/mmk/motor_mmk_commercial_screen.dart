import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../../helper/app_images.dart';
import '../../../../../../helper/dimens.dart';
import '../../../../../widgets/app_bar_widget.dart';
import '../../../../../widgets/widget_slider.dart';
import 'commercial_mmk_car_screen.dart';
import 'commercial_mmk_truck_screen.dart';

class MotorMMKCommercialScreen extends StatefulWidget {
  const MotorMMKCommercialScreen({super.key});

  @override
  State<MotorMMKCommercialScreen> createState() => _MotorMMKCommercialScreenState();
}

class _MotorMMKCommercialScreenState extends State<MotorMMKCommercialScreen> {
  bool isLeftBtnSelected = true;
  bool isRightBtnSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              leftBtnTxt: 'commercial_car',
              rightBtnTxt: 'commercial_truck',
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
                    ? const CommercialMMKCarScreen()
                    : const CommercialCarTruck())
          ],
        ),
      ),
    );
  }
}
