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
import '../../../widgets/widgte_custom_text_form_field.dart';
import '../widget/widget_buy_online_dropdown.dart';
import '../widget/widget_buy_online_label_txt.dart';
import '../widget/widget_buy_online_title_text.dart';

class HealthInsurePersonOInfo3Screen extends StatefulWidget {
  const HealthInsurePersonOInfo3Screen({super.key});

  @override
  State<HealthInsurePersonOInfo3Screen> createState() => _HealthInsurePersonOInfo3ScreenState();
}

class _HealthInsurePersonOInfo3ScreenState extends State<HealthInsurePersonOInfo3Screen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController dobController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController provinceController = TextEditingController();
  TextEditingController townshipController = TextEditingController();
  TextEditingController occupationController = TextEditingController();

  int? unitDropdownValue;
  String? provinceData;
  String? townshipData;
  String? occupationData;

  late DateTime todayDate;
  late DateTime lastDob;
  late DateTime startDob;

  List<Map<String, dynamic>> unitList = [
    {'label': '1', 'value': 1},
    {'label': '2', 'value': 2},
    {'label': '3', 'value': 3},
  ];

  String? validateDOB(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateProvince(value){
    if(value!.isEmpty){
      return '';
    }else{
      return null;
    }
  }

  String? validateTownship(value){
    if(value!.isEmpty){
      return '';
    }else{
      return null;
    }
  }

  String? validateOccupation(value){
    if(value!.isEmpty){
      return '';
    }else{
      return null;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    todayDate = DateTime.now();
    lastDob = DateTime(todayDate.year, todayDate.month, todayDate.day - 1);
    startDob = DateTime(todayDate.year - 120, todayDate.month, todayDate.day);
  }
  @override
  Widget build(BuildContext context) {

   // var unitList = [
   //    {'label': '1', 'value': 1},
   //    {'label': '2', 'value': 2},
   //    {'label': '3', 'value': 3},
   //  ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeHealthIcon,
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
              BuyOnlineTitleTxt(
                titleTxt: 'pa_insure_person_info'.tr(),
                pageNo: AppStrings.pageNo3of3,
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
                      labelTxt: AppStrings.dob,
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
                    BuyOnlineLabelTxtWidget(
                      labelTxt: 'travel_unit'.tr(),
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    BuyOnlineDropDownWidget(
                      dropDownList: unitList
                          .map((item) => {
                        'label': item['label'] as String,
                        'value': item['value'] as int,
                      })
                          .toList(),
                      dropDownValue: unitDropdownValue,
                      onValueChanged: (value) {
                        setState(() {
                          unitDropdownValue = value;
                        });
                      },
                      hintTxt: 'SELECT ONE',
                      errTxt: '',
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.province,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    WidgetArrowTextFormFieldWidget(
                      controller: provinceController,
                      hintText: 'SELECT ONE',
                      validator: validateProvince,
                      onPressed: () async {
                        final result = await CustomNavigationHelper.router
                            .push(Routes.countryScreenPath.path);

                        setState(() {
                          provinceData = result as String;
                          provinceController.text = provinceData ?? '';
                        });
                      },
                      buyOnlineStyle: true,
                    ),

                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.township,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    WidgetArrowTextFormFieldWidget(
                      controller: townshipController,
                      hintText: 'SELECT ONE',
                      validator: validateTownship,
                      onPressed: () async {
                        if(provinceData == null){
                          _showAlertDialog(context);
                        }else {
                          final result = await CustomNavigationHelper.router
                              .push(Routes.countryScreenPath.path);

                          setState(() {
                            townshipData = result as String;
                            townshipController.text = townshipData ?? '';
                          });
                        }
                      },
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.occupation,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    WidgetArrowTextFormFieldWidget(
                      controller: occupationController,
                      hintText: 'SELECT ONE',
                      validator: validateOccupation,
                      onPressed: () async {
                        final result = await CustomNavigationHelper.router
                            .push(Routes.countryScreenPath.path);

                        setState(() {
                          occupationData = result as String;
                          occupationController.text = occupationData ?? '';
                        });
                      },
                      buyOnlineStyle: true,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: kMarginMedium, top: kMarginMedium),
                child: NextBtnWidget(
                  onNextPressed: () {
                    final isValid = formKey.currentState?.validate();

                    if (isValid!) {
                      CustomNavigationHelper.router
                          .push(Routes.healthBuyOnlineAdditionalCoverPath.path);
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

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(alertBoxRadius)),
        ),
        title: Text('Required', style: context.appFonts.bodySmall()?.copyWith(
          fontSize: textRegular2X,
        ),),
        content: Text(
            'Please select province first',
            style:
            context.appFonts.bodySmall()?.copyWith(fontSize: textRegular)),
        actions: [
          TextButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: const Text(AppStrings.okText),
          ),
        ],
        contentPadding:
        const EdgeInsets.only(top: 20.0, left: 20.0, right: 10.0, bottom: 10.0),
        actionsPadding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      ),
    );
  }

}
