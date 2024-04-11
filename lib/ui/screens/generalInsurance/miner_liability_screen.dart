import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../../helper/navigation_routes.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_calculator_floating_btn.dart';
import '../../widgets/widget_product_info_detail_title.dart';
import '../../widgets/widget_arrow_indicator_row_txt.dart';

class MinerLiabilityScreen extends StatelessWidget {
  const MinerLiabilityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalMinerIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.all(kMarginMedium_3),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductInfoDetailTitleWidget(
                        titleTxt: 'miner_liability_title',
                      ),
                      SizedBox(
                        height: kMarginCardMedium,
                      ),
                      ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'miner_purpose',
                        paddingSize: 0.0,
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
