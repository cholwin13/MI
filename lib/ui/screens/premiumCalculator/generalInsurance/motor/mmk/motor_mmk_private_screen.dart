import 'package:flutter/material.dart';

import '../../../../../../helper/app_color.dart';
import '../../../../../../helper/app_images.dart';
import '../../../../../../helper/dimens.dart';
import '../../../../../widgets/app_bar_widget.dart';
import '../../../../../widgets/widget_slider.dart';
import 'motor_mmk_private_car_screen.dart';
import 'motor_mmk_private_truck_screen.dart';

class MotorMMKPrivateScreen extends StatefulWidget {
  const MotorMMKPrivateScreen({super.key});

  @override
  State<MotorMMKPrivateScreen> createState() => _MotorMMKPrivateScreenState();
}

class _MotorMMKPrivateScreenState extends State<MotorMMKPrivateScreen> {
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
              leftBtnTxt: 'motor_private_car',
              rightBtnTxt: 'motor_private_truck',
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
                    ? const MotorMMKPrivateCarScreen()
                    : const MotorMMKPrivateTruckScreen())
          ],
        ),
      ),
    );
  }
}
