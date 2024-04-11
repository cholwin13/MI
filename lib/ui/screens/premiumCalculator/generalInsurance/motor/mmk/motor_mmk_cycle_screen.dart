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
import '../../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../../widgets/widget_next_btn.dart';
import '../../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../../widgets/widgte_custom_text_form_field.dart';
import '../../../../../widgets/premium_details_arguments_list.dart';
import '../add_on_list.dart';

class MotorMMKCycleScreen extends StatefulWidget {
  const MotorMMKCycleScreen({super.key});

  @override
  State<MotorMMKCycleScreen> createState() => _MotorMMKCycleScreenState();
}

class _MotorMMKCycleScreenState extends State<MotorMMKCycleScreen> {
  final formKey = GlobalKey<FormState>();
  String sumInsure = '';
  final sumInsureTxtController = TextEditingController();
  bool isMMK = true;

  void handleSIChanged(String value) {
    setState(() {
      sumInsure = value;
    });
  }

  String? validateSI(value){
      final double si = double.tryParse(value!) ?? 0.0;
      if (value!.isEmpty) {
        return AppStrings.sumInsureErrTxt;
      } else if(si < 100000 || si > 5000000000){
        return '*Sum insured must be between 100,000 and \n 5,000,000,000.';
      } else {
        return null;
      }
    }

  List<AddOnList> addOnMotorMMKList = [
    AddOnList(label: 'act_of_god'.tr(), isChecked: false, addOnId: 1),
    AddOnList(label: 'nil_excess'.tr(), isChecked: false, addOnId: 2),
    AddOnList(label: 'srcc'.tr(), isChecked: false, addOnId: 3),
    AddOnList(label: 'theft'.tr(), isChecked: false, addOnId: 4),
    AddOnList(label: 'third_party'.tr(), isChecked: false, addOnId: 5),
    AddOnList(label: 'war_risk'.tr(), isChecked: false, addOnId: 6),
  ];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
          appBar: AppBarWidget(
            titleIcon: Image.asset(
              AppImages.generalMotorIcon,
              color: context.appColors.colorGold,
              width: iconMedium_3,
              height: iconMedium_3,
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
              children: [
                const SizedBox(
                  height: kMarginMedium_2,
                ),
                const ProductInfoDetailTitleWidget(titleTxt: 'motor_cycle'),
                Divider(
                  color: context.appColors.colorPrimary,
                ),
                const SizedBox(
                  height: kMarginMedium_2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kMarginCardMedium_2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LabelTxtInFormFieldWidget(
                          labelTxt: 'motor_si_mmk'.tr()),
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
                      // CustomNavigationHelper.router.push(
                      //     Routes
                      //         .motorCyclePCAdditionalRiskCoverPath.path,
                      //     extra: isMMK);
                      CustomNavigationHelper.router.push(
                        Routes.generalInsAdditionalRiskCoverPath.path,
                        extra: PremiumDetailsArguments(title: 'motor_cycle', isMMK: true, appBarIcon: AppImages.generalMotorIcon, addOnList: addOnMotorMMKList),
                      );
                      print('SI is ${sumInsure}');
                    }
                  },
                  txt: 'next_btn_txt'.tr(),
                );
              })
            ]
          )),
    );
  }
}
