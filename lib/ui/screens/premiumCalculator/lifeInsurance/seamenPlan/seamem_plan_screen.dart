import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/core/data_state.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../data/vos/life/life_pc_request/life_pc_request.dart';
import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../injector.dart';
import '../../../../../network/data_agents/retrofit_data_agent_impl.dart';
import '../../../../../network/responses/life_product_premium_response/life_product_premium_response.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/coverage_type_picker.dart';
import '../../../../widgets/coverage_type_picker_list.dart';
import '../../../../widgets/widget_arrow_text_form_field.dart';
import '../../../../widgets/widget_date_picker_text_form_field.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';
import '../../../../widgets/premium_details_arguments_list.dart';

class SeamanPlanPCScreen extends StatefulWidget {
  const SeamanPlanPCScreen({super.key});

  @override
  State<SeamanPlanPCScreen> createState() => _SeamanPlanPCScreenState();
}

class _SeamanPlanPCScreenState extends State<SeamanPlanPCScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController dobController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController planController = TextEditingController();

  String age = '';
  String? planReceivedData;
  String seamanProductId = "ISPRD003001000000014110082023";
  String seamanAge = "ISSYS013001000000030730062015";
  String seamanPlan = "ISSYS013001000000014118082023";
  late DateTime todayDate;
  late DateTime lastDob;
  late DateTime startDob;

  String? validateDOB(value) {
    if (value!.isEmpty) {
      return AppStrings.dateOfBirthErrTxt;
    } else {
      return null;
    }
  }

  String? validatePlan(value) {
    if (value!.isEmpty) {
      return AppStrings.seamenPlanErrTxt;
    } else {
      return null;
    }
  }

  // List<WidgetLabel> seamenPlanList = [
  //   WidgetLabel(label: 'Plan1'),
  //   WidgetLabel(label: 'Plan2'),
  //   WidgetLabel(label: 'Plan3'),
  //   WidgetLabel(label: 'Plan4'),
  //   WidgetLabel(label: 'Plan5'),
  //   WidgetLabel(label: 'Plan6'),
  // ];

  List<Map<String, dynamic>> planList = [
    {"label": "Plan1", "value": "ISSYS0090001000000000108092023", 'insureAmt': 10000000},
    {"label": "Plan2", "value": "ISSYS0090001000000000208092023", 'insureAmt': 20000000},
    {"label": "Plan3", "value": "ISSYS0090001000000000308092023", 'insureAmt': 40000000},
    {"label": "Plan4", "value": "ISSYS0090001000000000408092023", 'insureAmt': 60000000},
    {"label": "Plan5", "value": "ISSYS0090001000000000508092023", 'insureAmt': 80000000},
    {"label": "Plan6", "value": "ISSYS0090001000000000608092023", 'insureAmt': 100000000},
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    todayDate = DateTime.now();
    lastDob = DateTime(todayDate.year - 17, todayDate.month, todayDate.day - 1);
    startDob = DateTime(todayDate.year - 100, todayDate.month, todayDate.day);

    // RetrofitDataAgentImpl test = RetrofitDataAgentImpl(injector());
    // test.getLifeProductPremium(
    //   SeamanPlanRequest(
    //       "ISPRD003001000000014110082023",
    //       {
    //         "ISSYS013001000000030730062015": "18",
    //         "ISSYS013001000000014118082023": "ISSYS0090001000000000308092023"
    //       }
    //   )
    // ).then((dataState) {
    //   if (dataState is DataSuccess) {
    //     if (dataState.data != null) {
    //       List<LifeProductPremiumResponse> responseData = dataState.data as List<LifeProductPremiumResponse>;
    //       print("success -..");
    //       print(jsonEncode(responseData));
    //     } else {
    //       print('Fail');
    //     }
    //   } else if (dataState is DataError) {
    //     print("Error -....");
    //     print(dataState.error);
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeSeamanIcon,
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
                horizontal: kMarginMedium_2, vertical: kMarginCardMedium_2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ProductInfoDetailTitleWidget(
                  titleTxt: 'seaman_plan_insurance',
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
                const LabelTxtInFormFieldWidget(labelTxt: AppStrings.seamenPlan),
                const SizedBox(
                  height: kMarginSmall,
                ),
                WidgetArrowTextFormFieldWidget(
                  controller: planController,
                  hintText: 'seamen_plan_hint_txt'.tr(),
                  validator: validatePlan,
                  onPressed: () async {
                    final result = await CustomNavigationHelper.router.push(
                        Routes.chooseCoverageTypePickerPath.path,
                        extra: CoverageTypePicker(
                            title: 'seaman_plan_insurance',
                            appBarIcon: AppImages.lifeSeamanIcon,
                            coverageTypeTitle: AppStrings.seamenPlan,
                          labelList: planList
                              .map((item) => WidgetLabel(
                            label: item['label']!,
                            value: item['value']!,
                          )).toList(),
                        )
                    );
                    if(result != null){
                      final selectedLabel = planList.firstWhere((item) => item['label'] == result)['value'];
                      setState(() {
                        planReceivedData = selectedLabel ?? '';
                        planController.text = result as String? ?? '';
                      });
                    }

                  },
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
            age = ageController.text;
            final selectedPlan = planList.firstWhere((item) => item['value'] == planReceivedData);
            final insureAmount = selectedPlan["insureAmt"];

            if(planReceivedData != null){
              RetrofitDataAgentImpl test = RetrofitDataAgentImpl(injector());
              test.getLifeProductPremium(
                  LifePCRequest(
                      seamanProductId,
                      {
                        seamanAge: age,
                        seamanPlan: planReceivedData!
                      }
                  )
              ).then((dataState) {
                if (dataState is DataSuccess) {
                  if (dataState.data != null) {
                    List<LifeProductPremiumResponse> responseData = dataState.data as List<LifeProductPremiumResponse>;
                    // print("success -..");
                    // print(jsonEncode(responseData));
                    List<LifeProductPremiumResponse> data = responseData ?? [];
                    CustomNavigationHelper.router.push(
                        Routes.lifePremiumDetailsPath.path,
                        extra: PremiumDetailsArguments(
                            title: 'seaman_plan_insurance',
                            isMMK: true,
                            appBarIcon: AppImages.lifeSeamanIcon,
                          responseData: data,
                          sumInsure: insureAmount
                        ));
                  } else {
                    print('Fail');
                  }
                } else if (dataState is DataError) {
                  print("Error -....");
                  print(dataState.error);
                }
              });
            }

            // CustomNavigationHelper.router.push(
            //     Routes.lifePremiumDetailsPath.path,
            //     extra: PremiumDetailsArguments(
            //         title: 'seaman_plan_insurance',
            //         isMMK: true,
            //         appBarIcon: AppImages.lifeSeamanIcon));
          }
        },
        txt: 'next_btn_txt'.tr(),
      ),
    );
  }
}

class WidgetLabel {
  final String label;
  final String value;

  WidgetLabel({
    required this.label,
    required this.value,
  });
}
