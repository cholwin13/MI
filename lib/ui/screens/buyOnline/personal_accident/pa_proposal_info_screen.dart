import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_date_picker_text_form_field.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widgte_custom_text_form_field.dart';
import '../widget/widget_buy_online_dropdown.dart';
import '../widget/widget_buy_online_label_txt.dart';

class PAProposalInfoScreen extends StatefulWidget {
  const PAProposalInfoScreen({super.key});

  @override
  State<PAProposalInfoScreen> createState() => _PAProposalInfoScreenState();
}

class _PAProposalInfoScreenState extends State<PAProposalInfoScreen> {
  TextEditingController paymentTypeController = TextEditingController();
  TextEditingController policyStartDateController = TextEditingController();
  TextEditingController policyEndDateController = TextEditingController();
  TextEditingController submittedDateController = TextEditingController();

  int? policyTermDropdownValue = 3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    paymentTypeController.text = "LUMPSUM";
    DateTime todayDate = DateTime.now();
    DateTime policyEndDate = DateTime(todayDate.year, todayDate.month + 3, todayDate.day);

    String policyStartDateFormatDate = DateFormat('dd-MM-yyyy').format(todayDate);
    String policyEndDateFormatDate = DateFormat('dd-MM-yyyy').format(policyEndDate);

    policyStartDateController.text = policyStartDateFormatDate;
    policyEndDateController.text = policyEndDateFormatDate;
    submittedDateController.text = DateFormat('dd-MM-yyyy').format(todayDate);
  }

  String? validatePolicyStartDate(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    DateTime todayDate = DateTime.now();
    final policyEndDate = DateTime(todayDate.year + 100, todayDate.month, todayDate.day);
    late DateTime policyStartDate = DateTime(todayDate.year, todayDate.month, todayDate.day);

    var policyTermList = [
      {"label": "3", "value": 3},
      {"label": "6", "value": 6},
      {"label": "9", "value": 9},
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifePABuyOnline,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: kMarginCardMedium, left: kMarginMedium_2, right: kMarginMedium_2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text('Proposal Info',
                        style: context.appFonts.bodySmall()?.copyWith(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      CustomNavigationHelper.router
                          .push(
                          Routes.userGuidePath.path,
                          extra: 'pa'
                      );
                    },
                    child: Text('How To Pay?',
                        style: context.appFonts.bodySmall()?.copyWith(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline
                        )),
                  ),
                ],
              ),
            ),
            Divider(
              color: context.appColors.colorLabel,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kMarginLargeX, vertical: kMarginCardMedium),
              child: Column(
                children: [
                  BuyOnlineLabelTxtWidget(
                    labelTxt: 'pa_policy_term'.tr(),
                    isRequire: false,
                  ),
                  const SizedBox(
                    height: kMarginCardMedium,
                  ),
                  BuyOnlineDropDownWidget(
                    dropDownList: policyTermList
                        .map((item) => {
                      'label': item['label'] as String,
                      'value': item['value'] as int,
                    })
                        .toList(),
                    dropDownValue: policyTermDropdownValue,
                    onValueChanged: (value) {
                      setState(() {
                        policyTermDropdownValue = value;
                      });
                    },
                    hintTxt: 'SELECT ONE',
                    errTxt: '',
                  ),
                  const SizedBox(
                    height: kMarginLarge,
                  ),
                  BuyOnlineLabelTxtWidget(
                    labelTxt: 'pa_payment_type'.tr(),
                    isRequire: false,
                  ),
                  const SizedBox(
                    height: kMarginCardMedium,
                  ),
                  CustomTextFormFieldWidget(
                    hintTxt: '',
                    textController: paymentTypeController,
                    readOnlyValue: true,
                    buyOnlineStyle: true,
                  ),
                  const SizedBox(
                    height: kMarginLarge,
                  ),
                  BuyOnlineLabelTxtWidget(
                    labelTxt: 'pa_policy_start_date'.tr(),
                    isRequire: false,
                  ),
                  const SizedBox(
                    height: kMarginCardMedium,
                  ),
                  WidgetDatePickerTextFormField(
                    dateController: policyStartDateController,
                    endDateController: policyEndDateController,
                    validate: validatePolicyStartDate,
                    initialDate: policyStartDate,
                    firstDate: policyStartDate,
                    lastDate: policyEndDate,
                    hintTxt: 'DD-MM-YYYY',
                    buyOnlineStyle: true,
                  ),
                  const SizedBox(
                    height: kMarginLarge,
                  ),
                  BuyOnlineLabelTxtWidget(
                    labelTxt: 'pa_policy_end_date'.tr(),
                    isRequire: false,
                  ),
                  const SizedBox(
                    height: kMarginCardMedium,
                  ),
                  WidgetDateTextFormField(controller: policyEndDateController),
                  const SizedBox(
                    height: kMarginLarge,
                  ),
                  BuyOnlineLabelTxtWidget(
                    labelTxt: 'pa_submitted_date'.tr(),
                    isRequire: false,
                  ),
                  const SizedBox(
                    height: kMarginCardMedium,
                  ),
                  WidgetDateTextFormField(controller: submittedDateController,),
                  // TextFormField(
                  //   controller: submittedDateController,
                  //   decoration:InputDecoration(
                  //       contentPadding: const EdgeInsets.all(kMarginCardMedium),
                  //       enabledBorder: OutlineInputBorder(
                  //         borderSide:
                  //         BorderSide(color: context.appColors.colorBtnGray),
                  //         borderRadius: BorderRadius.circular(boxRadius_2),
                  //       ),
                  //       focusedBorder: OutlineInputBorder(
                  //         borderSide:
                  //         BorderSide(color: context.appColors.colorBtnGray),
                  //         borderRadius: BorderRadius.circular(boxRadius_2),
                  //       ),
                  //       errorBorder: OutlineInputBorder(
                  //         borderSide:
                  //         BorderSide(color: context.appColors.colorError),
                  //         borderRadius: BorderRadius.circular(boxRadius_2),
                  //       ),
                  //       errorStyle: const TextStyle(fontSize: 0),
                  //       focusedErrorBorder: OutlineInputBorder(
                  //         borderSide:
                  //         BorderSide(color: context.appColors.colorBtnGray),
                  //         borderRadius: BorderRadius.circular(boxRadius_2),
                  //       ),
                  //       hintText: 'DD-MM-YYYY',
                  //       hintStyle: TextStyle(
                  //         fontSize: 12.0,
                  //         color: context.appColors.colorTextInputPlaceHolder,
                  //       ),
                  //       isDense: true,
                  //       suffixIcon: Icon(Icons.date_range, color: context.appColors.colorPrimary, size: 25,)
                  //   ),
                  //   style: context.appFonts.bodySmall()?.copyWith(
                  //       fontSize: 12.0,
                  //       color: context.appColors.colorLabel
                  //   ),
                  //   readOnly: true,
                  // ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: kMarginMedium, top: kMarginMedium),
              child: NextBtnWidget(
                onNextPressed: () {
                  CustomNavigationHelper.router.push(Routes.paInsurePersonInfo1Path.path);
                  // print("Policy Start Date ==> ${policyStartDateController.text}");
                },
                txt: 'next_btn_txt'.tr(),
                buyOnlineStyle: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WidgetDateTextFormField extends StatelessWidget {
  const WidgetDateTextFormField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration:InputDecoration(
          contentPadding: const EdgeInsets.all(kMarginCardMedium),
          enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: context.appColors.colorBtnGray),
            borderRadius: BorderRadius.circular(boxRadius_2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: context.appColors.colorBtnGray),
            borderRadius: BorderRadius.circular(boxRadius_2),
          ),
          errorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: context.appColors.colorError),
            borderRadius: BorderRadius.circular(boxRadius_2),
          ),
          errorStyle: const TextStyle(fontSize: 0),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: context.appColors.colorBtnGray),
            borderRadius: BorderRadius.circular(boxRadius_2),
          ),
          hintText: 'DD-MM-YYYY',
          hintStyle: TextStyle(
            fontSize: 12.0,
            color: context.appColors.colorTextInputPlaceHolder,
          ),
          isDense: true,
          suffixIcon: Icon(Icons.date_range, color: context.appColors.colorPrimary, size: 25,)
      ),
      style: context.appFonts.bodySmall()?.copyWith(
          fontSize: 12.0,
          color: context.appColors.colorLabel
      ),
      readOnly: true,
    );
  }
}
