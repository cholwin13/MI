import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/ui/screens/buyOnline/seaman/widget/widget_nrc_text_form_field.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_date_picker_text_form_field.dart';
import '../../../widgets/widget_dropdown_btn.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widget_normal_txt.dart';
import '../../../widgets/widgte_custom_text_form_field.dart';
import '../widget/widget_buy_online_dropdown.dart';
import '../widget/widget_buy_online_label_txt.dart';
import '../widget/widget_buy_online_title_text.dart';

class SeamanInsureInfoScreen extends StatefulWidget {
  const SeamanInsureInfoScreen({super.key});

  @override
  State<SeamanInsureInfoScreen> createState() => _SeamanInsureInfoScreenState();
}

class _SeamanInsureInfoScreenState extends State<SeamanInsureInfoScreen> {
  final formKey = GlobalKey<FormState>();

  TextEditingController SIRBController = TextEditingController();
  TextEditingController examinationDateController = TextEditingController();
  TextEditingController insureNameController = TextEditingController();
  TextEditingController fatherNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController nrcController = TextEditingController();
  TextEditingController passportNoController = TextEditingController();
  TextEditingController SRPSNameController = TextEditingController();
  TextEditingController residentAddressController = TextEditingController();
  TextEditingController positionController = TextEditingController();
  TextEditingController premiumController = TextEditingController();
  TextEditingController policyStartDateController = TextEditingController();

  late DateTime todayDate;
  late DateTime lastExaminationDate;
  late DateTime startExaminationDate;
  late DateTime lastDob;
  late DateTime startDob;
  late DateTime lastPolicyStartDate;
  late DateTime startPolicyStartDate;
  List<Map<String, dynamic>> nrcStatesList = [];
  List<String> nrcDistrictsList = [];
  List<String> nrcTypeList = [];
  List<String> genderList = [];
  List<Map<String, dynamic>> planList = [];

  String SIRB = '';
  String medicalCertificate = 'Yes';
  String medicalCheckUp = 'Yes';
  String insureName = '';
  String fatherName = '';
  int? nrcStateDropDownValue;
  String? nrcDistrictDropDownValue;
  String? nrcTypeDropDownValue;
  String nrc = '';
  String passportNo = '';
  String SRPSName = '';
  String residentAddress = '';
  String position = '';
  String? genderDropdownValue;
  int? planDropDownValue;
  String premium = '';

  void handleSIRBChanged(String value) {
    setState(() {
      SIRB = value;
    });
  }

  handleInsureNameChanged(String value) {
    setState(() {
      insureName = value;
    });
  }

  handleFatherNameChanged(String value) {
    setState(() {
      fatherName = value;
    });
  }

  handleNRCChanged(String value) {
    setState(() {
      nrc = value;
    });
  }

  handlePassportNoChanged(String value) {
    setState(() {
      passportNo = value;
    });
  }

  handleSRPSNameChanged(String value) {
    setState(() {
      SRPSName = value;
    });
  }

  handleResidentAddressChanged(String value) {
    setState(() {
      residentAddress = value;
    });
  }

  handlePositionChanged(String value) {
    setState(() {
      position = value;
    });
  }

  handlePremiumChanged(String value) {
    setState(() {
      premium = value;
    });
  }

