import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../core/data_state.dart';
import '../../../../../data/vos/life/life_pc_payment_request/life_pc_payment_request.dart';
import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../injector.dart';
import '../../../../../network/data_agents/retrofit_data_agent_impl.dart';
import '../../../../../network/responses/life_product_premium_response/life_product_premium_response.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_date_picker_text_form_field.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_min_max_label_txt.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';

class ShortTermEndowmentPCScreen extends StatefulWidget {
  const ShortTermEndowmentPCScreen({super.key});

  @override
  State<ShortTermEndowmentPCScreen> createState() => _ShortTermEndowmentPCScreenState();
}

class _ShortTermEndowmentPCScreenState extends State<ShortTermEndowmentPCScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController dobController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController sumInsureTxtController = TextEditingController();

  String age = '';
  String sumInsure = '';

  String? validateDOB(value) {
    if (value!.isEmpty) {
      return AppStrings.dateOfBirthErrTxt;
    } else {
      return null;
    }
  }

  void handleInsureChanged(String value) {
    setState(() {
      sumInsure = value;
    });
  }

  String? validateInsure(value){
    final double si = double.tryParse(value!) ?? 0.0;
    if (value!.isEmpty) {
      return AppStrings.publicTermLifeSumInsuredErrTxt;
    }else if(si < 1000000 || si > 50000000){
      return AppStrings.govPersonalShortTermMinMaxErrTxt;
    }else {
      return null;
    }
  }

  @override
  void initState() {
    super.initState();

    RetrofitDataAgentImpl test = RetrofitDataAgentImpl(injector());
    test.getLifePaymentProductPremium(
        LifePCPaymentRequest(
            "ISPRD003001000009589529032019",
            50000,
            "ISSYS0090001000000000229032013", // payment type
            {
              "ISSYS0130001000000000829032013":"7", // term
              "ISSYS013001000000030730062015":"10" // age
            }
        )
    ).then((dataState) {
      if (dataState is DataSuccess) {
        if (dataState.data != null) {
          List<LifeProductPremiumResponse> responseData = dataState.data as List<LifeProductPremiumResponse>;
          print("success -..");
          print(jsonEncode(responseData));
        } else {
          print('Fail');
        }
      } else if (dataState is DataError) {
        print("Error -....");
        print(dataState.error);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    DateTime todayDate = DateTime.now();
    final lastDob =
    DateTime(todayDate.year - 9, todayDate.month, todayDate.day - 1);
    final startDob =
    DateTime(todayDate.year - 60, todayDate.month, todayDate.day);

    return Scaffold(
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.lifeShortTermEndowmentIcon,
            color: context.appColors.colorGold,
            width: iconMedium_3,
            height: iconMedium_3,
          ),
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kMarginCardMedium_2, vertical: kMarginCardMedium_2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductInfoDetailTitleWidget(
                    titleTxt: 'short_term_endowment_insurance',
                  ),
                  const SizedBox(
                    height: kMarginCardMedium_2,
                  ),
                  LabelTxtInFormFieldWidget(labelTxt: 'date_of_birth'.tr()),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  WidgetDatePickerTextFormField(
                    dateController: dobController,
                    validate: validateDOB,
                    initialDate: lastDob,
                    firstDate: startDob,
                    lastDate: lastDob,
                    hintTxt: 'dd-mm-yyyy',
                    ageController: ageController,
                  ),
                  const SizedBox(
                    height: kMarginMedium_2,
                  ),
                  LabelTxtInFormFieldWidget(labelTxt: 'age'.tr()),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  CustomTextFormFieldWidget(
                    hintTxt: '',
                    textController: ageController,
                    readOnlyValue: true,
                  ),
                  const SizedBox(
                    height: kMarginMedium_2,
                  ),
                  LabelTxtInFormFieldWidget(labelTxt: 'sum_insured_kyat'.tr()),
                  const MinMaxLabelTxtWidget(labelTxt: AppStrings.govPersonalShortTermMinMaxTxt),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  CustomTextFormFieldWidget(
                    onChanged: handleInsureChanged,
                    hintTxt: 'sum_insured_hint'.tr(),
                    textController: sumInsureTxtController,
                    validator: validateInsure,
                  ),
                ],
              ),
            ),
          ),
        ),
      bottomNavigationBar: NextBtnWidget(
        formKey: formKey,
        onNextPressed: () {
          final isValid = formKey.currentState?.validate();
          if (isValid!) {
            CustomNavigationHelper.router.push(
                Routes.lifeShortTermPaymentPath.path
            );
          }
        }, txt: 'next_btn_txt'.tr(),
      ),
    );
  }
}
