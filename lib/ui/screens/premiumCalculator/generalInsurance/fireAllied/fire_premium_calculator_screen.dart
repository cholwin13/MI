import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/dimens.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/card_view_vo.dart';
import '../../../../widgets/widget_navigable_grid_view.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import 'fire_form_screen.dart';

class FirePremiumCalculatorScreen extends StatelessWidget {
  const FirePremiumCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalFireAlliedIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: kMarginMedium_2,
          ),
          ProductInfoDetailTitleWidget(titleTxt: 'fire_and_allied_title'),
          Expanded(child: FireHomeWidget()),
        ],
      )
    );
  }
}

class FireHomeWidget extends StatefulWidget {
  const FireHomeWidget({super.key});

  @override
  State<FireHomeWidget> createState() => _FireHomeWidgetState();
}

class _FireHomeWidgetState extends State<FireHomeWidget> {
  final List<CardViewVO> cardList = [
    CardViewVO(
        AppImages.generalFireResidential, 'fire_residential', const FireFormScreen()),
    CardViewVO(
        AppImages.generalFireFactory, 'fire_factory', const FireFormScreen()),
    CardViewVO(
        AppImages.generalFireShop, 'fire_shop', const FireFormScreen()),
    CardViewVO(
        AppImages.generalFireWarehouse,  'fire_warehouse', const FireFormScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigableGridViewWidget(cardList: cardList);
  }
}

