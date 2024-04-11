import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/dimens.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widget_slider.dart';
import 'health_group_screen.dart';
import 'health_individual_screen.dart';

class HealthLifeScreen extends StatefulWidget {
  const HealthLifeScreen({super.key});

  @override
  State<HealthLifeScreen> createState() => _HealthLifeScreenState();
}

class _HealthLifeScreenState extends State<HealthLifeScreen> {
  bool isLeftBtnSelected = true;
  bool isRightBtnSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeHealthIcon,
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
            const ProductInfoDetailTitleWidget(
              titleTxt: 'health_insurance',
            ),
            const SizedBox(
              height: kMarginCardMedium_2,
            ),
            SliderWidget(
              leftBtnTxt: 'individual',
              rightBtnTxt: 'group',
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
                    ? const HealthIndividualScreen()
                    : const HealthGroupScreen())
          ],
        ),
      ),
    );
  }
}
