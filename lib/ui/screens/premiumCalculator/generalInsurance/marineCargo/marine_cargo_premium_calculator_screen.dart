import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/dimens.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/card_view_vo.dart';
import '../../../../widgets/widget_card_view.dart';
import 'inland_cargo_screen.dart';
import 'marine_coast_cargo_screen.dart';

class MarineCargoPremiumCalculatorScreen extends StatefulWidget {
  const MarineCargoPremiumCalculatorScreen({super.key});

  @override
  State<MarineCargoPremiumCalculatorScreen> createState() => _MarineCargoPremiumCalculatorScreenState();
}

class _MarineCargoPremiumCalculatorScreenState extends State<MarineCargoPremiumCalculatorScreen> {
  final List<CardViewVO> marineCargoList = [
    CardViewVO(AppImages.generalMarineInlandCargo, 'inland_cargo', const InlandCargoScreen()),

    CardViewVO(AppImages.generalMarineCoastCargo, 'marine_coast_cargo', const MarineCoastCargoScreen()),

    CardViewVO(AppImages.generalMarineInland, 'marine_inland_cargo', const MarineCoastCargoScreen()),
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
                'marine_cargo_title'.tr(),
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
