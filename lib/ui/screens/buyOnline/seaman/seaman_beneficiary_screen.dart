import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';
import 'package:test_pj_mi/ui/screens/buyOnline/seaman/widget/widget_nrc_text_form_field.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_confirm_alert_box.dart';
import '../../../widgets/widget_dropdown_btn.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widgte_custom_text_form_field.dart';
import '../widget/widget_buy_online_dropdown.dart';
import '../widget/widget_buy_online_label_txt.dart';
import '../widget/widget_buy_online_title_text.dart';

class SeamanBeneficiaryScreen extends StatefulWidget {
  const SeamanBeneficiaryScreen({super.key});

  @override
  State<SeamanBeneficiaryScreen> createState() =>
      _SeamanBeneficiaryScreenState();
}

class _SeamanBeneficiaryScreenState extends State<SeamanBeneficiaryScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController beneNameController = TextEditingController();
  TextEditingController percentageController = TextEditingController();
  TextEditingController contactInfoController = TextEditingController();
  TextEditingController nrcController = TextEditingController();

  List<Map<String, dynamic>> beneficiaryList = [];
  List<String> genderList = [];
  List<String> relationshipList = [];
  List<Map<String, dynamic>> nrcStatesList = [];
  List<String> nrcDistrictsList = [];
  List<String> nrcTypeList = [];

  bool isEnable = false;
  String beneName = '';
  String percentage = '';
  String? genderDropdownValue;
  String? relationshipDropdownValue;
  String contactInfo = '';
  int? nrcStateDropDownValue;
  String? nrcDistrictDropDownValue;
  String? nrcTypeDropDownValue;
  String nrc = '';

  void handleBeneNameChanged(String value) {
    setState(() {
      beneName = value;
    });
  }

  void handlePercentageChanged(String value) {
    setState(() {
      percentage = value;
    });
  }

  void handleContactInfoChanged(String value) {
    setState(() {
      contactInfo = value;
    });
  }

  handleNRCChanged(String value) {
    setState(() {
      nrc = value;
    });
  }

  String? validateBeneName(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validatePercentage(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateContactInfo(value) {
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    beneficiaryList = [
      {'id': 1, 'beneName': 'Cho Lwin', 'percentage': 50},
      {'id': 2, 'beneName': 'Mg Mg', 'percentage': 30},
    ];

    calculateEnableState();

    genderList = [
      'MALE',
      'FEMALE'
    ];

    relationshipList = [
      'MOTHER',
      'FATHER',
      'DAUGHTER',
      'SON'
    ];

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

  }

  int calculateTotalPercentage() {
    int totalPercentage = 0;
    for (var beneficiary in beneficiaryList) {
      totalPercentage += beneficiary['percentage'] as int;
    }
    return totalPercentage;
  }

  void calculateEnableState() {
    num? totalPercentage = calculateTotalPercentage();
    setState(() {
      isEnable = totalPercentage == 100;
    });
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
      body: Column(
        children: [
          const BuyOnlineTitleTxt(
            titleTxt: AppStrings.beneficiaryInfo,
            pageNo: AppStrings.pageNo2of3,
          ),
          Divider(
            color: context.appColors.colorLabel,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kMarginMedium_3, vertical: kMarginCardMedium),
            child: Column(
              children: [
                Text(
                  AppStrings.seamanBeneficiaryText,
                  style: context.appFonts
                      .bodySmall()
                      ?.copyWith(color: context.appColors.colorPrimary),
                ),
                const SizedBox(
                  height: kMarginMedium,
                ),
                TextButton(
                  onPressed: () {
                    isEnable ? null : _showAlertDialog(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: isEnable ? MaterialStateProperty.all(
                        Theme.of(context).primaryColor.withOpacity(0.9)) : MaterialStateProperty.all(
                        Theme.of(context).primaryColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(boxRadius_2),
                    )),
                  ),
                  child: Text(AppStrings.addBeneficiary,
                      style: isEnable ? context.appFonts.bodySmall()?.copyWith(
                            color: context.appColors.colorGold.withOpacity(0.5)) : context.appFonts.bodySmall()?.copyWith(
                  color: context.appColors.colorGold)
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: kMarginMedium_3),
                itemCount: beneficiaryList.length,
                itemBuilder: (context, index) {
                  return Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(kMarginSmall_2),
                      margin: const EdgeInsets.symmetric(
                          vertical: kMarginCardMedium),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(229, 231, 233, 1),
                        borderRadius: BorderRadius.circular(boxRadius_2),
                        // border: Border(bottom: BorderSide(color: context.appColors.colorTextInputPlaceHolder)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Text(
                                      'Name: ',
                                      style: context.appFonts.bodySmall(),
                                    ),
                                    Expanded(
                                        child: Text(
                                      beneficiaryList[index]['beneName'],
                                      style: context.appFonts.bodySmall(),
                                    )),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          beneficiaryList.removeAt(index);
                                        });
                                      },
                                      child: Icon(
                                        Icons.delete_outline_rounded,
                                        color: context.appColors.colorError,
                                      )),
                                  const SizedBox(
                                    width: kMarginMedium,
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          beneficiaryList.removeAt(index);
                                        });
                                      },
                                      child: Icon(
                                        Icons.edit,
                                        color: context.appColors.colorPrimary,
                                      ))
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: kMarginMedium,
                          ),
                          Row(
                            children: [
                              Text(
                                'Share Percentage: ',
                                style: context.appFonts.bodySmall(),
                              ),
                              Text(
                                '${beneficiaryList[index]['percentage']}',
                                style: context.appFonts.bodySmall(),
                              )
                            ],
                          )
                        ],
                      ));
                }),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kMarginMedium_3),
        child: NextBtn(
          onNextPressed: () {
            CustomNavigationHelper.router.push(Routes.seamanAgentPath.path);
          },
          txt: 'next_btn_txt'.tr(),
          isEnable: isEnable,
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(alertBoxRadius)),
        ),
        title: Text('Fill Beneficiary Information', style: context.appFonts.bodySmall()?.copyWith(
          fontSize: textRegular2X,
          fontWeight: FontWeight.w500,
          color: context.appColors.colorPrimary
        ),),
        content: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const BuyOnlineLabelTxtWidget(labelTxt: AppStrings.name,),
                const SizedBox(
                  height: kMarginSmall,
                ),
                CustomTextFormFieldWidget(
                  onChanged: handleBeneNameChanged,
                  hintTxt: '',
                  textController: beneNameController,
                  validator: validateBeneName,
                  textInputType: TextInputType.text,
                  buyOnlineStyle: true,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                const BuyOnlineLabelTxtWidget(labelTxt: AppStrings.sharePercentage,),
                const SizedBox(
                  height: kMarginSmall,
                ),
                CustomTextFormFieldWidget(
                  onChanged: handlePercentageChanged,
                  hintTxt: '',
                  textController: percentageController,
                  validator: validatePercentage,
                  textInputType: TextInputType.text,
                  buyOnlineStyle: true,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.genderPassport,
                  isRequire: false,
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
                  height: kMarginMedium_3,
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
                  height: kMarginMedium_3,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.relationship,
                  isRequire: false,
                ),
                const SizedBox(
                  height: kMarginCardMedium,
                ),
                DropDownBtnWidget(
                  dropDownList: relationshipList,
                  dropDownValue: relationshipDropdownValue,
                  onValueChanged: (String? newValue) {
                    setState(() {
                      relationshipDropdownValue = newValue;
                    });
                  },
                  hintTxt: 'SELECT ONE ',
                  errTxt: '',
                  buyOnlineStyle: true,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                const BuyOnlineLabelTxtWidget(
                  labelTxt: AppStrings.contactInfo,
                  isRequire: false,
                ),
                const SizedBox(
                  height: kMarginCardMedium,
                ),
                NRCTextFormFieldWidget(
                  onChanged: handleContactInfoChanged,
                  hintTxt: '',
                  textController: contactInfoController,
                  validator: validateContactInfo,
                  textInputType: TextInputType.text,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: (){
              final isValid = formKey.currentState?.validate();

              if (isValid!) {
                Navigator.of(context).pop();
              }
            },
            child: Text(AppStrings.saveTxt,
              style: context.appFonts
                  .bodySmall()
                  ?.copyWith(fontSize: textRegular, fontWeight: FontWeight.w500),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              AppStrings.cancelText,
              style: context.appFonts
                  .bodySmall()
                  ?.copyWith(fontSize: textRegular, fontWeight: FontWeight.w500),
            ),
          )
        ],
        contentPadding:
        const EdgeInsets.only(top: 20.0, left: 20.0, right: 10.0, bottom: 10.0),
        actionsPadding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      ),
    );
  }
}


class NextBtn extends StatelessWidget {
  final void Function() onNextPressed;
  final String txt;
  final bool isEnable;

  const NextBtn({
    super.key,
    required this.onNextPressed,
    required this.txt,
    required this.isEnable
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: isEnable ? context.appColors.colorPrimary : context.appColors.colorPrimary.withOpacity(0.9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(boxRadius_2),
            ),
          ),
          onPressed: () {
            isEnable ? onNextPressed() : null;
          },
          child: Text(
            txt,
            style: isEnable ? context.appFonts
                .buttonTextSmall()
                ?.copyWith(color: context.appColors.colorGold) :
            context.appFonts
                .buttonTextSmall()
                ?.copyWith(color: context.appColors.colorGold.withOpacity(0.5)),
          ),
        )
      ],
    );
  }
}