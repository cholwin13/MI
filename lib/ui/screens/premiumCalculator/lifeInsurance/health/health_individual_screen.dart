import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/coverage_type_picker_list.dart';
import '../../../../widgets/premium_details_arguments_list.dart';
import '../../../../widgets/selectable_grid_view_vo.dart';
import '../../../../widgets/widget_arrow_text_form_field.dart';
import '../../../../widgets/widget_date_picker_text_form_field.dart';
import '../../../../widgets/widget_label.dart';
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
  String? unitReceivedData;

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

  List<WidgetLabel> seamenUnitList = [
    WidgetLabel(label: '1 Unit'),
    WidgetLabel(label: '2 Unit'),
    WidgetLabel(label: '3 Unit'),
    WidgetLabel(label: '4 Unit'),
    WidgetLabel(label: '5 Unit'),
    WidgetLabel(label: '6 Unit'),
    WidgetLabel(label: '7 Unit'),
    WidgetLabel(label: '8 Unit'),
    WidgetLabel(label: '9 Unit'),
    WidgetLabel(label: '10 Unit'),
    WidgetLabel(label: '11 Unit'),
    WidgetLabel(label: '12 Unit'),
    WidgetLabel(label: '13 Unit'),
    WidgetLabel(label: '14 Unit'),
    WidgetLabel(label: '15 Unit'),
    WidgetLabel(label: '16 Unit'),
    WidgetLabel(label: '17 Unit'),
    WidgetLabel(label: '18 Unit'),
    WidgetLabel(label: '19 Unit'),
    WidgetLabel(label: '20 Unit'),
    WidgetLabel(label: '21 Unit'),
    WidgetLabel(label: '22 Unit'),
    WidgetLabel(label: '23 Unit'),
    WidgetLabel(label: '24 Unit'),
    WidgetLabel(label: '25 Unit'),
  ];

  final List<SelectableGridViewVO> paymentCardList = [
    SelectableGridViewVO(id: 3, title: 'quarter'.tr()),
    SelectableGridViewVO(id: 3, title: 'semi_annual'.tr()),
  ];

  @override
  Widget build(BuildContext context) {
    DateTime todayDate = DateTime.now();
    final lastDob =
    DateTime(todayDate.year - 5, todayDate.month, todayDate.day - 1);
    final startDob =
    DateTime(todayDate.year - 76, todayDate.month, todayDate.day);

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
                      Routes.coverageTypePickerPath.path,
                      extra: CoverageTypePickerList(
                          title: 'health_insurance',
                          appBarIcon: AppImages.lifeHealthIcon,
                          coverageTypeTitle: 'travel_insure_unit'.tr(),
                          labelList: seamenUnitList
                      )
                  );
                  setState(() {
                    unitReceivedData = result as String?;
                    unitController.text = unitReceivedData ?? '';
                  });
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
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NextBtnWidget(
        formKey: formKey,
        onNextPressed: () {
          final isValid = formKey.currentState?.validate();
          if (isValid!) {
            CustomNavigationHelper.router.push(
                Routes.healthAdditionalCoverPath.path
            );
          }
        },
        txt: 'next_btn_txt'.tr(),
      ),
    );
  }
}
