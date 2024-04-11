import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_normal_txt.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';
import '../motor/add_on_list.dart';
import '../../../../widgets/premium_details_arguments_list.dart';

class CashInTransitPremiumCalculator extends StatefulWidget {
  const CashInTransitPremiumCalculator({super.key});

  @override
  State<CashInTransitPremiumCalculator> createState() =>
      _CashInTransitPremiumCalculatorState();
}

class _CashInTransitPremiumCalculatorState
    extends State<CashInTransitPremiumCalculator> {
  final formKey = GlobalKey<FormState>();
  String sumInsure = '';
  String? _selectedDistanceMile;
  final TextEditingController sumInsureController = TextEditingController();

  List<AddOnList> addOnList = [
    AddOnList(
        label: AppStrings.cashTransitSecurity, isChecked: false, addOnId: 1),
    AddOnList(
        label: AppStrings.cashTransitPrivate, isChecked: false, addOnId: 2),
    AddOnList(
        label: AppStrings.cashTransitSafety, isChecked: false, addOnId: 3),
    AddOnList(
        label: AppStrings.cashTransitPublic, isChecked: false, addOnId: 4),
    AddOnList(
        label: AppStrings.cashTransitDestination, isChecked: false, addOnId: 5),
  ];

  List<AddOnDistanceMileList> addOnDistanceMileList = [
    AddOnDistanceMileList(label: '10'),
    AddOnDistanceMileList(label: '10-15'),
    AddOnDistanceMileList(label: '15-20'),
    AddOnDistanceMileList(label: 'Above 20'),
  ];

  void handleSIChanged(String value) {
    setState(() {
      sumInsure = value;
    });
  }

  String? validateSI(value) {
    if (value!.isEmpty) {
      return AppStrings.sumInsureErrTxt;
    } else {
      return null;
    }
  }

  void onCheckboxChanged(bool? value, AddOnList item) {
    setState(() {
      item.isChecked = value ?? false;
    });

    // if(item.isChecked){
    //   print('ADD on ID is ${item.addOnId}');
    // }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _selectedDistanceMile = addOnDistanceMileList[0].label;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalCashInTransitIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kMarginCardMedium_2, vertical: kMarginCardMedium_2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ProductInfoDetailTitleWidget(
                  titleTxt: 'cash_in_transit_title',
                  // titleTxt: '${widget.isMMK ? 'MMK' : 'USD'}',
                ),
                const SizedBox(
                  height: kMarginCardMedium_2,
                ),
                LabelTxtInFormFieldWidget(labelTxt: 'motor_si_mmk'.tr()),
                const SizedBox(
                  height: kMarginSmall,
                ),
                CustomTextFormFieldWidget(
                  onChanged: handleSIChanged,
                  hintTxt: 'motor_si_txt'.tr(),
                  textController: sumInsureController,
                  validator: validateSI,
                ),
                const SizedBox(
                  height: kMarginLarge,
                ),
                DistanceMileRadioList(
                  distanceList: addOnDistanceMileList,
                  selectedDistanceMile: _selectedDistanceMile,
                  onChanged: (value) {
                    setState(() {
                      _selectedDistanceMile = value;
                    });
                  },
                ),
                const SizedBox(
                  height: kMarginLarge,
                ),
                AddOnListCheckBoxList(
                    addOnList: addOnList, onCheckboxChanged: onCheckboxChanged),
                const SizedBox(
                  height: kMarginLarge,
                ),
                NextBtnWidget(
                  formKey: formKey,
                  onNextPressed: () {
                    final isValid = formKey.currentState?.validate();

                    if (isValid!) {
                      sumInsure = sumInsureController.text;
                      CustomNavigationHelper.router.push(
                          Routes.generalInsPremiumDetailsAndCoveragePath.path,
                          extra: PremiumDetailsArguments(
                              title: 'cash_in_transit_title', isMMK: true, appBarIcon: AppImages.generalCashInTransitIcon));
                    }
                  },
                  txt: 'next_btn_txt'.tr(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DistanceMileRadioList extends StatelessWidget {
  final List<AddOnDistanceMileList> distanceList;
  final String? selectedDistanceMile;
  final Function(String?) onChanged;

  const DistanceMileRadioList({super.key, required this.distanceList, required this.selectedDistanceMile, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: context.appColors.colorPrimary),
        borderRadius: BorderRadius.circular(boxRadius_2),
      ),
      child: Column(
        children: [
          const PremiumAndTypesWidget(
            typesTxt: 'Distance Mile',
          ),
          Divider(
            color: context.appColors.colorPrimary,
          ),
          Column(
            children: distanceList.map((distance) {
              return RadioListTile(
                  title: Text(
                    distance.label,
                    style: TextStyle(fontSize: textRegular),
                  ),
                  value: distance.label,
                  groupValue: selectedDistanceMile,
                  onChanged: onChanged);
            }).toList(),
          )
        ],
      ),
    );
  }
}


class AddOnListCheckBoxList extends StatelessWidget {
  final List<AddOnList> addOnList;
  final Function(bool?, AddOnList) onCheckboxChanged;

  const AddOnListCheckBoxList(
      {super.key, required this.addOnList, required this.onCheckboxChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: context.appColors.colorPrimary),
        borderRadius: BorderRadius.circular(boxRadius_2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: kMarginCardMedium_2),
        child: ListView.builder(
          shrinkWrap: true,
          primary: false,
          itemCount: addOnList.length,
          itemBuilder: (context, index) {
            AddOnList items = addOnList[index];

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Checkbox(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(checkBoxRadius))),
                      value: items.isChecked,
                      onChanged: (bool? value) {
                        onCheckboxChanged(value, items);
                      },
                      checkColor: Colors.white,
                      activeColor: context.appColors.colorPrimary,
                    ),

                    Flexible(child: Text(items.label)),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class PremiumAndTypesWidget extends StatelessWidget {
  const PremiumAndTypesWidget({
    super.key,
    required this.typesTxt,
  });

  final String typesTxt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: kMarginCardMedium,
        right: kMarginCardMedium,
        top: kMarginSmall_3,
        bottom: kMarginSmall_3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child: NormalTxtWidget(txt: typesTxt, fontColor: context.appColors.colorLabel,)),
        ],
      ),
    );
  }
}

class AddOnDistanceMileList {
  String label;

  AddOnDistanceMileList({required this.label});
}
