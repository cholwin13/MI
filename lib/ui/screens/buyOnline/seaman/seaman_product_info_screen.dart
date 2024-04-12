import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_product_info_detail_title.dart';
import '../widget/widget_buy_online_build_two_button_row.dart';

class SeamanProductInfoScreen extends StatelessWidget {
  const SeamanProductInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeSeamanIcon,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProductInfoDetailTitleWidget(
                      titleTxt: 'seaman_insurance',
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),

          BuyOnlineBuildTwoButtonRowWidget(
            continuePressed: (){
              CustomNavigationHelper.router.push(Routes.seamanTermsAndConditionsPath.path);
            },
            enquiryPressed: (){
              CustomNavigationHelper.router.push(Routes.seamanEnquiryPath.path);
            },
          ),
        ],
      ),
    );
  }
}
