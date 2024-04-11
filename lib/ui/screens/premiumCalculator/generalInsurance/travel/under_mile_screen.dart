import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';
import '../../../../widgets/premium_details_arguments_list.dart';

class UnderMileScreen extends StatefulWidget {
  const UnderMileScreen({super.key});

  @override
  State<UnderMileScreen> createState() => _UnderMileScreenState();
}

class _UnderMileScreenState extends State<UnderMileScreen> {
  TextEditingController sumInsureController = TextEditingController();
  String sumInsure = '';

  void handleCoveredAmountChanged(String value) {
    setState(() {
      sumInsure = value;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      sumInsureController.text = '20000000';
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.generalTravelIcon,
            color: context.appColors.colorGold,
            width: iconMedium_3,
            height: iconMedium_3,
          ),
        ),
      body: Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: kMarginCardMedium_2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: kMarginMedium_2,
                ),
                const ProductInfoDetailTitleWidget(
                    titleTxt: 'under_100_miles_travel'),
                const SizedBox(
                  height: kMarginMedium_2,
                ),
                LabelTxtInFormFieldWidget(
                    labelTxt: 'covered_amount'.tr()),
                const SizedBox(
                  height: kMarginSmall,
                ),
                CustomTextFormFieldWidget(
                  onChanged: handleCoveredAmountChanged,
                  hintTxt: '',
                  textController: sumInsureController,
                  readOnlyValue: true,
                ),
              ],
            ),
            NextBtnWidget(
              onNextPressed: () {
                CustomNavigationHelper.router.push(
                  Routes.generalInsPremiumDetailsAndCoveragePath.path,
                  extra: PremiumDetailsArguments(title: 'travel_title', isMMK: true, appBarIcon: AppImages.generalTravelIcon),
                );
              }, txt: 'next_btn_txt'.tr(),
            ),
          ],
        ),
      )
    );
  }
}
