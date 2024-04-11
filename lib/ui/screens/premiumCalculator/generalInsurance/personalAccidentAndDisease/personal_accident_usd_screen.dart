import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';
import '../cashInTransit/cashInTransit_premium_calculator_screen.dart';
import '../../../../widgets/premium_details_arguments_list.dart';

class PersonalAccidentUSDScreen extends StatefulWidget {
  const PersonalAccidentUSDScreen({super.key});

  @override
  State<PersonalAccidentUSDScreen> createState() =>
      _PersonalAccidentUSDScreenState();
}

class _PersonalAccidentUSDScreenState extends State<PersonalAccidentUSDScreen> {
  final formKey = GlobalKey<FormState>();
  String sumInsure = '';
  String riskyOccupation = 'No';
  final TextEditingController sumInsureController = TextEditingController();

  void handleSIChanged(String value) {
    setState(() {
      sumInsure = value;
    });
  }

  String? validateSI(value) {
    final double si = double.tryParse(value!) ?? 0.0;
    if (value!.isEmpty) {
      return AppStrings.sumInsureErrTxt;
    } else if (si < 1000 || si > 200000) {
      return '*Sum insured must be between 1,000 and 200,000';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Form(
          key: formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    LabelTxtInFormFieldWidget(labelTxt: 'motor_si_usd'.tr()),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleSIChanged,
                      hintTxt: 'motor_si_txt'.tr(),
                      textController: sumInsureController,
                      validator: validateSI,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: context.appColors.colorPrimary),
                        borderRadius: BorderRadius.circular(boxRadius_2),
                      ),
                      child: Column(
                        children: [
                          const PremiumAndTypesWidget(
                            typesTxt: 'Risky Occupation',
                          ),
                          Divider(
                            color: context.appColors.colorPrimary,
                          ),
                          RadioListTile<String>(
                            title: Text('Yes'),
                            value: 'Yes',
                            groupValue: riskyOccupation,
                            onChanged: (value) {
                              setState(() {
                                riskyOccupation = value!;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('No'),
                            value: 'No',
                            groupValue: riskyOccupation,
                            onChanged: (value) {
                              setState(() {
                                riskyOccupation = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      bottomNavigationBar: NextBtnWidget(
        formKey: formKey,
        onNextPressed: () {
          final isValid = formKey.currentState?.validate();

          if (isValid!) {
            sumInsure = sumInsureController.text;
            CustomNavigationHelper.router.push(
                Routes.generalInsPremiumDetailsAndCoveragePath
                    .path,
                extra: PremiumDetailsArguments(
                    title: 'cash_in_transit_title',
                    isMMK: true,
                    appBarIcon:
                    AppImages.generalCashInSafeIcon));
          }
        },
        txt: 'next_btn_txt'.tr(),
      ),
    );
  }
}
