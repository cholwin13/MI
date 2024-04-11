import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/dimens.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widget_slider.dart';
import 'critical_group_screen.dart';
import 'crtical_individual_screen.dart';

class CriticalIllnessPCScreen extends StatefulWidget {
  const CriticalIllnessPCScreen({super.key});

  @override
  State<CriticalIllnessPCScreen> createState() => _CriticalIllnessPCScreenState();
}

class _CriticalIllnessPCScreenState extends State<CriticalIllnessPCScreen> {
  bool isLeftBtnSelected = true;
  bool isRightBtnSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.lifeCriticalIcon,
            color: context.appColors.colorGold,
            width: iconMedium_3,
            height: iconMedium_3,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kMarginCardMedium_2, vertical: kMarginCardMedium_2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ProductInfoDetailTitleWidget(
                titleTxt: 'critical_insurance',
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
                      ? const CriticalIndividualScreen()
                      : const CriticalGroupScreen())
            ],
          ),
        )
    );
  }
}
