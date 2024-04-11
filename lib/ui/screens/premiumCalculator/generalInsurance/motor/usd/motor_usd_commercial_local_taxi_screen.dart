import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../../helper/app_images.dart';
import '../../../../../../helper/app_strings.dart';
import '../../../../../../helper/dimens.dart';
import '../../../../../../helper/navigation_routes.dart';
import '../../../../../../routes/app_routes.dart';
import '../../../../../widgets/app_bar_widget.dart';
import '../../../../../widgets/widget_dropdown_btn.dart';
import '../../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../../widgets/widget_next_btn.dart';
import '../../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../../widgets/widgte_custom_text_form_field.dart';

class MotorUSDCommercialLocalTaxiScreen extends StatefulWidget {
  const MotorUSDCommercialLocalTaxiScreen({super.key});

  @override
  State<MotorUSDCommercialLocalTaxiScreen> createState() => _MotorUSDCommercialLocalTaxiScreenState();
}

class _MotorUSDCommercialLocalTaxiScreenState extends State<MotorUSDCommercialLocalTaxiScreen> {
  final formKey = GlobalKey<FormState>();
  String sumInsure = '';
  String? dropDownValue;
  final sumInsureTxtController = TextEditingController();
  bool isMMK = false;

  void handleSIChanged(String value) {
    setState(() {
      sumInsure = value;
    });
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
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.generalMotorIcon,
            color: context.appColors.colorGold,
            width: iconMedium_3,
            height: iconMedium_3,
          ),
        ),
        body: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: kMarginMedium_2,
                  ),
                  const ProductInfoDetailTitleWidget(titleTxt: 'commercial_local_taxi'),
                  Divider(
                    color: context.appColors.colorPrimary,
                  ),
                  const SizedBox(
                    height: kMarginMedium_2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kMarginCardMedium_2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelTxtInFormFieldWidget(labelTxt: 'motor_si_usd'.tr()),
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
                      ],
                    ),
                  ),
                ],
              ),
              KeyboardVisibilityBuilder(builder: (context, visible){
                return visible?
                    const SizedBox() :
                NextBtnWidget(
                  formKey: formKey,
                  onNextPressed: () {
                    final isValid = formKey.currentState?.validate();

                    if (isValid!) {
                      CustomNavigationHelper.router.push(Routes
                          .motorPremiumCalculatorAdditionalRiskCoverPath.path,
                        extra: isMMK,
                      );
                      print(
                          'SI is ${sumInsure} \n Year is ${dropDownValue}');
                    }
                  }, txt: 'next_btn_txt'.tr(),
                );
              })
            ],
          ),
        ));
  }
}
