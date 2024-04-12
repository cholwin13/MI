import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_date_picker_text_form_field.dart';
import '../../../widgets/widget_dropdown_btn.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widget_product_info_detail_title.dart';
import '../../../widgets/widgte_custom_text_form_field.dart';
import '../widget/widget_buy_online_label_txt.dart';
import '../widget/widget_buy_online_title_text.dart';

class TplDriverInsureInfoScreen extends StatefulWidget {
  const TplDriverInsureInfoScreen({super.key});

  @override
  State<TplDriverInsureInfoScreen> createState() => _TplDriverInsureInfoScreenState();
}

class _TplDriverInsureInfoScreenState extends State<TplDriverInsureInfoScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController nationalIdController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController codeNoController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController policyStartDateController = TextEditingController();
  TextEditingController contactPhNoController = TextEditingController();

  String name = '';
  String nationalId = '';
  String codeNo = '';
  String? driverTypeDropdownValue;
  String? periodYearDropdownValue;
  String address = '';
  String contactPhNo = '';

  handleNameChanged(String value) {
    setState(() {
      name = value;
    });
  }

  handleNationalIdChanged(String value) {
    setState(() {
      nationalId = value;
    });
  }

  handleCodeNoChanged(String value) {
    setState(() {
      codeNo = value;
    });
  }

  handleAddressChanged(String value) {
    setState(() {
      address = value;
    });
  }

  handleContactPhNoChanged(String value) {
    setState(() {
      contactPhNo = value;
    });
  }

  String? validateName(value){
    if(value!.isEmpty){
      return '';
    }else{
      return null;
    }
  }

  String? validateNationalId(value){
    if(value!.isEmpty){
      return '';
    }else{
      return null;
    }
  }

  String? validateDob(value){
    if(value!.isEmpty){
      return '';
    }else{
      return null;
    }
  }

  String? validateCodeNo(value){
    if(value!.isEmpty){
      return '';
    }else{
      return null;
    }
  }

  String? validateAddress(value){
    if(value!.isEmpty){
      return '';
    }else{
      return null;
    }
  }

  String? validatePolicyStartDate(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateContactPhNo(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    DateTime todayDate = DateTime.now();
    final lastDob =
    DateTime(todayDate.year, todayDate.month, todayDate.day - 1);
    final startDob =
    DateTime(todayDate.year - 15, todayDate.month, todayDate.day);

    final policyEndDate = DateTime(todayDate.year, todayDate.month + 3, todayDate.day);
    final policyStartDate = DateTime(todayDate.year, todayDate.month, todayDate.day);

    var driverTypeList = ['Driver Type A', 'Driver Type B', 'Driver Type C'];

    var periodYearList = ['1 year', '2 year', '3 year'];

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kMarginLargeX, vertical: kMarginMedium),
            child: Column(
              children: [
                const ProductInfoDetailTitleWidget(
                    titleTxt: 'tpl_driver_insure_title'
                ),
                const SizedBox(
                  height: kMarginLarge,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.name,
                  isRequire: false,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.nameMm,
                ),
                const SizedBox(
                  height: kMarginCardMedium,
                ),
                CustomTextFormFieldWidget(
                  onChanged: handleNameChanged,
                  hintTxt: '',
                  textController: nameController,
                  validator: validateName,
                  textInputType: TextInputType.text,
                  buyOnlineStyle: true,
                ),
                const SizedBox(
                  height: kMarginLarge,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.nationalIdNo,
                  isRequire: false,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.nationalIdNoMm,
                ),
                const SizedBox(
                  height: kMarginCardMedium,
                ),
                CustomTextFormFieldWidget(
                  onChanged: handleNationalIdChanged,
                  hintTxt: '',
                  textController: nationalIdController,
                  validator: validateNationalId,
                  textInputType: TextInputType.text,
                  buyOnlineStyle: true,
                ),
                const SizedBox(
                  height: kMarginLarge,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.dob,
                  isRequire: false,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.dobMm,
                ),
                const SizedBox(
                  height: kMarginCardMedium,
                ),
                WidgetDatePickerTextFormField(
                  dateController: dobController,
                  validate: validateDob,
                  initialDate: lastDob,
                  firstDate: startDob,
                  lastDate: lastDob,
                  hintTxt: 'dd-mm-yyyy',
                  ageController: ageController,
                  buyOnlineStyle: true,
                ),
                const SizedBox(
                  height: kMarginLarge,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.driverCodeNo,
                  isRequire: false,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.driverCodeNoMm,
                ),
                const SizedBox(
                  height: kMarginCardMedium,
                ),
                CustomTextFormFieldWidget(
                  onChanged: handleCodeNoChanged,
                  hintTxt: '',
                  textController: codeNoController,
                  validator: validateCodeNo,
                  textInputType: TextInputType.text,
                  buyOnlineStyle: true,
                ),
                const SizedBox(
                  height: kMarginLarge,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.typeOfDriver,
                  isRequire: false,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.typeOfDriverMm,
                ),
                const SizedBox(
                  height: kMarginCardMedium,
                ),
                DropDownBtnWidget(
                  dropDownList: driverTypeList,
                  dropDownValue: driverTypeDropdownValue,
                  onValueChanged: (String? newValue) {
                    setState(() {
                      driverTypeDropdownValue = newValue;
                    });
                  },
                  hintTxt: 'SELECT ONE ',
                  errTxt: '',
                  buyOnlineStyle: true,
                ),
                const SizedBox(
                  height: kMarginLarge,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.periodOfYear,
                  isRequire: false,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.periodOfYearMm,
                ),
                const SizedBox(
                  height: kMarginCardMedium,
                ),
                DropDownBtnWidget(
                  dropDownList: periodYearList,
                  dropDownValue: periodYearDropdownValue,
                  onValueChanged: (String? newValue) {
                    setState(() {
                      periodYearDropdownValue = newValue;
                    });
                  },
                  hintTxt: 'SELECT ONE ',
                  errTxt: '',
                  buyOnlineStyle: true,
                ),
                const SizedBox(
                  height: kMarginLarge,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.address,
                  isRequire: false,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.addressMm,
                ),
                const SizedBox(
                  height: kMarginCardMedium,
                ),
                CustomTextFormFieldWidget(
                  onChanged: handleAddressChanged,
                  hintTxt: '',
                  textController: addressController,
                  validator: validateAddress,
                  textInputType: TextInputType.text,
                  buyOnlineStyle: true,
                ),
                const SizedBox(
                  height: kMarginLarge,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.policyStartDate,
                  isRequire: false,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.policyStartDateMm,
                ),
                const SizedBox(
                  height: kMarginCardMedium,
                ),
                WidgetDatePickerTextFormField(
                  dateController: policyStartDateController,
                  validate: validatePolicyStartDate,
                  initialDate: policyStartDate,
                  firstDate: policyStartDate,
                  lastDate: policyEndDate,
                  hintTxt: 'DD-MM-YYYY',
                  buyOnlineStyle: true,
                ),
                const SizedBox(
                  height: kMarginLarge,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.contactPhNo,
                  isRequire: false,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.contactPhNoMm,
                ),
                const SizedBox(
                  height: kMarginCardMedium,
                ),
                CustomTextFormFieldWidget(
                  onChanged: handleContactPhNoChanged,
                  hintTxt: '',
                  textController: contactPhNoController,
                  validator: validateContactPhNo,
                  textInputType: TextInputType.text,
                  buyOnlineStyle: true,
                ),
                const SizedBox(
                  height: kMarginLarge,
                ),
                NextBtnWidget(
                  onNextPressed: () {
                    final isValid = formKey.currentState?.validate();

                    if (isValid!) {
                      CustomNavigationHelper.router
                          .push(Routes.tplDriverPremiumAndPaymentPath.path);
                    }
                  },
                  txt: AppStrings.submitAndContinue,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                NextBtnWidget(
                  onNextPressed: () {
                    final isValid = formKey.currentState?.validate();

                    if (isValid!) {
                      // CustomNavigationHelper.router
                      //     .push(Routes.outboundAgentPath.path);
                    }
                  },
                  txt: AppStrings.enquiryAndPrintCertificate,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
