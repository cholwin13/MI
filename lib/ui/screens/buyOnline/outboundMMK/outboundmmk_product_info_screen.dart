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

class OutboundMMKProductInfoScreen extends StatelessWidget {
  const OutboundMMKProductInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalInboundIcon,
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
                      titleTxt: 'outbound_travel_accident_insurance',
                    ),
                    SizedBox(
                      height: kMarginCardMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),

          BuyOnlineBuildTwoButtonRowWidget(
            continuePressed: (){
              CustomNavigationHelper.router.push(Routes.outboundMMKTermsAndConditionPath.path);
            },
            enquiryPressed: (){
              CustomNavigationHelper.router.push(Routes.inboundEnquiryPath.path, extra: 'outboundMMK');
            },
          ),

        ],
      ),
    );
  }
}
