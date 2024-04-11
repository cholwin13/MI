import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/dimens.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_slider.dart';
import 'marine_hull_time_screen.dart';
import 'marine_hull_voyage_screen.dart';

class MarineHullFormScreen extends StatefulWidget {
  const MarineHullFormScreen({super.key});

  @override
  State<MarineHullFormScreen> createState() => _MarineHullFormScreenState();
}

class _MarineHullFormScreenState extends State<MarineHullFormScreen> {
  final formKey = GlobalKey<FormState>();

  bool isLeftBtnSelected = true;
  bool isRightBtnSelected = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.generalMarineHullIcon,
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
                leftBtnTxt: 'marine_hull_time',
                rightBtnTxt: 'marine_hull_voyage',
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
                      ? const MarineHullTimeScreen()
                      : const MarineHullVoyageScreen())
            ],
          ),
        ),
      ),
    );
  }
}
