import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_localized_paragraph_txt.dart';
import '../../../widgets/widget_product_info_detail_title.dart';
import '../widget/widget_submit_and_continue.dart';

class InboundTermsAndConditionScreen extends StatefulWidget {
  const InboundTermsAndConditionScreen({super.key});

  @override
  State<InboundTermsAndConditionScreen> createState() =>
      _InboundTermsAndConditionScreenState();
}

class _InboundTermsAndConditionScreenState
    extends State<InboundTermsAndConditionScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      titleTxt: 'inbound_terms_and_conditions',
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
            parentScreenName: 'Inbound',
          ),
        ],
      ),
    );
  }
}

