import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

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

class InboundInsurePersonInfoScreen extends StatefulWidget {
  const InboundInsurePersonInfoScreen({super.key});

  @override
  State<InboundInsurePersonInfoScreen> createState() =>
      _InboundInsurePersonInfoScreenState();
}

class _InboundInsurePersonInfoScreenState
    extends State<InboundInsurePersonInfoScreen> {
  final formKey = GlobalKey<FormState>();
  String? selectedOption;
  String passportNo = '';
  String insureName = '';
  String? genderDropdownValue;
  int? planDropDownValue;
  String? receivedData;
  String residentAddress = '';
  String? residentReceivedData;
  String addressInMyanmar = '';
  String insureEmail = '';
  String contactPhoneNo = '';
  String? contactNoCountryCode;
  String? childGenderDropDownValue;
  String guardianceName = '';
  String childRelationship = '';
  String childName = '';
  final TextEditingController insureNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController estimatedArrivalDateController =
      TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController journeyToController = TextEditingController();
  TextEditingController residentAddressController = TextEditingController();
  TextEditingController residentCountryController = TextEditingController();
  TextEditingController addressInMyanmarController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactPhoneNoController = TextEditingController();
  TextEditingController contactNoCountryCodeController =
      TextEditingController();
  TextEditingController childNameController = TextEditingController();
  TextEditingController childDobController = TextEditingController();
  TextEditingController guardianceNameController = TextEditingController();
  TextEditingController childRelationshipController = TextEditingController()
;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedOption = 'passport_holder';
    journeyToController.text = "Myanmar";
  }

  void updateSelectedOption(String option) {
    setState(() {
      selectedOption = option;
      print('Select $selectedOption');
    });
  }

  void handleInsureNameChanged(String value) {
    setState(() {
      insureName = value;
    });
  }

  void handleResidentAddressChanged(String value) {
    setState(() {
      residentAddress = value;
    });
  }

  void handleAddressInMyanmarChanged(String value) {
    setState(() {
      addressInMyanmar = value;
    });
  }

  void handleEmailChanged(String value) {
    setState(() {
      insureEmail = value;
    });
  }

  void handleContactPhoneNoChanged(String value) {
    setState(() {
      contactPhoneNo = value;
    });
  }

  void handleChildNameChanged(String value) {
    setState(() {
      childName = value;
    });
  }

  void handleGuardianceNameChanged(String value) {
    setState(() {
      guardianceName = value;
    });
  }

  void handleChildRelationshipChanged(String value) {
    setState(() {
      childRelationship = value;
    });
  }

  String? validateInsureName(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateResidentAddress(value) {
    if (value!.isEmpty) {
      return '';
    } else {
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

  String? validateEstimatedArrivalDate(value) {
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

  String? validateResidentCountry(value) {
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

  String? validateContactNoCountryCode(value) {
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

    final lastChildDob =
    DateTime(todayDate.year, todayDate.month, todayDate.day - 1);
    final startChildDob =
    DateTime(todayDate.year - 18, todayDate.month, todayDate.day);

    var genderList = ['Male', 'Female'];

    var childGenderList = ['Male', 'Female'];

    var coverageTypes = [
      {"label": "15 DAYS", "value": 15},
      {"label": "30 DAYS", "value": 30},
      {"label": "60 DAYS", "value": 60},
      {"label": "90 DAYS", "value": 90},
      {"label": "120 DAYS", "value": 120},
      {"label": "150 DAYS", "value": 150},
      {"label": "180 DAYS", "value": 180},
      {"label": "210 DAYS", "value": 210},
      {"label": "240 DAYS", "value": 240},
      {"label": "270 DAYS", "value": 270},
      {"label": "300 DAYS", "value": 300},
      {"label": "330 DAYS", "value": 330},
      {"label": "360 DAYS", "value": 360},
    ];

    final lastEstimatedArrivalDate =
        DateTime(todayDate.year + 2, todayDate.month, todayDate.day);
    final startEstimatedArrivalDate =
        DateTime(todayDate.year, todayDate.month, todayDate.day);

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
                      labelTxt: AppStrings.estimatedArrivalDate,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    WidgetDatePickerTextFormField(
                      dateController: estimatedArrivalDateController,
                      validate: validateEstimatedArrivalDate,
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
                      labelTxt: AppStrings.journeyTo,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    CustomTextFormFieldWidget(
                      hintTxt: '',
                      textController: journeyToController,
                      readOnlyValue: true,
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.coveragePlanBuyOnline,
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
                      labelTxt: AppStrings.insuredContactPhoneNo,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    BuyOnlineContactNoInfoRowWidget(
                      contactNoCountryCodeController:
                          contactNoCountryCodeController,
                      validateContactNoCountryCode:
                          validateContactNoCountryCode,
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
                      labelTxt: AppStrings.insureEmail,
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
                      labelTxt: AppStrings.residentAddress,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleResidentAddressChanged,
                      hintTxt: '',
                      textController: residentAddressController,
                      validator: validateResidentAddress,
                      textInputType: TextInputType.text,
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.residentCountry,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    WidgetArrowTextFormFieldWidget(
                      controller: residentCountryController,
                      hintText: 'SELECT ONE',
                      validator: validateResidentCountry,
                      onPressed: () async {
                        final result = await CustomNavigationHelper.router
                            .push(Routes.countryScreenPath.path);

                        setState(() {
                          residentReceivedData = result as String;
                          residentCountryController.text =
                              residentReceivedData ?? '';
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
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      WidgetDatePickerTextFormField(
                        dateController: childDobController,
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
                  ),)
                ],
              )
                  : const SizedBox(),
              Padding(
                padding: const EdgeInsets.only(
                    right: kMarginMedium, top: kMarginMedium),
                child: NextBtnWidget(
                  onNextPressed: () {
                    final isValid = formKey.currentState?.validate();

                    if (isValid!) {
                      CustomNavigationHelper.router
                          .push(Routes.inboundBeneficiaryPath.path);
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

