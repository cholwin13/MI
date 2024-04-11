import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../../../../../helper/app_strings.dart';
import '../../../../../../helper/dimens.dart';
import '../../../../../../helper/navigation_routes.dart';
import '../../../../../../routes/app_routes.dart';
import '../../../../../widgets/widget_dropdown_btn.dart';
import '../../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../../widgets/widget_next_btn.dart';
import '../../../../../widgets/widgte_custom_text_form_field.dart';

class SocialMMKCarScreen extends StatefulWidget {
  const SocialMMKCarScreen({super.key});

  @override
  State<SocialMMKCarScreen> createState() => _SocialMMKCarScreenState();
}

class _SocialMMKCarScreenState extends State<SocialMMKCarScreen> {
  final formKey = GlobalKey<FormState>();
  String enginePower = '';
  String sumInsure = '';
  String manufactureYear = '';
  String? dropDownValue;
  final enginePowerTxtController = TextEditingController();
  final sumInsureTxtController = TextEditingController();
  bool isMMK = true;

  void handleEnginePowerChanged(String value) {
    setState(() {
      enginePower = value;
    });
  }

  void handleSIChanged(String value) {
    setState(() {
      sumInsure = value;
    });
  }

  String? validateEnginePower(value){
    if (value!.isEmpty) {
      return AppStrings.enginePowerErrTxt;
    } else {
      return null;
    }
  }

  String? validateSI(value){
    if (value!.isEmpty) {
      return AppStrings.sumInsureErrTxt;
    }else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {

    List<String> generateYearList = [];
    int currentYear = DateTime.now().year;
    int startYear = 1990;

    for (int year = startYear; year <= currentYear; year++) {
      generateYearList.add('$year');
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LabelTxtInFormFieldWidget(labelTxt: 'motor_engine_power'.tr()),
                const SizedBox(
                  height: kMarginSmall,
                ),
                CustomTextFormFieldWidget(
                  onChanged: handleEnginePowerChanged,
                  hintTxt: 'motor_engine_power_txt'.tr(),
                  textController: enginePowerTxtController,
                  validator: validateEnginePower,
                ),
                const SizedBox(
                  height: kMarginLarge,
                ),
                LabelTxtInFormFieldWidget(labelTxt: 'motor_si_mmk'.tr()),
                const SizedBox(
                  height: kMarginSmall,
                ),
                CustomTextFormFieldWidget(
                  onChanged: handleSIChanged,
                  hintTxt: 'motor_si_txt'.tr(),
                  textController: sumInsureTxtController,
                  validator: validateSI,
                ),

                const SizedBox(
                  height: kMarginLarge,
                ),
                LabelTxtInFormFieldWidget(labelTxt: 'motor_manufacture_year'.tr()),
                DropDownBtnWidget(
                  dropDownList: generateYearList,
                  dropDownValue: dropDownValue,
                  onValueChanged: (String? newValue) {
                    setState(() {
                      dropDownValue = newValue!;
                    });
                  },
                  hintTxt: 'motor_manufacture_year_hint_txt'.tr(),
                  errTxt: 'motor_manufacture_year_err_txt'.tr(),
                ),

                // const SizedBox(
                //   height: kMarginLarge,
                // ),
                // Text('DropDown Value is ${dropDownValue}'),
              ],
            ),

          ],
        ),
      ),
      bottomNavigationBar: NextBtnWidget(
        formKey: formKey,
        onNextPressed: () {
          final isValid = formKey.currentState?.validate();

          if (isValid!) {
            CustomNavigationHelper.router.push(Routes
                .motorPremiumCalculatorAdditionalRiskCoverPath.path,
              extra: isMMK,
            );
            print(
                'Engine power is ${enginePower} \n SI is ${sumInsure} \n Year is ${dropDownValue}');
          }
        }, txt: 'next_btn_txt'.tr(),
      ),
    );
  }
}