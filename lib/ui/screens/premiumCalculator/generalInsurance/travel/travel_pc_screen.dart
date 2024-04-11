import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';
import '../../../../widgets/premium_details_arguments_list.dart';

class TravelPCScreen extends StatefulWidget {
  const TravelPCScreen({super.key});

  @override
  State<TravelPCScreen> createState() => _TravelPCScreenState();
}

class _TravelPCScreenState extends State<TravelPCScreen> {
  final formKey = GlobalKey<FormState>();
  String unit = '';
  String coverAmount = '';
  final TextEditingController unitController = TextEditingController();
  final TextEditingController coverAmountController = TextEditingController();

  void handleUnitChanged(String value) {
    setState(() {
      unit = value;
      coverAmountController.text = '300';
    });
  }

  void handleCoveredAmountChanged(String value) {
    setState(() {
      coverAmount = value;
    });
  }

  String? validateUnit(value){
    final double si = double.tryParse(value!) ?? 0.0;
    if (value!.isEmpty) {
      return AppStrings.travelErrorTxt;
    }else if(si < 1 || si > 10){
      return '*Unit must be between 1 and 10.';
    }
    else {
      return null;
    }
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
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(
              height: kMarginMedium_2,
            ),
            const ProductInfoDetailTitleWidget(
                titleTxt: 'travel_title'),
            const SizedBox(
              height: kMarginMedium_2,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: kMarginCardMedium_2),
              child: Column(
                children: [
                  LabelTxtInFormFieldWidget(labelTxt: 'travel_unit'.tr()),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  CustomTextFormFieldWidget(
                    onChanged: handleUnitChanged,
                    hintTxt: 'travel_enter_unit'.tr(),
                    textController: unitController,
                    validator: validateUnit,
                  ),
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
                    hintTxt: '0',
                    textController: coverAmountController,
                    readOnlyValue: true,
                  ),
                ],
              ),
            ),
            const Spacer(),
            KeyboardVisibilityBuilder(builder: (context, visible){
              return visible?
                  const SizedBox()
                  : NextBtnWidget(
                formKey: formKey,
                onNextPressed: () {
                  final isValid = formKey.currentState?.validate();
                  if(isValid!){
                    CustomNavigationHelper.router.push(
                      Routes.generalInsPremiumDetailsAndCoveragePath.path,
                      extra: PremiumDetailsArguments(title: 'travel_title', isMMK: true, appBarIcon: AppImages.generalTravelIcon),
                    );
                  }

                }, txt: 'next_btn_txt'.tr(),
              );
            }),
            // const SizedBox(
            //   height: kMarginMedium_2,
            // ),
          ],
        ),
      ),
    );
  }
}
