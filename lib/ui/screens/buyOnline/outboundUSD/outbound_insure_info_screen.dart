import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_arrow_text_form_field.dart';
import '../../../widgets/widget_date_picker_text_form_field.dart';
import '../../../widgets/widget_dropdown_btn.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widget_product_info_detail_title.dart';
import '../../../widgets/widgte_custom_text_form_field.dart';
import '../widget/widget_buy_online_contact_no_row.dart';
import '../widget/widget_buy_online_dropdown.dart';
import '../widget/widget_buy_online_label_txt.dart';
import '../widget/widget_buy_online_radio_list_title.dart';
import '../widget/widget_buy_online_title_text.dart';

class OutboundInsureInfoScreen extends StatefulWidget {
  const OutboundInsureInfoScreen({super.key});

  @override
  State<OutboundInsureInfoScreen> createState() => _OutboundInsureInfoScreenState();
}

class _OutboundInsureInfoScreenState extends State<OutboundInsureInfoScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController insureNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController estimatedDeptDateController = TextEditingController();
  TextEditingController journeyFromController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController policyStartDateController = TextEditingController();
  TextEditingController contactNoCountryCodeController = TextEditingController();
  TextEditingController contactPhoneNoController = TextEditingController();
  TextEditingController foreignContactNoCountryCodeController = TextEditingController();
  TextEditingController foreignContactPhoneNoController = TextEditingController();
  TextEditingController fatherNameController = TextEditingController();
  TextEditingController raceController = TextEditingController();
  TextEditingController occupationController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressInMyanmarController = TextEditingController();
  TextEditingController addressAbroadController = TextEditingController();
  TextEditingController destinationCountryController = TextEditingController();
  TextEditingController childNameController = TextEditingController();
  TextEditingController childDobController = TextEditingController();
  TextEditingController childAgeController = TextEditingController();
  TextEditingController guardianceNameController = TextEditingController();
  TextEditingController childRelationshipController = TextEditingController();

  String? selectedOption;
  String insureName = '';
  String? genderDropdownValue;
  String? receivedData;
  int? planDropDownValue;
  int? packageDropDownValue;
  String? contactNoCountryCode;
  String contactPhoneNo = '';
  String? foreignContactNoCountryCode;
  String foreignContactPhoneNo = '';
  String fatherName = '';
  String race = '';
  String? occupation = '';
  String? currency;
  String email = '';
  String addressInMyanmar = '';
  String addressInAbroad = '';
  String? destinationReceivedData;
  String childName = '';
  String? childGenderDropDownValue;
  String guardianceName = '';
  String childRelationship = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedOption = 'passport_holder';
    journeyFromController.text = "MYANMAR";
    currency = "SINGLE";
  }

  void updateSelectedOption(String option) {
    setState(() {
      selectedOption = option;
      // print('Select $selectedOption');
    });
  }

  void updateMartialStatus(String option) {
    setState(() {
      currency = option;
    });
  }

  handleInsureNameChanged(String value){
    setState(() {
      insureName = value;
    });
  }

  handleContactPhoneNoChanged(String value) {
    setState(() {
      contactPhoneNo = value;
    });
  }

  handleForeignContactPhoneNoChanged(String value) {
    setState(() {
      foreignContactPhoneNo = value;
    });
  }

  handleFatherNameChanged(String value) {
    setState(() {
      fatherName = value;
    });
  }

  handleRaceChanged(String value) {
    setState(() {
      race = value;
    });
  }

  handleOccupationChanged(String value) {
    setState(() {
      occupation = value;
    });
  }

  handleEmailChanged(String value) {
    setState(() {
      email = value;
    });
  }

  handleAddressInMyanmarChanged(String value) {
    setState(() {
      addressInMyanmar = value;
    });
  }

  handleAddressAbroadChanged(String value) {
    setState(() {
      addressInAbroad = value;
    });
  }

  handleChildNameChanged(String value) {
    setState(() {
      childName = value;
    });
  }

  handleGuardianceNameChanged(String value) {
    setState(() {
      guardianceName = value;
    });
  }

  handleChildRelationshipChanged(String value) {
    setState(() {
      childRelationship = value;
    });
  }

  String? validateInsureName(value){
    if(value!.isEmpty){
      return '';
    }else{
      return null;
    }
  }

  String? validateDOB(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateEstimatedDeptDate(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateCountry(value) {
    if (value!.isEmpty) {
      return '';
    } else {
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

  String? validateAddressAbroad(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateDestinationCountry(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateChildName(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateChildDOB(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateGuardianceName(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateChildRelationship(value) {
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

    final lastEstimatedArrivalDate =
    DateTime(todayDate.year + 2, todayDate.month, todayDate.day);
    final startEstimatedArrivalDate =
    DateTime(todayDate.year, todayDate.month, todayDate.day);

    final policyEndDate = DateTime(todayDate.year, todayDate.month + 3, todayDate.day);
    final policyStartDate = DateTime(todayDate.year, todayDate.month, todayDate.day);

    final lastChildDob = DateTime(todayDate.year, todayDate.month, todayDate.day - 1);
    final startChildDob = DateTime(todayDate.year - 18, todayDate.month, todayDate.day);

    var genderList = ['Male', 'Female'];

    var coverageTypes = [
      {"label": "5 DAYS", "value": 5},
      {"label": "10 DAYS", "value": 10},
      {"label": "15 DAYS", "value": 15},
      {"label": "30 DAYS", "value": 30},
      {"label": "60 DAYS", "value": 60},
      {"label": "90 DAYS", "value": 90},
      {"label": "120 DAYS", "value": 120},
      {"label": "150 DAYS", "value": 150},
      {"label": "180 DAYS", "value": 180},
    ];

    var packages = [
      {"label": "USD 10,000", "value": 10000},
      {"label": "USD 30,000", "value": 30000},
      {"label": "USD 50,000", "value": 50000},
    ];

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
                titleTxt: AppStrings.insuredInfo,
                pageNo: AppStrings.pageNo2,
              ),
              Divider(
                color: context.appColors.colorLabel,
              ),
              RadioListTitleWidget(
                titleText: AppStrings.buyForPassportHolder,
                value: 'passport_holder',
                groupValue: selectedOption,
                onChanged: (value) {
                  updateSelectedOption(value!);
                },
              ),
              RadioListTitleWidget(
                titleText: AppStrings.buyForChild,
                value: 'child',
                groupValue: selectedOption,
                onChanged: (value) {
                  updateSelectedOption(value!);
                },
              ),
              const SizedBox(
                height: kMarginMedium,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kMarginLargeX, vertical: kMarginCardMedium),
                child: Column(
                  children: [
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.insureNamePassport,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.insureNamePassportMm,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleInsureNameChanged,
                      hintTxt: '',
                      textController: insureNameController,
                      validator: validateInsureName,
                      textInputType: TextInputType.text,
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.dobPassport,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.dobPassportMm,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    WidgetDatePickerTextFormField(
                      dateController: dobController,
                      validate: validateDOB,
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
                      labelTxt: AppStrings.genderPassport,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.genderPassportMm,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    DropDownBtnWidget(
                      dropDownList: genderList,
                      dropDownValue: genderDropdownValue,
                      onValueChanged: (String? newValue) {
                        setState(() {
                          genderDropdownValue = newValue;
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
                      labelTxt: AppStrings.estimatedDeptDate,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.estimatedDeptDateMm,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    WidgetDatePickerTextFormField(
                      dateController: estimatedDeptDateController,
                      validate: validateEstimatedDeptDate,
                      initialDate: startEstimatedArrivalDate,
                      firstDate: startEstimatedArrivalDate,
                      lastDate: lastEstimatedArrivalDate,
                      hintTxt: 'DD-MM-YYYY',
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.journeyFrom,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.journeyFromMm,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    CustomTextFormFieldWidget(
                      hintTxt: '',
                      textController: journeyFromController,
                      readOnlyValue: true,
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.journeyTo,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.journeyToMm,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    WidgetArrowTextFormFieldWidget(
                      controller: countryController,
                      hintText: 'SELECT ONE',
                      validator: validateCountry,
                      onPressed: () async {
                        final result = await CustomNavigationHelper.router
                            .push(Routes.countryScreenPath.path);

                        setState(() {
                          receivedData = result as String;
                          countryController.text = receivedData ?? '';
                        });
                      },
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
                      labelTxt: AppStrings.coveragePlanBuyOnline,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.coveragePlanBuyOnlineMm,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    BuyOnlineDropDownWidget(
                      dropDownList: coverageTypes
                          .map((item) => {
                        'label': item['label'] as String,
                        'value': item['value'] as int,
                      })
                          .toList(),
                      dropDownValue: planDropDownValue,
                      onValueChanged: (value) {
                        setState(() {
                          planDropDownValue = value;
                        });
                      },
                      hintTxt: 'SELECT ONE',
                      errTxt: '',
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.packages,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.packagesMm,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    BuyOnlineDropDownWidget(
                      dropDownList: packages
                          .map((item) => {
                        'label': item['label'] as String,
                        'value': item['value'] as int,
                      })
                          .toList(),
                      dropDownValue: packageDropDownValue,
                      onValueChanged: (value) {
                        setState(() {
                          packageDropDownValue = value;
                        });
                      },
                      hintTxt: 'SELECT ONE',
                      errTxt: '',
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.insuredContactPhoneNo,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.insuredContactPhoneNoMm,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    BuyOnlineContactNoInfoRowWidget(
                      contactNoCountryCodeController: contactNoCountryCodeController,
                      validateContactNoCountryCode: validateContactNoCountryCode,
                      countryCodePressed: () async {
                        final result = await CustomNavigationHelper.router
                            .push(Routes.countryCodeScreenPath.path);

                        setState(() {
                          contactNoCountryCode = result as String;
                          contactNoCountryCodeController.text =
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
                      labelTxt: AppStrings.foreignContactNo,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.foreignContactNoMm,
                      isRequire: false,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    BuyOnlineContactNoInfoRowWidget(
                      contactNoCountryCodeController: foreignContactNoCountryCodeController,
                      countryCodePressed: () async {
                        final result = await CustomNavigationHelper.router
                            .push(Routes.countryCodeScreenPath.path);

                        setState(() {
                          foreignContactNoCountryCode = result as String;
                          foreignContactNoCountryCodeController.text =
                              contactNoCountryCode ?? '';
                        });
                      },
                      handleContactPhoneNoChanged: handleForeignContactPhoneNoChanged,
                      contactPhoneNoController: foreignContactPhoneNoController,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.fatherName,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.fatherNameMm,
                      isRequire: false,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleFatherNameChanged,
                      hintTxt: '',
                      textController: fatherNameController,
                      textInputType: TextInputType.text,
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.race,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.raceMm,
                      isRequire: false,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleRaceChanged,
                      hintTxt: '',
                      textController: raceController,
                      textInputType: TextInputType.text,
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.occupation,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.occupationMm,
                      isRequire: false,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleOccupationChanged,
                      hintTxt: '',
                      textController: occupationController,
                      textInputType: TextInputType.text,
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.martialStatus,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.martialStatusMm,
                      isRequire: false,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: RadioListTile<String>(
                            title: Text('SINGLE', style: context.appFonts.bodySmall()),
                            value: 'SINGLE',
                            groupValue: currency,
                            onChanged: (value) {
                              updateMartialStatus(value!);
                            },
                          ),
                        ),

                        Flexible(
                          child: RadioListTile<String>(
                            title: Text('MARRIED', style: context.appFonts.bodySmall()),
                            value: 'MARRIED',
                            groupValue: currency,
                            onChanged: (value) {
                              updateMartialStatus(value!);
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.insureEmailAddress,
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
                      labelTxt: AppStrings.addressBuyOnline,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.addressBuyOnlineMm,
                      isRequire: false,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleAddressInMyanmarChanged,
                      hintTxt: '',
                      textController: addressInMyanmarController,
                      textInputType: TextInputType.text,
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.addressAbroad,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.addressAbroadMm,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleAddressAbroadChanged,
                      hintTxt: '',
                      textController: addressAbroadController,
                      validator: validateAddressAbroad,
                      textInputType: TextInputType.text,
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.destinationCountry,
                      isRequire: false,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.destinationCountryMm,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    WidgetArrowTextFormFieldWidget(
                      controller: destinationCountryController,
                      hintText: 'SELECT ONE',
                      validator: validateDestinationCountry,
                      onPressed: () async {
                        final result = await CustomNavigationHelper.router
                            .push(Routes.countryScreenPath.path);

                        setState(() {
                          destinationReceivedData = result as String;
                          destinationCountryController.text =
                              destinationReceivedData ?? '';
                        });
                      },
                      buyOnlineStyle: true,
                    ),
                  ],
                ),
              ),
              selectedOption == 'child'
              ? Column(
                children: [
                  const SizedBox(
                    height: kMarginMedium,
                  ),
                  const ProductInfoDetailTitleWidget(
                    titleTxt: 'buy_for_child_title',
                  ),
                  Divider(
                    color: context.appColors.colorPrimary,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kMarginLargeX, vertical: kMarginCardMedium),
                    child: Column(
                      children: [
                        const BuyOnlineLabelTxtWidget(
                          labelTxt: AppStrings.childName,
                          isRequire: false,
                        ),
                        const BuyOnlineLabelTxtWidget(
                          labelTxt: AppStrings.childNameMm,
                        ),
                        const SizedBox(
                          height: kMarginCardMedium,
                        ),
                        CustomTextFormFieldWidget(
                          onChanged: handleChildNameChanged,
                          hintTxt: '',
                          textController: childNameController,
                          validator: validateChildName,
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
                          dateController: childDobController,
                          ageController: childAgeController,
                          validate: validateChildDOB,
                          initialDate: lastChildDob,
                          firstDate: startChildDob,
                          lastDate: lastChildDob,
                          hintTxt: 'DD-MM-YYYY',
                          buyOnlineStyle: true,
                        ),
                        const SizedBox(
                          height: kMarginLarge,
                        ),
                        const BuyOnlineLabelTxtWidget(
                          labelTxt: AppStrings.childGender,
                        ),
                        const BuyOnlineLabelTxtWidget(
                          labelTxt: AppStrings.childGenderMm,
                        ),
                        const SizedBox(
                          height: kMarginCardMedium,
                        ),
                        DropDownBtnWidget(
                          dropDownList: genderList,
                          dropDownValue: childGenderDropDownValue,
                          onValueChanged: (String? newValue) {
                            setState(() {
                              childGenderDropDownValue = newValue;
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
                          labelTxt: AppStrings.childGuardianceName,
                          isRequire: false,
                        ),
                        const BuyOnlineLabelTxtWidget(
                          labelTxt: AppStrings.childGuardianceNameMm,
                        ),
                        const SizedBox(
                          height: kMarginCardMedium,
                        ),
                        CustomTextFormFieldWidget(
                          onChanged: handleGuardianceNameChanged,
                          hintTxt: '',
                          textController: guardianceNameController,
                          validator: validateGuardianceName,
                          textInputType: TextInputType.text,
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
                          onChanged: handleChildRelationshipChanged,
                          hintTxt: '',
                          textController: childRelationshipController,
                          validator: validateChildRelationship,
                          textInputType: TextInputType.text,
                          buyOnlineStyle: true,
                        ),
                      ],
                    ),
                  )
                ],
              ): SizedBox(),
              Padding(
                padding: const EdgeInsets.only(
                    right: kMarginMedium, top: kMarginMedium),
                child: NextBtnWidget(
                  onNextPressed: () {
                    final isValid = formKey.currentState?.validate();

                    if (isValid!) {
                      CustomNavigationHelper.router
                          .push(Routes.outboundBeneficiaryInfoPath.path);
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
