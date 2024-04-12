import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_date_picker_text_form_field.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widgte_custom_text_form_field.dart';
import '../widget/widget_buy_online_contact_no_row.dart';
import '../widget/widget_buy_online_label_txt.dart';
import '../widget/widget_buy_online_title_text.dart';

class OutboundMMKBeneficiaryInfoScreen extends StatefulWidget {
  const OutboundMMKBeneficiaryInfoScreen({super.key});

  @override
  State<OutboundMMKBeneficiaryInfoScreen> createState() => _OutboundMMKBeneficiaryInfoScreenState();
}

class _OutboundMMKBeneficiaryInfoScreenState extends State<OutboundMMKBeneficiaryInfoScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController beneNameController = TextEditingController();
  TextEditingController beneDobController = TextEditingController();
  TextEditingController beneAgeController = TextEditingController();
  TextEditingController beneRelationshipController = TextEditingController();
  TextEditingController beneContactNoCountryCodeController = TextEditingController();
  TextEditingController contactPhoneNoController = TextEditingController();
  TextEditingController nationalIdNoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController =  TextEditingController();

  String beneName = '';
  String relationship = '';
  String? contactNoCountryCode;
  String contactPhoneNo = '';
  String nationalIdNo = '';
  String email = '';
  String address = '';

  handleNameChanged(String value){
    setState(() {
      beneName = value;
    });
  }

  handleRelationshipChanged(String value){
    setState(() {
      relationship = value;
    });
  }

  handleContactPhoneNoChanged(String value){
    setState(() {
      contactPhoneNo = value;
    });
  }

  handleNationalIdNoChanged(String value){
    setState(() {
      nationalIdNo = value;
    });
  }

  handleEmailChanged(String value){
    setState(() {
      email = value;
    });
  }

  handleAddressChanged(String value){
    setState(() {
      address = value;
    });
  }

  String? validateName(value){
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateDob(value){
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateRelationship(value){
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateContactNoCountryCode(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateContactNo(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return null;
    }

    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    return !regex.hasMatch(value) ? 'Enter a valid email address' : null;
  }

  String? validateAddress(value) {
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
    DateTime(todayDate.year - 120, todayDate.month, todayDate.day);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalInboundIcon,
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
              const BuyOnlineTitleTxt(
                titleTxt: AppStrings.beneficiaryInfo,
                pageNo: AppStrings.pageNo3,
              ),
              Divider(
                color: context.appColors.colorLabel,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kMarginLargeX, vertical: kMarginCardMedium),
                child: Column(
                  children: [
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
                      textController: beneNameController,
                      validator: validateName,
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
                      dateController: beneDobController,
                      ageController: beneAgeController,
                      validate: validateDob,
                      initialDate: lastDob,
                      firstDate: startDob,
                      lastDate: lastDob,
                      hintTxt: 'DD-MM-YYYY',
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.relationship,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.relationshipMm,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleRelationshipChanged,
                      hintTxt: '',
                      textController: beneRelationshipController,
                      validator: validateRelationship,
                      textInputType: TextInputType.text,
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
                      labelTxt: AppStrings.insuredContactPhoneNoMm,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    BuyOnlineContactNoInfoRowWidget(
                      contactNoCountryCodeController: beneContactNoCountryCodeController,
                      validateContactNoCountryCode: validateContactNoCountryCode,
                      countryCodePressed: () async {
                        final result = await CustomNavigationHelper.router
                            .push(Routes.countryCodeScreenPath.path);

                        setState(() {
                          contactNoCountryCode = result as String;
                          beneContactNoCountryCodeController.text =
                              contactNoCountryCode ?? '';
                        });
                      },
                      handleContactPhoneNoChanged: handleContactPhoneNoChanged,
                      validateContactNo: validateContactNo,
                      contactPhoneNoController: contactPhoneNoController,
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
                      isRequire: false,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleNationalIdNoChanged,
                      hintTxt: '',
                      textController: nationalIdNoController,
                      textInputType: TextInputType.text,
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.email,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.insureEmailAddressMm,
                      isRequire: false,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleEmailChanged,
                      hintTxt: '',
                      textController: emailController,
                      validator: validateEmail,
                      textInputType: TextInputType.text,
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
                      isRequire: false,
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: kMarginMedium, top: kMarginMedium),
                child: NextBtnWidget(
                  onNextPressed: () {
                    final isValid = formKey.currentState?.validate();

                    if (isValid!) {
                      CustomNavigationHelper.router
                          .push(Routes.outboundMMKAgentPath.path);
                      // passportNo = passportNoController.text;
                      // print('Plan is $planDropDownValue');
                    }
                  },
                  txt: 'next_btn_txt'.tr(),
                  buyOnlineStyle: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
