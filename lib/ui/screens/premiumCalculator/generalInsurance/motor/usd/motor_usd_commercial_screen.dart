import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../../helper/app_images.dart';
import '../../../../../../helper/dimens.dart';
import '../../../../../widgets/app_bar_widget.dart';
import '../../../../../widgets/card_view_vo.dart';
import '../../../../../widgets/widget_navigable_grid_view.dart';
import '../../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../generalInsurance/tpl_screen.dart';
import 'motor_usd_commercial_bus_screen.dart';
import 'motor_usd_commercial_goods_carrying_screen.dart';
import 'motor_usd_commercial_local_taxi_screen.dart';
import 'motor_usd_commercial_meter_taxi_screen.dart';

class MotorUSDCommercialScreen extends StatelessWidget {
  const MotorUSDCommercialScreen({super.key});

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
      body: const Column(
        children: [
          SizedBox(
            height: kMarginMedium_2,
          ),
          ProductInfoDetailTitleWidget(titleTxt: 'motor_title'),
          Expanded(child: CommercialHomeScreen()),
        ],
      )
    );
  }
}

class CommercialHomeScreen extends StatefulWidget {
  const CommercialHomeScreen({super.key});

  @override
  State<CommercialHomeScreen> createState() => _CommercialHomeScreenState();
}

class _CommercialHomeScreenState extends State<CommercialHomeScreen> {
  final List<CardViewVO> cardList = [
    CardViewVO(
        AppImages.generalCommercialBuses, 'commercial_bus', const MotorUSDCommercialBusScreen()),
    CardViewVO(
        AppImages.generalCommercialGoodsCarrying, 'commercial_goods_carrying', const MotorUSDCommercialGoodsCarryingScreen()),
    CardViewVO(
        AppImages.generalCommercialLocalTaxi, 'commercial_local_taxi', const MotorUSDCommercialLocalTaxiScreen()),
    CardViewVO(
        AppImages.generalCommercialMeterTaxi,  'commercial_meter_taxi', const MotorUSDCommercialMeterTaxiScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigableGridViewWidget(cardList: cardList);
  }
}
