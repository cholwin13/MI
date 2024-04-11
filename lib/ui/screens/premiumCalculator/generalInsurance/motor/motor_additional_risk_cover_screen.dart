import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_dropdown_btn.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_normal_txt.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import 'add_on_list.dart';

class MotorAdditionalRiskCoverScreen extends StatefulWidget {
  final bool isMMK;
  const MotorAdditionalRiskCoverScreen({super.key, required this.isMMK});

  @override
  State<MotorAdditionalRiskCoverScreen> createState() =>
      _MotorAdditionalRiskCoverScreenState();
}

class _MotorAdditionalRiskCoverScreenState extends State<MotorAdditionalRiskCoverScreen> {
  double containerHeight = 0.0;
  String? windScreenValueChanged;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
        body: Column(
          children: [
            const SizedBox(
              height: kMarginMedium_3,
            ),
            const ProductInfoDetailTitleWidget(
              titleTxt: 'motor_title',
              // titleTxt: '${widget.isMMK ? 'MMK' : 'USD'}',
            ),
            const SizedBox(
              height: kMarginCardMedium_2,
            ),
            const AdditionalRiskCovetTxt(),
            const SizedBox(
              height: kMarginCardMedium_2,
            ),
            Expanded(
              child: ListViewPremiumCalculateBoxWidget(
                onDropdownChanged: (String? newValue) {
                  setState(() {
                    windScreenValueChanged = newValue;
                  });
                },
                formKey: formKey,
                isMMK: widget.isMMK,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kMarginLargeX_2),
              child: NextBtnWidget(
                onNextPressed: () {
                  if (windScreenValueChanged != null) {
                    CustomNavigationHelper.router.push(
                      Routes.motorPremiumDetailPath.path,
                      extra: widget.isMMK,
                    );
                  } else {
                    if (formKey.currentState != null &&
                        formKey.currentState!.validate()) {
                      print('nil excess is null');
                    }
                  }
                },
                txt: 'next_btn_txt'.tr(),
              ),
            ),
            // const Spacer(),
          ],
        ));
  }
}

class ListViewPremiumCalculateBoxWidget extends StatefulWidget {
  final Function(String?) onDropdownChanged;
  final GlobalKey<FormState> formKey;
  final bool isMMK;

  const ListViewPremiumCalculateBoxWidget({
    super.key,
    required this.onDropdownChanged,
    required this.formKey,
    required this.isMMK,
  });

  @override
  State<ListViewPremiumCalculateBoxWidget> createState() =>
      _ListViewPremiumCalculateBoxWidgetState();
}

