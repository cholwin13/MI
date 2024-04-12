import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_date_picker_text_form_field.dart';
import '../../../widgets/widget_label_txt_form_field.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widget_normal_txt.dart';
import '../../../widgets/widget_product_info_detail_title.dart';
import '../../../widgets/widgte_custom_text_form_field.dart';
import '../widget/widget_buy_online_dropdown.dart';
import '../widget/widget_buy_online_label_txt.dart';

class TravelProposalScreen extends StatefulWidget {
  final int id;

  const TravelProposalScreen({super.key, required this.id});

  @override
  State<TravelProposalScreen> createState() => _TravelProposalScreenState();
}

class _TravelProposalScreenState extends State<TravelProposalScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController nrcController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController unitController = TextEditingController();
  TextEditingController deptDateController = TextEditingController();
  TextEditingController arrivalDateController = TextEditingController();
  TextEditingController flightCoverController = TextEditingController();

  String name = '';
  int? idTypeDropdownValue = 0;
  String nrc = '';
  String password = '';
  String unit = '';
  DateTime? selectedDeptDate;
  String flightCover = 'No';
  String? receivedData;

  late DateTime todayDate;
  late DateTime deptEndDate;
  late DateTime deptStartDate;
  late DateTime arrivalEndDate;
  late DateTime arrivalStartDate;

  List<Map<String, dynamic>> routeList = [];

  void handleNameChanged(String value) {
    setState(() {
      name = value;
    });
  }

  void handleNrcChanged(String value) {
    setState(() {
      nrc = value;
    });
  }

  void handlePasswordChanged(String value) {
    setState(() {
      password = value;
    });
  }

  void handleUnitChanged(String value) {
    setState(() {
      unit = value;
    });
  }

  String? validateName(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateNrc(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validatePassword(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateUnit(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateDeptDate(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateArrivalDate(value) {
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

    deptEndDate = DateTime(todayDate.year + 100, todayDate.month, todayDate.day);
    deptStartDate = DateTime(todayDate.year, todayDate.month, todayDate.day);

    arrivalEndDate = DateTime(todayDate.year, todayDate.month + 3, todayDate.day);
    arrivalStartDate = DateTime(todayDate.year, todayDate.month, todayDate.day);

    String travelFormatDate = DateFormat('dd-MM-yyyy').format(todayDate);
    deptDateController.text = travelFormatDate;
    arrivalDateController.text = travelFormatDate;

    flightCoverController.text = '500';

    routeList = [
      {'id': 1, 'township': ''},
      {'id': 2, 'township': ''},
    ];
  }

  @override
  Widget build(BuildContext context) {
    String appBarImage = widget.id == 0
        ? AppImages.generalDomesticTravel
        : AppImages.generalOverseaTravel;
    String title = widget.id == 0 ? 'travel' : 'oversea_travel';

    var idTypeList = [
      {"label": "NRCNO", "value": 0},
      {"label": "PASSPORTNO", "value": 1},
      {"label": "STILL_APPLYING", "value": 2},
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          appBarImage,
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
                height: kMarginCardMedium,
              ),
              ProductInfoDetailTitleWidget(
                titleTxt: title,
              ),
              const SizedBox(
                height: kMarginCardMedium,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kMarginLargeX, vertical: kMarginCardMedium),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: LabelTxtInFormFieldWidget(
                                labelTxt: 'name'.tr())),
                        GestureDetector(
                          onTap: () {
                            if (widget.id == 0) {
                              CustomNavigationHelper.router.push(
                                  Routes.userGuidePath.path,
                                  extra: 'travel');
                            } else {
                              CustomNavigationHelper.router.push(
                                  Routes.userGuidePath.path,
                                  extra: 'oversea_travel');
                            }
                          },
                          child: Text(
                            AppStrings.tplHowToPay,
                            style: TextStyle(
                                color: context.appColors.colorLabel,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleNameChanged,
                      hintTxt: 'please_enter_name'.tr(),
                      textController: nameController,
                      validator: validateName,
                      textInputType: TextInputType.text,
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    BuyOnlineLabelTxtWidget(
                      labelTxt: 'idType'.tr(),
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    BuyOnlineDropDownWidget(
                      dropDownList: idTypeList
                          .map((item) => {
                                'label': item['label'] as String,
                                'value': item['value'] as int,
                              })
                          .toList(),
                      dropDownValue: idTypeDropdownValue,
                      onValueChanged: (value) {
                        setState(() {
                          idTypeDropdownValue = value;
                        });
                      },
                      hintTxt: '',
                      errTxt: '',
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    idTypeDropdownValue == 0
                        ? Column(
                            children: [
                              BuyOnlineLabelTxtWidget(
                                labelTxt: 'nrc'.tr(),
                                mainAxisAlignment: MainAxisAlignment.start,
                              ),
                              const SizedBox(
                                height: kMarginCardMedium,
                              ),
                              CustomTextFormFieldWidget(
                                onChanged: handleNrcChanged,
                                hintTxt: '',
                                textController: nrcController,
                                validator: validateNrc,
                                textInputType: TextInputType.text,
                                buyOnlineStyle: true,
                              ),
                            ],
                          )
                        : idTypeDropdownValue == 1
                            ? Column(
                                children: [
                                  BuyOnlineLabelTxtWidget(
                                    labelTxt: 'passport'.tr(),
                                    mainAxisAlignment: MainAxisAlignment.start,
                                  ),
                                  const SizedBox(
                                    height: kMarginCardMedium,
                                  ),
                                  CustomTextFormFieldWidget(
                                    onChanged: handlePasswordChanged,
                                    hintTxt: '',
                                    textController: passwordController,
                                    validator: validatePassword,
                                    textInputType: TextInputType.text,
                                    buyOnlineStyle: true,
                                  ),
                                ],
                              )
                            : const SizedBox(),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    BuyOnlineLabelTxtWidget(
                      labelTxt: 'travel_unit'.tr(),
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    const BuyOnlineLabelTxtWidget(
                      labelTxt: AppStrings.travelUnitLimit,
                      mainAxisAlignment: MainAxisAlignment.start,
                      isRequire: false,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleUnitChanged,
                      hintTxt: '',
                      textController: unitController,
                      validator: validateUnit,
                      textInputType: TextInputType.number,
                      buyOnlineStyle: true,
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    BuyOnlineLabelTxtWidget(
                      labelTxt: 'travel_dept_date'.tr(),
                      mainAxisAlignment: MainAxisAlignment.start,
                      isRequire: false,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    WidgetDatePickerTextFormField(
                      dateController: deptDateController,
                      validate: validateDeptDate,
                      initialDate: selectedDeptDate ?? deptStartDate,
                      firstDate: deptStartDate,
                      lastDate: deptEndDate,
                      hintTxt: 'DD-MM-YYYY',
                      onDateSelected: (DateTime selectedDate) {
                        setState(() {
                          selectedDeptDate = selectedDate;
                          // print('Selected date $selectedDeptDate');
                          arrivalEndDate = selectedDeptDate!.add(const Duration(days: 90));
                        });
                      },
                    ),
                    const SizedBox(
                      height: kMarginLarge,
                    ),
                    BuyOnlineLabelTxtWidget(
                      labelTxt: 'travel_arrival_date'.tr(),
                      mainAxisAlignment: MainAxisAlignment.start,
                      isRequire: false,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    WidgetDatePickerTextFormField(
                      dateController: arrivalDateController,
                      validate: validateArrivalDate,
                      initialDate: selectedDeptDate ?? arrivalStartDate,
                      firstDate: selectedDeptDate ?? arrivalStartDate,
                      lastDate: arrivalEndDate,
                      hintTxt: 'DD-MM-YYYY',
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    BuyOnlineLabelTxtWidget(
                      labelTxt: 'additional_flight_cover'.tr(),
                      mainAxisAlignment: MainAxisAlignment.start,
                      isRequire: false,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: RadioListTile<String>(
                            title: NormalTxtWidget(txt: 'No', fontColor: context.appColors.colorLabel,),
                            value: 'No',
                            groupValue: flightCover,
                            onChanged: (value){
                              setState(() {
                                flightCover = value!;
                              });
                            },
                          ),
                        ),
                        Flexible(
                          child: RadioListTile<String>(
                            title: NormalTxtWidget(txt: 'Yes', fontColor: context.appColors.colorLabel,),
                            value: 'Yes',
                            groupValue: flightCover,
                            onChanged: (value){
                              setState(() {
                                flightCover = value!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    if(flightCover == 'Yes')
                     Column(
                       children: [
                         const SizedBox(
                           height: kMarginCardMedium,
                         ),
                         BuyOnlineLabelTxtWidget(
                           labelTxt: 'flight_cover_fee'.tr(),
                           mainAxisAlignment: MainAxisAlignment.start,
                           isRequire: false,
                         ),
                         CustomTextFormFieldWidget(
                           hintTxt: '',
                           textController: flightCoverController,
                           buyOnlineStyle: true,
                           readOnlyValue: true,
                         ),
                       ],
                     ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    BuyOnlineLabelTxtWidget(
                      labelTxt: 'route'.tr(),
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    if(routeList.isNotEmpty)
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: routeList.length,
                          itemBuilder: (context, index){
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(AppImages.generalTravelPlaceholder, width: 28, height: 28,),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width / 1.8,
                                      child: SelectedTextWidget(
                                        onTap: () async {
                                          final result = await CustomNavigationHelper.router.push(Routes.countryScreenPath.path);

                                          setState(() {
                                            receivedData = result as String;
                                            routeList[index]['township'] = receivedData ?? '';
                                          });
                                        },
                                        selectedText: routeList[index]['township'],
                                      ),
                                    ),
                                    if(index > 1)
                                      IconButton(
                                        icon: Image.asset(AppImages.generalTravelRouteCancel),
                                        iconSize: 60,
                                        onPressed: () {
                                          setState(() {
                                            routeList.removeAt(index);
                                          });
                                        },
                                      )
                                  ],
                                ),
                                if(index != routeList.length - 1)
                                  Row(
                                    children: [
                                      Image.asset(AppImages.generalTravelDots,
                                          width: 24,
                                          height: 24,
                                          color: context.appColors.colorPrimary),
                                    ],
                                  ),
                              ],
                            );
                          }),
                    const SizedBox(height: kMarginLarge,),
                    Row(
                      children: [
                        IconButton(
                          icon: Image.asset(AppImages.generalTravelRoutePlus),
                          iconSize: 50,
                          onPressed: () {
                            if (routeList.length >= 2 &&
                                (routeList[0]['township'] == null ||
                                    routeList[0]['township'].isEmpty) ||
                                (routeList[1]['township'] == null ||
                                    routeList[1]['township'].isEmpty)) {
                              _showAlertDialog(context);
                            } else {
                              setState(() {
                                routeList.add(
                                    {'id': routeList.length + 1, 'township': ''});
                              });
                            }
                          },
                        ),
                      ],
                    )
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

          if (isValid!) {
            DateTime departureDate = DateFormat('dd-MM-yyyy').parse(deptDateController.text);
            DateTime arrivalDate = DateFormat('dd-MM-yyyy').parse(arrivalDateController.text);
            if(arrivalDate.isAfter(departureDate) || arrivalDate.difference(departureDate).inDays == 0){
              if (routeList.length >= 2 &&
                  (routeList[0]['township'] == null || routeList[0]['township'].isEmpty) ||
                  (routeList[1]['township'] == null || routeList[1]['township'].isEmpty)) {
                _showRouteAlertDialog(context);
              } else {
                if(widget.id == 0) {
                  CustomNavigationHelper.router.push(
                      Routes.travelBuyProposalPath.path,
                      extra: 0
                  );
                }else{
                  CustomNavigationHelper.router.push(
                      Routes.travelBuyProposalPath.path,
                      extra: 1
                  );
                }
              }
            } else{
              _showAlertDialog(context);
            }
          }
        },
        txt: 'next_btn_txt'.tr(),
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
        title: Text('Invalid', style: context.appFonts.bodySmall()?.copyWith(
          fontSize: textRegular2X,
        ),),
        content: Text(
            'Travel Days allow 3Months',
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

  void _showRouteAlertDialog(BuildContext context) {
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
            'Please select route!',
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

class SelectedTextWidget extends StatelessWidget {
  final Function()? onTap;
  final String? selectedText;

  const SelectedTextWidget({
    super.key,
    this.onTap,
    this.selectedText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(kMarginSmall_2),
        decoration: BoxDecoration(
          border: Border.all(color: context.appColors.colorPrimary),
          borderRadius: BorderRadius.circular(boxRadius_2),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                selectedText?.isNotEmpty == true ? selectedText! : 'SELECT ONE',
                style: selectedText != null ? context.appFonts.bodySmall() : context.appFonts.bodySmall()?.copyWith(
                  color: context.appColors.colorTextInputPlaceHolder,
                ),
              ),
            ),
            Icon(
              Icons.search,
              color: context.appColors.colorPrimary,
            ),
          ],
        ),
      ),
    );
  }
}