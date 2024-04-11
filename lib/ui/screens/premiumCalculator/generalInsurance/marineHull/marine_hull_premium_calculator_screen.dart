import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/dimens.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/card_view_vo.dart';
import '../../../../widgets/widget_card_view.dart';
import 'marine_hull_form_screen.dart';

class MarineHullPremiumCalculatorScreen extends StatefulWidget {
  const MarineHullPremiumCalculatorScreen({super.key});

  @override
  State<MarineHullPremiumCalculatorScreen> createState() => _MarineHullPremiumCalculatorScreenState();
}

class _MarineHullPremiumCalculatorScreenState extends State<MarineHullPremiumCalculatorScreen> {
  final List<CardViewVO> marineCargoList = [
    CardViewVO(AppImages.generalMarineInlandCargo, 'marine_hull_inland', const MarineHullFormScreen()),

    CardViewVO(AppImages.generalMarineCoastCargo, 'marine_hull_oversea', const MarineHullFormScreen()),

    CardViewVO(AppImages.generalMarineInland, 'marine_hull_wooden', const MarineHullFormScreen()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.generalMarineIcon,
            color: context.appColors.colorGold,
            width: iconMedium_3,
            height: iconMedium_3,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kMarginMedium_2,
            vertical: kMarginCardMedium_2,
          ),
          child: Column(
            children: [
              const SizedBox(height: kMarginMedium,),
              Center(
                child: Text(
                  'marine_hull_and_machinery_title'.tr(),
                  style: context.appFonts.titleSmall()?.copyWith(
                      fontSize: textRegular),
                ),
              ),
              const SizedBox(height: kMarginMedium,),
              CardViewWidget(cardList: marineCargoList)
            ],
          ),
        )
    );
  }
}
