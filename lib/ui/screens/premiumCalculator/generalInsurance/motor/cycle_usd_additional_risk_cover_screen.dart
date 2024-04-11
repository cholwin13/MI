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
import '../../../../widgets/premium_details_arguments_list.dart';
import 'add_on_list.dart';

class CycleUSDAdditionalRiskScreen extends StatefulWidget {
  final bool isMMK;
  const CycleUSDAdditionalRiskScreen({super.key, required this.isMMK});

  @override
  State<CycleUSDAdditionalRiskScreen> createState() =>
      _CycleUSDAdditionalRiskScreenState();
}

class _CycleUSDAdditionalRiskScreenState extends State<CycleUSDAdditionalRiskScreen> {
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
          const AdditionalRiskCovetTxtWidget(),
          const SizedBox(
            height: kMarginCardMedium_2,
          ),
          Expanded(
            child: ListViewPremiumCalculateBoxWidget(
              isMMK: widget.isMMK,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kMarginLargeX_2),
            child: NextBtnWidget(
              onNextPressed: () {
                CustomNavigationHelper.router.push(
                  Routes.generalInsPremiumDetailsAndCoverageAddOnPath.path,
                  // extra: widget.isMMK,
                  extra: PremiumDetailsArguments(title: 'motor_title', isMMK: widget.isMMK, appBarIcon: AppImages.generalMotorIcon)
                );
              },
              txt: 'next_btn_txt'.tr(),
            ),
          ),
        ],
      ),
    );
  }
}

class ListViewPremiumCalculateBoxWidget extends StatefulWidget {
  final bool isMMK;

  const ListViewPremiumCalculateBoxWidget({
    super.key,
    required this.isMMK,
  });

  @override
  State<ListViewPremiumCalculateBoxWidget> createState() =>
      _ListViewPremiumCalculateBoxWidgetState();
}

class _ListViewPremiumCalculateBoxWidgetState
    extends State<ListViewPremiumCalculateBoxWidget> {

  List<AddOnList> addOnUSDList = [
    AddOnList(label: 'act_of_god'.tr(), isChecked: false, addOnId: 1),
    AddOnList(label: 'wind_screen'.tr(), isChecked: false, addOnId: 2),
    AddOnList(label: 'medical_expense'.tr(), isChecked: false, addOnId: 3),
    AddOnList(label: 'nil_excess'.tr(), isChecked: false, addOnId: 4),
    AddOnList(label: 'paid_driver'.tr(), isChecked: false, addOnId: 5),
    AddOnList(label: 'passenger_liability'.tr(), isChecked: false, addOnId: 6),
    AddOnList(label: 'third_party'.tr(), isChecked: false, addOnId: 7),
    AddOnList(label: 'loss_of_luggage'.tr(), isChecked: false, addOnId: 8),
  ];

  void onCheckboxChanged(bool? value, AddOnList item) {
    setState(() {
      item.isChecked = value ?? false;
    });
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
            Expanded(
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
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  checkBoxRadius))),
                                      value: items.isChecked,
                                      onChanged: (bool? value) {
                                        onCheckboxChanged(value, items);
                                      },
                                      checkColor: Colors.white,
                                      activeColor:
                                      context.appColors.colorPrimary,
                                    ),
                                  ),
                                  NormalTxtWidget(txt: items.label, fontColor: context.appColors.colorLabel,)
                                ],
                              ),
                            ),
                            NormalTxtWidget(
                              // txt: items.isChecked ? '${items.addOnId} MMK' : '0.00 MMK',
                              txt: '0.00 ${widget.isMMK ? 'MMK' : 'USD'}',
                              // fontWeight: FontWeight.bold,
                              fontColor: context.appColors.colorLabel,
                            ),
                          ],
                        ),
                        if (items.isChecked && (items.addOnId == 2 || items.addOnId == 5))
                          const AddOnTxtFieldWidget(),
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

class AddOnTxtFieldWidget extends StatelessWidget {
  const AddOnTxtFieldWidget({
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

class AdditionalRiskCovetTxtWidget extends StatelessWidget {
  const AdditionalRiskCovetTxtWidget({
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
