import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/data/vos/life/life_pc_request/life_pc_add_on.dart';
import 'package:test_pj_mi/data/vos/life/life_pc_request/life_pc_request.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../core/data_state.dart';
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
import '../../../../widgets/premium_details_arguments_list.dart';
import '../../../../widgets/widget_arrow_text_form_field.dart';
import '../../../../widgets/widget_label_and_value.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_min_max_label_txt.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';
import '../../../../widgets/widget_normal_txt.dart';
import '../publicTermLife/public_term_details_premium.dart';

class SportMenPCScreen extends StatefulWidget {
  const SportMenPCScreen({super.key});

  @override
  State<SportMenPCScreen> createState() => _SportMenPCScreenState();
}

class _SportMenPCScreenState extends State<SportMenPCScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController unitController = TextEditingController();
  TextEditingController periodTxtController = TextEditingController();

  String abroad = 'No';
  String? unitReceivedData;

  String? validateUnit(value) {
    if (value!.isEmpty) {
      return AppStrings.seamenErrTxt;
    } else {
      return null;
    }
  }

  String? validatePeriod(value){
    final double si = double.tryParse(value!) ?? 0.0;
    if (value!.isEmpty) {
      return AppStrings.sportsmanPeriodErrTxt;
    }else if(si < 1 || si > 31){
      return AppStrings.sportsmanPeriodMinMaxErrTxt;
    }else {
      return null;
    }
  }

  List<Map<String, dynamic>> sportsmanUnitList = [
    {"label": '1 Unit', "value": "1", 'insureAmt': "1000000"},
    {"label": '2 Unit', "value": "2", 'insureAmt': "2000000"},
    {"label": '3 Unit', "value": "3", 'insureAmt': "3000000"},
    {"label": '4 Unit', "value": "4", 'insureAmt': "4000000"},
    {"label": '5 Unit', "value": "5", 'insureAmt': "5000000"},
  ];

  void _onSubmit(){
    if(formKey.currentState!.validate()){
      int unit = int.parse(unitController.text);
      String? period = periodTxtController.text;

      final selectedUnit = sportsmanUnitList.firstWhere((item) => item['value'] == unitReceivedData);
      final insureAmount = selectedUnit["insureAmt"];

      List<LifePCAddOn> addOnList = [];

      if(period.isNotEmpty){
        addOnList.add(
            LifePCAddOn(
                "ISSYS014001000009592227022019",
                null,
                {
                  "ISSYS013001000009442718072017": periodTxtController.text
                }
            )
        );
      }

      RetrofitDataAgentImpl test = RetrofitDataAgentImpl(injector());
      test.getLifeProductPremium(
          LifePCRequest(
              "ISPRD0030001000000002331032013", // product Id
              null,
              null,
              unit,
              null,
             addOnList
          )
      ).then((dataState) {
        if (dataState is DataSuccess) {
          if (dataState.data != null) {
            List<LifeProductPremiumResponse> responseData = dataState.data as List<LifeProductPremiumResponse>;
            CustomNavigationHelper.router.push(
                Routes.publicTermLifePremiumDetailsPath.path,
                extra: PublicTermPremiumDetailsArguments(
                    title: 'sportsmen_insurance',
                    isMMK: true,
                    appBarIcon: AppImages.lifeSportMenIcon,
                  sumInsure: double.parse(insureAmount),
                  unit: unit,
                  responseData: responseData,
                  isAbroad: abroad
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.lifeSportMenIcon,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ProductInfoDetailTitleWidget(
                    titleTxt: 'sportsmen_insurance',
                  ),
                  const SizedBox(
                    height: kMarginCardMedium_2,
                  ),
                  LabelTxtInFormFieldWidget(labelTxt: 'travel_insure_unit'.tr()),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  WidgetArrowTextFormFieldWidget(
                    controller: unitController,
                    hintText: 'travel_insure_hint_txt'.tr(),
                    validator: validateUnit,
                    onPressed: () async {
                      final result = await CustomNavigationHelper.router.push(
                          Routes.chooseCoverageTypePickerPath.path,
                          extra: CoverageTypePicker(
                              title: 'sportsmen_insurance',
                              appBarIcon: AppImages.lifeSportMenIcon,
                              coverageTypeTitle: 'travel_insure_unit'.tr(),
                            labelList: sportsmanUnitList.map(
                                    (item) => WidgetLabelAndValue(
                                        label: item['label'],
                                        value: item['value']))
                                .toList(),
                          )
                      );
                      if(result != null){
                        final selectedUnit = sportsmanUnitList.firstWhere((element) => element['label'] == result)['value'];
                        setState(() {
                          unitReceivedData = selectedUnit ?? '';
                          unitController.text = unitReceivedData ?? '';
                        });
                      }
                    },
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
                    child: Column(
                      children: [
                        PremiumAndTypesWidget(
                          typesTxt: 'sportsman_plan'.tr(),
                        ),
                        Divider(
                          color: context.appColors.colorPrimary,
                        ),
                        RadioListTile<String>(
                          title: NormalTxtWidget(txt: 'Yes', fontColor: context.appColors.colorLabel,),
                          value: 'Yes',
                          groupValue: abroad,
                          onChanged: (value){
                            setState(() {
                              abroad = value!;
                            });
                          },
                        ),
                        RadioListTile<String>(
                          title: NormalTxtWidget(txt: 'No', fontColor: context.appColors.colorLabel,),
                          value: 'No',
                          groupValue: abroad,
                          onChanged: (value){
                            setState(() {
                              abroad = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: kMarginCardMedium_2,
                  ),
                  if(abroad == 'Yes')
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelTxtInFormFieldWidget(labelTxt: 'sportsman_period'.tr()),
                        const SizedBox(
                          height: kMarginSmall,
                        ),
                        const MinMaxLabelTxtWidget(labelTxt: AppStrings.sportsmanPeriodMinMaxTxt),
                        const SizedBox(
                          height: kMarginSmall,
                        ),
                        CustomTextFormFieldWidget(
                          hintTxt: 'sportsman_period_hint_txt'.tr(),
                          textController: periodTxtController,
                          validator: validatePeriod,
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      bottomNavigationBar: NextBtnWidget(
        formKey: formKey,
        onNextPressed: () => _onSubmit(),
        txt: 'next_btn_txt'.tr(),
      ),
    );
  }
}

class PremiumAndTypesWidget extends StatelessWidget {
  const PremiumAndTypesWidget({
    super.key,
    required this.typesTxt,
  });

  final String typesTxt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: kMarginCardMedium,
        right: kMarginCardMedium,
        top: kMarginSmall_3,
        bottom: kMarginSmall_3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child: NormalTxtWidget(txt: typesTxt, fontSize: textSmall2X, fontColor: context.appColors.colorLabel,)),
        ],
      ),
    );
  }
}
