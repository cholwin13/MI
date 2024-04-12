import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/dimens.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_product_info_detail_title.dart';
import '../widget/widget_submit_and_continue.dart';

class OutboundMMKTermsAndConditionScreen extends StatelessWidget {
  const OutboundMMKTermsAndConditionScreen({super.key});

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProductInfoDetailTitleWidget(
                      titleTxt: 'outbound_terms_and_conditions',
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SubmitAndContinueWidget(
            parentScreenName: 'OutboundMMK',
          ),
        ],
      ),
    );
  }
}
