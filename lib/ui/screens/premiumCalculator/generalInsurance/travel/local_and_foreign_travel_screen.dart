import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/coverage_type_picker_list.dart';
import '../../../../widgets/widget_arrow_text_form_field.dart';
import '../../../../widgets/widget_label.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';
import '../../../../widgets/premium_details_arguments_list.dart';

class LocalAndForeignTravel extends StatefulWidget {
  const LocalAndForeignTravel({super.key});

  @override
  State<LocalAndForeignTravel> createState() => _LocalAndForeignTravelState();
}

class _LocalAndForeignTravelState extends State<LocalAndForeignTravel> {
  final formKey = GlobalKey<FormState>();
  TextEditingController deptDateInputController = TextEditingController();
  TextEditingController arrivalDateController = TextEditingController();
  TextEditingController insureUnitController = TextEditingController();
  TextEditingController sumInsureController = TextEditingController();

  DateTime? selectedDeptDate;
  String? insureUnitReceivedData;
  String sumInsure = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    deptDateInputController.text = '';
    arrivalDateController.text = '';
  }

  String? validateDeptDate(value){
    if (value!.isEmpty) {
      return AppStrings.deptDateErrTxt;
    } else {
      return null;
    }
  }

  String? validateArrivalDate(value){
    if (value!.isEmpty) {
      return AppStrings.arrivalDateErrTxt;
    } else {
      return null;
    }
  }

  String? validateInsureUnit(value){
    if (value!.isEmpty) {
      return AppStrings.travelEnterInsuranceUnit;
    }else {
      return null;
    }
  }

  String? validateSI(value){
    if (value!.isEmpty) {
      return AppStrings.sumInsureErrTxt;
    } else {
      return null;
    }
  }

  void handleSIChanged(String value) {
    setState(() {
      sumInsure = value;
    });
  }

  List<WidgetLabel> insureUnitList = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalTravelIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: kMarginMedium_2,
              ),
              const ProductInfoDetailTitleWidget(
                  titleTxt: 'travel_title'),
              const SizedBox(
                height: kMarginMedium_2,
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: kMarginCardMedium_2),
                child: Column(
                  children: [
                    LabelTxtInFormFieldWidget(labelTxt: 'travel_dept_date'.tr()),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    WidgetDatePickerTextFormField(
                      controller: deptDateInputController,
                      validate: validateDeptDate,
                      initialDate: selectedDeptDate ?? DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 365 * 100)),
                      hintTxt: 'Choose Departure Date',
                      onDateSelected: (DateTime selectedDate) {
                        setState(() {
                          selectedDeptDate = selectedDate;
                          arrivalDateController.clear();
                        });
                      },
                    ),
                    const SizedBox(
                      height: kMarginMedium_2,
                    ),
                    LabelTxtInFormFieldWidget(labelTxt: 'travel_arrival_date'.tr()),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    WidgetDatePickerTextFormField(
                      controller: arrivalDateController,
                      validate: validateArrivalDate,
                      initialDate: selectedDeptDate ?? DateTime.now(),
                      firstDate: selectedDeptDate ?? DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 365 * 100)),
                      hintTxt: 'Choose Arrival Date',
                      // enable: selectedDeptDate != null,
                    ),
                    const SizedBox(
                      height: kMarginMedium_2,
                    ),
                    LabelTxtInFormFieldWidget(labelTxt: 'travel_insure_unit'.tr()),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    WidgetArrowTextFormFieldWidget(
                      controller: insureUnitController,
                      hintText: 'travel_insure_hint_txt'.tr(),
                      validator: validateInsureUnit,
                      onPressed: () async {
                        final result = await CustomNavigationHelper.router.push(
                            Routes.coverageTypePickerPath.path,
                            extra: CoverageTypePickerList(
                                title: 'travel_title',
                                appBarIcon: AppImages.generalTravelIcon,
                                coverageTypeTitle: 'travel_unit'.tr(),
                                labelList: insureUnitList
                            )
                        );
                        setState(() {
                          insureUnitReceivedData = result as String?;
                          insureUnitController.text = insureUnitReceivedData ?? '';
                        });
                      },
                    ),
                    const SizedBox(
                      height: kMarginMedium_2,
                    ),
                    LabelTxtInFormFieldWidget(
                        labelTxt: 'motor_si_mmk'.tr()),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleSIChanged,
                      hintTxt: 'motor_si_txt'.tr(),
                      textController: sumInsureController,
                      validator: validateSI,
                      readOnlyValue: true,
                    ),
                  ],
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

          setState(() {
            sumInsureController.text = '100';
          });
          if (isValid!) {
            CustomNavigationHelper.router.push(
                Routes.travelPremiumDetailsPath.path,
                extra: PremiumDetailsArguments(
                    title: 'travel_title', isMMK: true, appBarIcon: AppImages.generalTravelIcon));
          }
        },
        txt: 'next_btn_txt'.tr(),
      ),
    );
  }
}

class WidgetDatePickerTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?) validate;
  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final String hintTxt;
  final Function(DateTime)? onDateSelected;
  // final bool? enable;

  const WidgetDatePickerTextFormField({super.key,
    required this.controller,
    required this.validate,
    required this.initialDate,
    required this.firstDate,
    required this.lastDate, required this.hintTxt, this.onDateSelected,
    // this.enable,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(kMarginCardMedium),
          enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: context.appColors.colorPrimary),
            borderRadius: BorderRadius.circular(boxRadius_2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: context.appColors.colorPrimary),
            borderRadius: BorderRadius.circular(boxRadius_2),
          ),
          errorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: context.appColors.colorPrimary),
            borderRadius: BorderRadius.circular(boxRadius_2),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: context.appColors.colorPrimary),
            borderRadius: BorderRadius.circular(boxRadius_2),
          ),
          hintText: hintTxt,
          hintStyle: TextStyle(
            fontSize: 12.0,
            color: context.appColors.colorTextInputPlaceHolder,
          ),
          isDense: true,
          suffixIcon: Icon(Icons.date_range, color: context.appColors.colorPrimary, size: 25,)
      ),
      readOnly: true,
      // enabled: enable,
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: initialDate,
          firstDate: firstDate,
          lastDate: lastDate,
          cancelText: 'CANCEL',
          helpText: '',
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                datePickerTheme: DatePickerThemeData(
                  headerBackgroundColor:
                  context.appColors.colorDatePicker,
                  headerForegroundColor: Colors.white,
                  cancelButtonStyle: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  confirmButtonStyle: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(boxRadius_2), // Adjust the radius as needed
                  ),
                ),
              ),
              child: child!,
            );
          },
        );
        if (pickedDate != null) {
          // print(pickedDate);
          if (onDateSelected != null) {
            onDateSelected!(pickedDate);
          }

          String formatDate = DateFormat('dd-MM-yyyy').format(pickedDate);

          controller.text = formatDate;
        }
      },
      validator: validate,
    );
  }
}