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
import '../motor/add_on_list.dart';
import '../../../../widgets/premium_details_arguments_list.dart';

class CashInSafePublicBusiness extends StatefulWidget {
  const CashInSafePublicBusiness({super.key});

  @override
  State<CashInSafePublicBusiness> createState() => _CashInSafePublicBusinessState();
}

class _CashInSafePublicBusinessState extends State<CashInSafePublicBusiness> {
  final formKey = GlobalKey<FormState>();
  String sumInsure = '';
  final TextEditingController sumInsureController = TextEditingController();

  List<AddOnList> addOnList = [
    AddOnList(label: 'cash_safe_primary', isChecked: false, addOnId: 1),
    AddOnList(label: 'cash_safe_security', isChecked: false, addOnId: 2),
    AddOnList(label: 'cash_safe_safety', isChecked: false, addOnId: 3),
    AddOnList(label: 'cash_safe_system', isChecked: false, addOnId: 4),
    AddOnList(label: 'cash_safe_police', isChecked: false, addOnId: 5),
  ];

  void handleSIChanged(String value) {
    setState(() {
      sumInsure = value;
    });
  }

  String? validateSI(value){
    final double si = double.tryParse(value!) ?? 0.0;
    if (value!.isEmpty) {
      return AppStrings.sumInsureErrTxt;
    }else if(si < 1000){
      return '*Sum insured must be at least 1,000.';
    }
    else {
      return null;
    }
  }

  void onCheckboxChanged(bool? value, AddOnList item) {
    setState(() {
      item.isChecked = value ?? false;
    });

    // if(item.isChecked){
    //   print('ADD on ID is ${item.addOnId}');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  LabelTxtInFormFieldWidget(labelTxt: 'motor_si_mmk'.tr()),
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
                      border: Border.all(color: context.appColors.colorPrimary),
                      borderRadius: BorderRadius.circular(boxRadius_2),
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: addOnList.length,
                      itemBuilder: (context, index) {
                        AddOnList items = addOnList[index];

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Wrap(
                                    direction: Axis.horizontal,
                                    crossAxisAlignment:
                                    WrapCrossAlignment.center,
                                    spacing: -5,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.zero,
                                        child: Checkbox(
                                          shape:
                                          const RoundedRectangleBorder(
                                              borderRadius: BorderRadius
                                                  .all(Radius.circular(
                                                  checkBoxRadius))),
                                          value: items.isChecked,
                                          onChanged: (bool? value) {
                                            onCheckboxChanged(value, items);
                                          },
                                          checkColor: Colors.white,
                                          activeColor: context
                                              .appColors.colorPrimary,
                                        ),
                                      ),
                                      Text(items.label.tr()),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
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
            sumInsure = sumInsureController.text;
            CustomNavigationHelper.router
                .push(Routes.generalInsPremiumDetailsAndCoveragePath.path,
                extra: PremiumDetailsArguments(title: 'cash_in_safe_title', isMMK: true, appBarIcon: AppImages.generalCashInSafeIcon)
            );
          }
        },
        txt: 'next_btn_txt'.tr(),
      ),
    );
  }
}
