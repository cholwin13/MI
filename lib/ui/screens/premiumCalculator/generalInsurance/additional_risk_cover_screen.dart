import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/premium_details_arguments_list.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widget_normal_txt.dart';
import '../../../widgets/widget_product_info_detail_title.dart';
import 'motor/add_on_list.dart';

class AdditionalRiskCoverScreen extends StatefulWidget {
  final PremiumDetailsArguments arguments;

  const AdditionalRiskCoverScreen({super.key, required this.arguments});

  @override
  State<AdditionalRiskCoverScreen> createState() => _AdditionalRiskCoverScreenState();
}

class _AdditionalRiskCoverScreenState extends State<AdditionalRiskCoverScreen> {
  List<AddOnList> addOnFireList = [

  ];

  void onCheckboxChanged(bool? value, AddOnList item) {
    setState(() {
      item.isChecked = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          widget.arguments.appBarIcon,
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
          ProductInfoDetailTitleWidget(
            titleTxt: widget.arguments.title,
          ),
          const SizedBox(
            height: kMarginCardMedium_2,
          ),
          const AdditionalRiskCovetTxtWidget(),
          const SizedBox(
            height: kMarginCardMedium_2,
          ),
          Expanded(
            child: Padding(
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
                        priceTxt: '${100} ${widget.arguments.isMMK ? 'MMK' : 'USD'}',
                        padding: const EdgeInsets.only(
                            left: kMarginCardMedium_2,
                            right: kMarginCardMedium_2,
                            top: kMarginSmall_2)),
                    Divider(
                      color: context.appColors.colorPrimary,
                    ),
                    AdditionalCoverTxtWidget(isMMK: widget.arguments.isMMK,),
                    Expanded(
                        child: Padding(
                          padding:
                          const EdgeInsets.only(right: kMarginCardMedium_2),
                          child: ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: widget.arguments.addOnList != null ? widget.arguments.addOnList?.length : addOnFireList.length,
                            itemBuilder: (context, index) {
                              // AddOnList items = addOnFireList[index];
                              AddOnList? items = widget.arguments.addOnList?[index];

                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Checkbox(
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                    checkBoxRadius))),
                                        value: items?.isChecked,
                                        onChanged: (bool? value) {
                                          onCheckboxChanged(value, items!);
                                        },
                                        checkColor: Colors.white,
                                        activeColor:
                                        context.appColors.colorPrimary,
                                      ),
                                      Expanded(child: NormalTxtWidget(txt: items!.label, fontColor: context.appColors.colorLabel,)),
                                      NormalTxtWidget(
                                        // txt: items.isChecked ? '${items.addOnId} MMK' : '0.00 MMK',
                                        txt: '0.00 ${widget.arguments.isMMK ? 'MMK' : 'USD'}',
                                        fontColor: context.appColors.colorLabel,
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        )),
                    Divider(
                      color: context.appColors.colorPrimary,
                    ),
                    BasicAndTotalPremiumWidget(
                      premiumTxt: AppStrings.totalPremium,
                      priceTxt: '${155500} ${widget.arguments.isMMK ? 'MMK' : 'USD'}',
                      padding: const EdgeInsets.only(
                          left: kMarginCardMedium_2,
                          right: kMarginCardMedium_2,
                          bottom: kMarginSmall_2),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kMarginLargeX_2),
            child: NextBtnWidget(
              onNextPressed: () {
                CustomNavigationHelper.router.push(
                  Routes.generalInsPremiumDetailsAndCoverageAddOnPath.path,
                  extra: PremiumDetailsArguments(title: widget.arguments.title, isMMK: widget.arguments.isMMK, appBarIcon: widget.arguments.appBarIcon),
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

class AdditionalCoverTxtWidget extends StatelessWidget {
  final bool isMMK;
  const AdditionalCoverTxtWidget({
    super.key, required this.isMMK,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kMarginCardMedium_2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const NormalTxtWidget(
            txt: AppStrings.additionalCover,
            fontWeight: FontWeight.w600,
          ),
          NormalTxtWidget(
            txt:  isMMK ? AppStrings.premiumMMK : AppStrings.premiumUSD,
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

