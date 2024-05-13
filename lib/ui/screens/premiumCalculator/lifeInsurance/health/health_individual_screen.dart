import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/ui/screens/premiumCalculator/lifeInsurance/health/widget/widget_health.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/coverage_type_picker.dart';
import '../../../../widgets/selectable_grid_view_vo.dart';
import '../../../../widgets/widget_arrow_text_form_field.dart';
import '../../../../widgets/widget_date_picker_text_form_field.dart';
import '../../../../widgets/widget_label_and_value.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_selectable_grid_view.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';
import '../widget/widget_period_and_payment.dart';

class HealthIndividualScreen extends StatefulWidget {
  const HealthIndividualScreen({super.key});

  @override
  State<HealthIndividualScreen> createState() => _HealthIndividualScreenState();
}

class _HealthIndividualScreenState extends State<HealthIndividualScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController dobController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController unitController = TextEditingController();

  String age = '';
  int unit = 0;
  String paymentId = '';
  String? unitReceivedData;
  late DateTime todayDate;
  late DateTime lastDob;
  late DateTime startDob;
  late SelectableGridViewVO selectedPaymentVO;

  String? validateDOB(value) {
    if (value!.isEmpty) {
      return AppStrings.dateOfBirthErrTxt;
    } else {
      return null;
    }
  }

  String? validateUnit(value) {
    if (value!.isEmpty) {
      return AppStrings.seamenErrTxt;
    } else {
      return null;
    }
  }

  List<Map<String, dynamic>> healthUnitList = [
    {"label": '1 Unit', "value": "1", 'insureAmt': "1000000"},
    {"label": '2 Unit', "value": "2", 'insureAmt': "2000000"},
    {"label": '3 Unit', "value": "3", 'insureAmt': "3000000"},
    {"label": '4 Unit', "value": "4", 'insureAmt': "4000000"},
    {"label": '5 Unit', "value": "5", 'insureAmt': "5000000"},
    {"label": '6 Unit', "value": "1", 'insureAmt': "1000000"},
    {"label": '7 Unit', "value": "2", 'insureAmt': "2000000"},
    {"label": '8 Unit', "value": "3", 'insureAmt': "3000000"},
    {"label": '9 Unit', "value": "4", 'insureAmt': "4000000"},
    {"label": '10 Unit', "value": "5", 'insureAmt': "5000000"},
    {"label": '11 Unit', "value": "1", 'insureAmt': "1000000"},
    {"label": '12 Unit', "value": "2", 'insureAmt': "2000000"},
    {"label": '13 Unit', "value": "3", 'insureAmt': "3000000"},
    {"label": '14 Unit', "value": "4", 'insureAmt': "4000000"},
    {"label": '15 Unit', "value": "5", 'insureAmt': "5000000"},
    {"label": '16 Unit', "value": "1", 'insureAmt': "1000000"},
    {"label": '17 Unit', "value": "2", 'insureAmt': "2000000"},
    {"label": '18 Unit', "value": "3", 'insureAmt': "3000000"},
    {"label": '19 Unit', "value": "4", 'insureAmt': "4000000"},
    {"label": '20 Unit', "value": "5", 'insureAmt': "5000000"},
    {"label": '21 Unit', "value": "1", 'insureAmt': "1000000"},
    {"label": '22 Unit', "value": "2", 'insureAmt': "2000000"},
    {"label": '23 Unit', "value": "3", 'insureAmt': "3000000"},
    {"label": '24 Unit', "value": "4", 'insureAmt': "4000000"},
    {"label": '25 Unit', "value": "5", 'insureAmt': "5000000"},
  ];

  final List<SelectableGridViewVO> paymentCardList = [
    SelectableGridViewVO(
        id: 1,
        title: 'lump_sum'.tr(),
        paymentId: "ISSYS0090001000000000429032013"
    ),
    SelectableGridViewVO(
        id: 2,
        title: 'semi_annual'.tr(),
        paymentId: "ISSYS0090001000000000229032013"
    ),
  ];

  @override
  void initState() {
    super.initState();
    todayDate = DateTime.now();
    lastDob =
    DateTime(todayDate.year - 5, todayDate.month, todayDate.day - 1);
    startDob =
    DateTime(todayDate.year - 76, todayDate.month, todayDate.day);
    selectedPaymentVO = paymentCardList.first;
  }

  void _onSubmit(){
    if(formKey.currentState!.validate()){
      age = ageController.text;
      unit = int.parse(unitReceivedData!);
      paymentId = selectedPaymentVO.paymentId!;
          CustomNavigationHelper.router.push(
              Routes.healthAdditionalCoverPath.path,
                  extra: HealthWidget(age, unit, paymentId)
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                          title: 'health_insurance',
                          appBarIcon: AppImages.lifeHealthIcon,
                          coverageTypeTitle: 'travel_insure_unit'.tr(),
                        labelList: healthUnitList.map(
                                (item) => WidgetLabelAndValue(
                                label: item['label'],
                                value: item['value']))
                            .toList(),
                      )
                  );
                  if(result != null){
                    final selectedUnit = healthUnitList.firstWhere((element) => element['label'] == result)['value'];
                    setState(() {
                      unitReceivedData = selectedUnit ?? '';
                      unitController.text = unitReceivedData ?? '';
                    });
                  }
                },
              ),
              const SizedBox(
                height: kMarginMedium_2,
              ),
              const PremiumDetailTxt(
                title: 'select_payment_type',
                image: AppImages.lifeGovShortTermPayment,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: SelectableGridView(
                  cardList: paymentCardList,
                  isLifePC: true,
                  selectedCard: selectedPaymentVO,
                  onCallBack: (index) {
                    setState(() {
                      selectedPaymentVO = index;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NextBtnWidget(
        formKey: formKey,
        onNextPressed: () => _onSubmit(),
        // onNextPressed: () {
        //   final isValid = formKey.currentState?.validate();
        //   if (isValid!) {
        //     CustomNavigationHelper.router.push(
        //         Routes.healthAdditionalCoverPath.path
        //     );
        //   }
        // },
        txt: 'next_btn_txt'.tr(),
      ),
    );
  }
}