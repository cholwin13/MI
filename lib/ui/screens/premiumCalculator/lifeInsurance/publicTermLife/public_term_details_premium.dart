
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/ui/screens/premiumCalculator/lifeInsurance/widget/widget_period_and_payment.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../network/responses/life_product_premium_response/life_product_premium_response.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widget_normal_txt.dart';

class PublicTermDetailsPremium extends StatefulWidget {
  final PublicTermPremiumDetailsArguments arguments;
  const PublicTermDetailsPremium({super.key, required this.arguments});

  @override
  State<PublicTermDetailsPremium> createState() =>
      _PublicTermDetailsPremiumState();
}

class _PublicTermDetailsPremiumState extends State<PublicTermDetailsPremium> {
  late double sumInsure;
  late String productName;
  late String premium;
  late String addOnProductName;
  late String addOnPremium;

  @override
  void initState() {
    super.initState();
    if(widget.arguments.responseData != null){
      sumInsure = widget.arguments.sumInsure!;
      if(widget.arguments.isAbroad == "No"){
        productName = widget.arguments.responseData![0].name;
        premium = widget.arguments.responseData![0].premium.toStringAsFixed(2);
      }else if(widget.arguments.isAbroad == "Yes"){
        productName = widget.arguments.responseData![0].name;
        premium = widget.arguments.responseData![0].premium.toStringAsFixed(2);
        addOnProductName = widget.arguments.responseData![1].name;
        addOnPremium = widget.arguments.responseData![1].premium.toStringAsFixed(2);
      }
    }
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kMarginCardMedium_2, vertical: kMarginCardMedium_2),
        child: Column(
          children: [
            ProductInfoDetailTitleWidget(
              titleTxt: widget.arguments.title,
            ),
            const SizedBox(
              height: kMarginCardMedium_2,
            ),
            const PremiumDetailTxt(
              title: 'life_premium_details_title',
              image: AppImages.additionalRiskCover,
            ),
            const SizedBox(
              height: kMarginCardMedium_2,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: kMarginSmall),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: context.appColors.colorPrimary),
                      borderRadius: BorderRadius.circular(boxRadius),
                    ),
                    child: Column(
                      children: [
                        PremiumAndTypesWidget(
                          premiumTxt: sumInsure.toStringAsFixed(2),
                          typesTxt: 'kyarfishing_sum_insure'.tr(),
                          premiumCalTxt: '(${widget.arguments.unit}Unit x 1,000,000) MMK',
                          isMMK: widget.arguments.isMMK,
                        ),
                        Divider(
                          color: context.appColors.colorPrimary,
                        ),
                        DetailsTxtWidget(isMMK: widget.arguments.isMMK),
                        const SizedBox(
                          height: kMarginCardMedium_2,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kMarginCardMedium),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  child: NormalTxtWidget(
                                txt: productName,
                                fontColor: context.appColors.colorPrimary,
                              )),
                              NormalTxtWidget(
                                txt:
                                    '$premium ${widget.arguments.isMMK ? 'MMK' : 'USD'}',
                                fontColor: context.appColors.colorPrimary,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: kMarginCardMedium_2,
                        ),
                        if(widget.arguments.isAbroad == "Yes")
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: kMarginCardMedium),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                    child: NormalTxtWidget(
                                      txt: addOnProductName,
                                      fontColor: context.appColors.colorPrimary,
                                    )),
                                NormalTxtWidget(
                                  txt:
                                  '$addOnPremium ${widget.arguments.isMMK ? 'MMK' : 'USD'}',
                                  fontColor: context.appColors.colorPrimary,
                                )
                              ],
                            ),
                          ),
                        Divider(
                          color: context.appColors.colorPrimary,
                        ),
                        PremiumAndTypesWidget(
                          premiumTxt: '10.000',
                          typesTxt: 'life_total_payment'.tr(),
                          isMMK: widget.arguments.isMMK,
                        ),
                        const SizedBox(
                          height: kMarginCardMedium_2,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kMarginMedium, horizontal: kMarginSmall_3),
                    child: NormalTxtWidget(
                      txt: 'disclaimer'.tr(),
                      fontColor: context.appColors.colorLabel,
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: NextBtnWidget(
        onNextPressed: () {
          CustomNavigationHelper.router.push(Routes.calculatorPath.path);
        },
        txt: 'OK',
        isOKTxt: true,
      ),
    );
  }
}

class DetailsTxtWidget extends StatelessWidget {
  final bool isMMK;
  const DetailsTxtWidget({
    super.key,
    required this.isMMK,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: kMarginCardMedium,
          right: kMarginCardMedium,
          top: kMarginSmall_3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              child: NormalTxtWidget(
            txt: 'life_details_title'.tr(),
            fontWeight: FontWeight.bold,
            fontColor: context.appColors.colorPrimary,
          )),
          NormalTxtWidget(
            txt: isMMK ? AppStrings.premiumMMK : AppStrings.premiumUSD,
            fontWeight: FontWeight.bold,
            fontColor: context.appColors.colorPrimary,
          )
        ],
      ),
    );
  }
}

class PremiumAndTypesWidget extends StatelessWidget {
  const PremiumAndTypesWidget(
      {super.key,
      required this.premiumTxt,
      required this.typesTxt,
      required this.isMMK,
      this.premiumCalTxt});

  final String premiumTxt;
  final String typesTxt;
  final bool isMMK;
  final String? premiumCalTxt;

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
          premiumCalTxt != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NormalTxtWidget(
                      txt: typesTxt,
                      fontColor: context.appColors.colorPrimary,
                    ),
                    NormalTxtWidget(
                      txt: premiumCalTxt ?? '',
                      fontColor: context.appColors.colorPrimary,
                    ),
                  ],
                )
              : NormalTxtWidget(
                  txt: typesTxt,
                  fontColor: context.appColors.colorPrimary,
                ),
          NormalTxtWidget(
            txt: '$premiumTxt ${isMMK ? 'MMK' : 'USD'} ',
            fontColor: context.appColors.colorPrimary,
          )
        ],
      ),
    );
  }
}

class PublicTermPremiumDetailsArguments {
  final String title;
  final bool isMMK;
  final String appBarIcon;
  final List<LifeProductPremiumResponse>? responseData;
  final double? sumInsure;
  final int? unit;
  final String isAbroad;

  PublicTermPremiumDetailsArguments({
    required this.title,
    required this.isMMK,
    required this.appBarIcon,
    this.responseData,
    this.sumInsure,
    this.unit,
    required this.isAbroad
  });
}