class _ListViewPremiumCalculateBoxWidgetState
    extends State<ListViewPremiumCalculateBoxWidget> {
  // final formKey = GlobalKey<FormState>();
  String? dropdownvalue;

  List<AddOnList> addOnMMKList = [
    AddOnList(label: 'srcc', isChecked: false, addOnId: 1),
    AddOnList(label: 'wind_screen', isChecked: false, addOnId: 2),
    AddOnList(label: 'act_of_god', isChecked: false, addOnId: 3),
    AddOnList(label: 'war_risk', isChecked: false, addOnId: 4),
    AddOnList(label: 'theft', isChecked: false, addOnId: 5),
    AddOnList(label: 'cover_for_betterment', isChecked: false, addOnId: 6),
    AddOnList(
        label: AppStrings.premiumOfExcess,
        isChecked: false,
        addOnId: 7,
        isNilExcess: true),
    AddOnList(label: 'tpl', isChecked: false, addOnId: 7),
    AddOnList(label: 'tpl_libility', isChecked: false, addOnId: 8),
  ];

  List<AddOnList> addOnUSDList = [
    AddOnList(label: 'srcc', isChecked: false, addOnId: 1),
    AddOnList(label: 'wind_screen', isChecked: false, addOnId: 2),
    AddOnList(label: 'loss_of_luggage', isChecked: false, addOnId: 3),
    AddOnList(label: 'act_of_god', isChecked: false, addOnId: 4),
    AddOnList(label: 'war_risk', isChecked: false, addOnId: 5),
    AddOnList(label: 'theft', isChecked: false, addOnId: 6),
    AddOnList(label: 'cover_for_betterment', isChecked: false, addOnId: 7),
    AddOnList(
        label: AppStrings.premiumOfExcess,
        isChecked: false,
        addOnId: 8,
        isNilExcess: true),
    AddOnList(label: 'tpl', isChecked: false, addOnId: 9),
    AddOnList(label: 'tpl_libility', isChecked: false, addOnId: 10),
  ];

  void onCheckboxChanged(bool? value, AddOnList item) {
    setState(() {
      item.isChecked = value ?? false;
    });

    // if(item.isChecked){
    //   print('ADD on ID is ${item.addOnId}');
    // }
  }

  var nilExcessList = ['Nil Excess', 'Standard Excess'];

  onWindScreenValueChanged(String? newValue) {
    widget.onDropdownChanged(newValue);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // WidgetsBinding.instance!.addPostFrameCallback((_) {
    //   setState(() {
    //     onWindScreenValueChanged;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kMarginCardMedium_2),
      child: Container(
        // height: MediaQuery.of(context).size.height / 2,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: context.appColors.colorPrimary),
          borderRadius: BorderRadius.circular(boxRadius_2),
        ),
        child: Column(
          children: [
            BasicAndTotalPremiumWidget(
                premiumTxt: AppStrings.basicPremium,
                priceTxt: '${100} ${widget.isMMK ? 'MMK' : 'USD'}',
                padding: const EdgeInsets.only(
                    left: kMarginCardMedium_2,
                    right: kMarginCardMedium_2,
                    top: kMarginSmall_2)),
            Divider(
              color: context.appColors.colorPrimary,
            ),
            AdditionalCoverTxtWidget(isMMK: widget.isMMK),
            widget.isMMK
                ? Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: kMarginCardMedium_2),
                      child: ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: addOnMMKList.length,
                        itemBuilder: (context, index) {
                          AddOnList items = addOnMMKList[index];

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (items.isNilExcess == null)
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Wrap(
                                        direction: Axis.horizontal,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        spacing: -5,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.zero,
                                            child: Checkbox(
                                              shape:
                                                  const RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .all(Radius.circular(
                                                              checkBoxRadius))),
                                              value: items.isChecked,
                                              onChanged: (bool? value) {
                                                onCheckboxChanged(value, items);
                                              },
                                              checkColor: Colors.white,
                                              activeColor: context
                                                  .appColors.colorPrimary,
                                            ),
                                          ),
                                          Text(items.label.tr()),
                                        ],
                                      ),
                                    ),
                                    NormalTxtWidget(
                                      // txt: items.isChecked ? '${items.addOnId} MMK' : '0.00 MMK',
                                      txt:
                                          '0.00 ${widget.isMMK ? 'MMK' : 'USD'}',
                                      fontColor: context.appColors.colorLabel,
                                    ),
                                  ],
                                ),
                              if (items.isNilExcess == true)
                                Form(
                                  // key: formKey,
                                  key: widget.formKey,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: kMarginCardMedium_2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          AppStrings.premiumOfExcess,
                                          style: TextStyle(
                                            color:
                                                context.appColors.colorPrimary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        DropDownBtnWidget(
                                          dropDownList: nilExcessList,
                                          dropDownValue: dropdownvalue,
                                          // onValueChanged: onWindScreenValueChanged,
                                          onValueChanged: (String? newValue) {
                                            widget.onDropdownChanged(newValue);
                                          },
                                          hintTxt: AppStrings.selectExcessType,
                                          errTxt: 'excess_type_err_txt'.tr(),
                                        ),
                                        // Text('DropDown Value is ${dropdownvalue}'),
                                      ],
                                    ),
                                  ),
                                ),
                              if (items.isChecked && items.addOnId == 2)
                                const WindScreenTxtFieldWidget(),
                            ],
                          );
                        },
                      ),
                    ),
                  )
                : Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: kMarginCardMedium_2),
                      child: ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: addOnUSDList.length,
                        itemBuilder: (context, index) {
                          AddOnList items = addOnUSDList[index];

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (items.isNilExcess == null)
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Wrap(
                                        direction: Axis.horizontal,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        spacing: -5,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.zero,
                                            child: Checkbox(
                                              shape:
                                                  const RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .all(Radius.circular(
                                                              checkBoxRadius))),
                                              value: items.isChecked,
                                              onChanged: (bool? value) {
                                                onCheckboxChanged(value, items);
                                              },
                                              checkColor: Colors.white,
                                              activeColor: context
                                                  .appColors.colorPrimary,
                                            ),
                                          ),
                                          Text(items.label.tr()),
                                        ],
                                      ),
                                    ),
                                    NormalTxtWidget(
                                      // txt: items.isChecked ? '${items.addOnId} MMK' : '0.00 MMK',
                                      txt:
                                          '0.00 ${widget.isMMK ? 'MMK' : 'USD'}',
                                      fontColor: context.appColors.colorLabel,
                                    ),
                                  ],
                                ),
                              if (items.isNilExcess == true)
                                Form(
                                  // key: formKey,
                                  key: widget.formKey,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: kMarginCardMedium_2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          AppStrings.premiumOfExcess,
                                          style: TextStyle(
                                            color:
                                                context.appColors.colorPrimary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        DropDownBtnWidget(
                                          dropDownList: nilExcessList,
                                          dropDownValue: dropdownvalue,
                                          // onValueChanged: onWindScreenValueChanged,
                                          onValueChanged: (String? newValue) {
                                            widget.onDropdownChanged(newValue);
                                          },
                                          hintTxt: AppStrings.selectExcessType,
                                          errTxt: 'excess_type_err_txt'.tr(),
                                        ),
                                        // Text('DropDown Value is ${dropdownvalue}'),
                                      ],
                                    ),
                                  ),
                                ),
                              if (items.isChecked && items.addOnId == 2)
                                const WindScreenTxtFieldWidget(),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
            Divider(
              color: context.appColors.colorPrimary,
            ),
            BasicAndTotalPremiumWidget(
              premiumTxt: AppStrings.totalPremium,
              priceTxt: '${155500} ${widget.isMMK ? 'MMK' : 'USD'}',
              padding: const EdgeInsets.only(
                  left: kMarginCardMedium_2,
                  right: kMarginCardMedium_2,
                  bottom: kMarginSmall_2),
            )
          ],
        ),
      ),
    );
  }
}