  String? validateSIRB(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateExaminationDate(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateInsureName(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateFatherName(value) {
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

  String? validateNRC(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validatePassportNo(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateSRPSName(value) {
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

  String? validatePosition(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validatePremium(value) {
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    todayDate = DateTime.now();
    lastExaminationDate = DateTime(todayDate.year, todayDate.month, todayDate.day);
    startExaminationDate = DateTime(todayDate.year + 3, todayDate.month, todayDate.day);
    lastDob = DateTime(todayDate.year, todayDate.month, todayDate.day - 1);
    startDob = DateTime(todayDate.year - 120, todayDate.month, todayDate.day);
    lastPolicyStartDate = DateTime(todayDate.year, todayDate.month, todayDate.day);
    startPolicyStartDate = DateTime(todayDate.year + 3, todayDate.month, todayDate.day);

    nrcStatesList = [
      {"label": "1/", "value": 1},
      {"label": "2/", "value": 2},
      {"label": "3/", "value": 3},
      {"label": "4/", "value": 4},
      {"label": "5/", "value": 5},
      {"label": "6/", "value": 6},
      {"label": "7/", "value": 7},
      {"label": "8/", "value": 8},
      {"label": "9/", "value": 9},
      {"label": "10/", "value": 10},
      {"label": "11/", "value": 11},
      {"label": "12/", "value": 12},
      {"label": "13/", "value": 13},
      {"label": "14/", "value": 14},
    ];

    nrcDistrictsList = [
      "AHTANA",
      "HAPANA",
      "HAPATA",
      "HSAHSANA",
      "KAHANA",
      "KAKANA",
      "KAKHANA",
      "KALADA",
    ];

    nrcTypeList = [
      'N',
      'A',
      'C',
      'TH'
    ];

    genderList = [
      'MALE',
      'FEMALE'
    ];

    planList = [
      {"label": "Plan1 SI 10,000,000", "value": 10000000},
      {"label": "Plan2 SI 20,000,000", "value": 20000000},
      {"label": "Plan3 SI 40,000,000", "value": 40000000},
      {"label": "Plan4 SI 60,000,000", "value": 60000000},
      {"label": "Plan5 SI 80,000,000", "value": 80000000},
      {"label": "Plan6 SI 100,000,000", "value": 100000000},
    ];
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          child: Column(
            children: [
              const BuyOnlineTitleTxt(
                titleTxt: AppStrings.insuredInfo,
                pageNo: AppStrings.pageNo1of3,
              ),
              Divider(
                color: context.appColors.colorLabel,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kMarginLargeX, vertical: kMarginCardMedium),
                child: Column(
                  children: [
                    const BuyOnlineLabelTxtWidget(labelTxt: AppStrings.SIRB,),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormFieldWidget(
                            onChanged: handleSIRBChanged,
                            hintTxt: '',
                            textController: SIRBController,
                            textInputType: TextInputType.text,
                            buyOnlineStyle: true,
                            validator: validateSIRB,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: context.appColors.colorBtnGray),
                            borderRadius: BorderRadius.circular(boxRadius_2),
                            color: context.appColors.colorPrimary
                          ),
                          child: Icon(
                            Icons.search,
                            color: context.appColors.colorWhite,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.medicalCertificate,
                    ),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: RadioListTile<String>(
                            title: NormalTxtWidget(txt: 'Yes', fontColor: context.appColors.colorLabel,),
                            value: 'Yes',
                            groupValue: medicalCertificate,
                            onChanged: (value){
                              setState(() {
                                medicalCertificate = value!;
                              });
                            },
                          ),
                        ),
                        Flexible(
                          child: RadioListTile<String>(
                            title: NormalTxtWidget(txt: 'No', fontColor: context.appColors.colorLabel,),
                            value: 'No',
                            groupValue: medicalCertificate,
                            onChanged: (value){
                              setState(() {
                                medicalCertificate = value!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.medicalCheckUp,
                    ),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: RadioListTile<String>(
                            title: NormalTxtWidget(txt: 'Yes', fontColor: context.appColors.colorLabel,),
                            value: 'Yes',
                            groupValue: medicalCheckUp,
                            onChanged: (value){
                              setState(() {
                                medicalCheckUp = value!;
                              });
                            },
                          ),
                        ),
                        Flexible(
                          child: RadioListTile<String>(
                            title: NormalTxtWidget(txt: 'No', fontColor: context.appColors.colorLabel,),
                            value: 'No',
                            groupValue: medicalCheckUp,
                            onChanged: (value){
                              setState(() {
                                medicalCheckUp = value!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.examinationDate,
                    ),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    WidgetDatePickerTextFormField(
                      dateController: examinationDateController,
                      validate: validateExaminationDate,
                      initialDate: lastExaminationDate,
                      firstDate: lastExaminationDate,
                      lastDate: startExaminationDate,
                      hintTxt: 'DD-MM-YYYY',
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.insureName,
                    ),
                    const SizedBox(
                      height: kMarginSmall,
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
                      labelTxt: AppStrings.fatherName,
                    ),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleFatherNameChanged,
                      hintTxt: '',
                      textController: fatherNameController,
                      validator: validateFatherName,
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
                      height: kMarginSmall,
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
                      labelTxt: AppStrings.nrc,
                    ),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: BuyOnlineDropDownWidget(
                            dropDownList: nrcStatesList
                                .map((item) => {
                              'label': item['label'] as String,
                              'value': item['value'] as int,
                            })
                                .toList(),
                            dropDownValue: nrcStateDropDownValue,
                            onValueChanged: (value) {
                              setState(() {
                                nrcStateDropDownValue = value;
                              });
                            },
                            hintTxt: '14/',
                            errTxt: '',
                          ),
                        ),
                        Expanded(
                          child: DropDownBtnWidget(
                            dropDownList: nrcDistrictsList,
                            dropDownValue: nrcDistrictDropDownValue,
                            onValueChanged: (String? newValue) {
                              setState(() {
                                nrcDistrictDropDownValue = newValue;
                              });
                            },
                            hintTxt: 'SELECT ONE ',
                            errTxt: '',
                            buyOnlineStyle: true,
                          ),
                        ),
                        Expanded(
                          child: DropDownBtnWidget(
                            dropDownList: nrcTypeList,
                            dropDownValue: nrcTypeDropDownValue,
                            onValueChanged: (String? newValue) {
                              setState(() {
                                nrcTypeDropDownValue = newValue;
                              });
                            },
                            hintTxt: 'SELECT ONE ',
                            errTxt: '',
                            buyOnlineStyle: true,
                          ),
                        ),
                        Expanded(
                          child: NRCTextFormFieldWidget(
                            onChanged: handleNRCChanged,
                            hintTxt: '',
                            textController: nrcController,
                            validator: validateNRC,
                            textInputType: TextInputType.number,
                            maxLength: 6,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.passportNumber,
                    ),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handlePassportNoChanged,
                      hintTxt: '',
                      textController: passportNoController,
                      validator: validatePassportNo,
                      textInputType: TextInputType.text,
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.SRPSName,
                    ),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleSRPSNameChanged,
                      hintTxt: '',
                      textController: SRPSNameController,
                      validator: validateSRPSName,
                      textInputType: TextInputType.text,
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.vesselName,
                    ),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleSRPSNameChanged,
                      hintTxt: '',
                      textController: SRPSNameController,
                      validator: validateSRPSName,
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
                      height: kMarginSmall,
                    ),
                    NRCTextFormFieldWidget(
                      onChanged: handleResidentAddressChanged,
                      hintTxt: '',
                      textController: residentAddressController,
                      validator: validateResidentAddress,
                      textInputType: TextInputType.text,
                      maxLines: 4,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.position,
                    ),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handlePositionChanged,
                      hintTxt: '',
                      textController: positionController,
                      validator: validatePosition,
                      textInputType: TextInputType.text,
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
                      labelTxt: AppStrings.seamenPlan,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    BuyOnlineDropDownWidget(
                      dropDownList: planList
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
                      labelTxt: AppStrings.premiumAmount,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handlePremiumChanged,
                      hintTxt: '',
                      textController: premiumController,
                      validator: validatePremium,
                      textInputType: TextInputType.text,
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.policyStartDate,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    WidgetDatePickerTextFormField(
                      dateController: policyStartDateController,
                      validate: validatePolicyStartDate,
                      initialDate: lastPolicyStartDate,
                      firstDate: lastPolicyStartDate,
                      lastDate: startPolicyStartDate,
                      hintTxt: 'DD-MM-YYYY',
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
                          .push(Routes.seamanBeneficiaryPath.path);
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
