import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_normal_txt.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../motor/motor_additional_risk_cover_screen.dart';

class FireAdditionalCoverScreen extends StatefulWidget {
  final bool isMMK;
  const FireAdditionalCoverScreen({super.key, required this.isMMK});

  @override
  State<FireAdditionalCoverScreen> createState() =>
      _FireAdditionalCoverScreenState();
}

class _FireAdditionalCoverScreenState extends State<FireAdditionalCoverScreen> {
  final formKey = GlobalKey<FormState>();
  String priceTxt = '';
  bool showTxtFormField = false;

  TextEditingController textController = TextEditingController();

  List<AdditionalCoverList> additionalCoverList = [
    AdditionalCoverList(label: 'fire_cover_usage_of_building', isChecked: false, isBuilding: true),
    AdditionalCoverList(label: 'fire_cover_burglary', isChecked: false, isBuilding: false),
    AdditionalCoverList(label: 'fire_cover_electronic', isChecked: false, isBuilding: false, isElectronic: true ),
    AdditionalCoverList(label: 'fire_cover_furniture', isChecked: false, isBuilding: false),
    AdditionalCoverList(label: 'fire_cover_machinery', isChecked: false, isBuilding: false),
    AdditionalCoverList(label: 'fire_cover_stock_goods', isChecked: false, isBuilding: false),
  ];

  void onCheckboxChanged(bool? value, AdditionalCoverList item){
    setState(() {
      for(var i = 0; i < additionalCoverList.length; i++){
        if(additionalCoverList[i] == item){
          additionalCoverList[i].isChecked = value ?? false;
        }else{
          additionalCoverList[i].isChecked = false;
        }
      }
    });
  }

  void handleTxtFormFieldChanged(String value) {
    setState(() {
      priceTxt = value;
    });
  }

  String? validateTxtFormField(value, bool isElectronic){
    final double si = double.tryParse(value!) ?? 0.0;
    if (value!.isEmpty) {
      return AppStrings.neededAmount;
    } else if (si < 1000 && isElectronic) {
      return 'Must have at least 1000';
    } else if(si < 1000 || si > 10000000000){
      return '*At least 1000 \n not more than 10,000,000,000.';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
          appBar: AppBarWidget(
            titleIcon: Image.asset(
              AppImages.generalFireAlliedIcon,
              color: context.appColors.colorGold,
              width: iconMedium_3,
              height: iconMedium_3,
            ),
          ),
          body: Column(children: [
            const SizedBox(
              height: kMarginMedium_3,
            ),
            const ProductInfoDetailTitleWidget(
              titleTxt: 'fire_and_allied_title',
            ),
            const SizedBox(
              height: kMarginCardMedium_2,
            ),
            Expanded(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: kMarginCardMedium_2),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: context.appColors.colorPrimary),
                    borderRadius: BorderRadius.circular(boxRadius_2),
                  ),
                  child: Column(
                    children: [
                      const BasicAndTotalPremiumWidget(
                          premiumTxt: AppStrings.additionalCover,
                          priceTxt: '',
                          padding: EdgeInsets.only(
                              left: kMarginCardMedium_2,
                              right: kMarginCardMedium_2,
                              top: kMarginSmall_2)),
                      Divider(
                        color: context.appColors.colorPrimary,
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: kMarginCardMedium_2),
                          child: ListView.builder(
                              shrinkWrap: true,
                              primary: false,
                              itemCount: additionalCoverList.length,
                              itemBuilder: (context, index) {
                                AdditionalCoverList items = additionalCoverList[index];

                                return Column(
                                  children: [
                                    Row(
                                      children: [
                                        Flexible(
                                          child: Row(
                                            children: [
                                              Checkbox(
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
                                              Flexible(child: NormalTxtWidget(txt: 'items.label'.tr(),)),
                                            ],
                                          ),
                                        ),
                                        if(items.isChecked == true && items.isBuilding == false)
                                          SizedBox(
                                            width: 120.0,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                contentPadding: const EdgeInsets.all(kMarginCardMedium),
                                                enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: context.appColors.colorPrimary),
                                                  borderRadius: BorderRadius.circular(boxRadius_2),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: context.appColors.colorPrimary
                                                  ),
                                                  borderRadius: BorderRadius.circular(boxRadius_2),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: context.appColors.colorPrimary),
                                                  borderRadius: BorderRadius.circular(boxRadius_2),
                                                ),
                                                focusedErrorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: context.appColors.colorPrimary),
                                                  borderRadius: BorderRadius.circular(boxRadius_2),
                                                ),
                                                hintText: '0',
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
                                              validator: (value) => validateTxtFormField(value, items.isElectronic ?? false),
                                              onChanged: handleTxtFormFieldChanged,
                                              controller: textController,
                                            ),
                                          )
                                      ]
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: kMarginLarge,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kMarginLarge),
              child: NextBtnWidget(
                formKey: formKey,
                onNextPressed: () {
                  final isValid = formKey.currentState?.validate();

                  if (isValid!) {

                    CustomNavigationHelper.router.push(
                        Routes.fireAdditionalRiskCoverPath.path,
                        extra: widget.isMMK
                    );
                    print('${widget.isMMK}');
                  }
                }, txt: 'next_btn_txt'.tr(),
              ),
            ),
          ])),
    );
  }
}

class AdditionalCoverList{
  bool isBuilding;
  String label;
  bool isChecked;
  bool? isElectronic;

  AdditionalCoverList({
    required this.isBuilding,
    required this.label,
    required this.isChecked,
    this.isElectronic
  });
}