class WindScreenTxtFieldWidget extends StatelessWidget {
  const WindScreenTxtFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kMarginCardMedium_2),
      child: SizedBox(
        width: 150.0,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(kMarginCardMedium),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: context.appColors.colorPrimary),
              borderRadius: BorderRadius.circular(boxRadius_2),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: context.appColors.colorPrimary),
              borderRadius: BorderRadius.circular(boxRadius_2),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: context.appColors.colorPrimary),
              borderRadius: BorderRadius.circular(boxRadius_2),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: context.appColors.colorPrimary),
              borderRadius: BorderRadius.circular(boxRadius_2),
            ),
            hintText: 'Please enter wind screen',
            hintStyle: TextStyle(
              fontSize: 12.0,
              color: context.appColors.colorTextInputPlaceHolder,
            ),
            isDense: true,
          ),
          style: TextStyle(
            fontSize: 12.0,
            color: context.appColors.colorLabel,
          ),
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          // controller: windScreenTxtController,
        ),
      ),
    );
  }
}

class AdditionalCoverTxtWidget extends StatelessWidget {
  final bool isMMK;
  const AdditionalCoverTxtWidget({
    super.key,
    required this.isMMK,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kMarginCardMedium_2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const NormalTxtWidget(
            txt: AppStrings.additionalCover,
            fontWeight: FontWeight.w600,
          ),
          NormalTxtWidget(
            txt: isMMK ? AppStrings.premiumMMK : AppStrings.premiumUSD,
            fontWeight: FontWeight.w600,
          )
        ],
      ),
    );
  }
}

class AdditionalRiskCovetTxt extends StatelessWidget {
  const AdditionalRiskCovetTxt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kMarginCardMedium_2),
      child: Row(
        children: [
          Image.asset(
            AppImages.additionalRiskCover,
            width: iconMedium_3,
            height: iconMedium_3,
          ),
          const SizedBox(
            width: kMarginCardMedium,
          ),
          const NormalTxtWidget(
            txt: AppStrings.additionalRiskCover,
          ),
        ],
      ),
    );
  }
}

class BasicAndTotalPremiumWidget extends StatelessWidget {
  final String premiumTxt;

  final String priceTxt;

  final EdgeInsets padding;

  const BasicAndTotalPremiumWidget(
      {super.key,
      required this.premiumTxt,
      required this.priceTxt,
      required this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NormalTxtWidget(txt: premiumTxt),
          NormalTxtWidget(txt: priceTxt)
        ],
      ),
    );
  }
}
