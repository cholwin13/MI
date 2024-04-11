import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/ui/screens/premiumCalculator/lifeInsurance/widget/widget_period_and_payment.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/premium_details_arguments_list.dart';
import '../../../../widgets/widget_normal_txt.dart';

class LifePremiumDetailsScreen extends StatefulWidget {
  final PremiumDetailsArguments arguments;
  const LifePremiumDetailsScreen({super.key, required this.arguments});

  @override
  State<LifePremiumDetailsScreen> createState() =>
      _LifePremiumDetailsScreenState();
}

class _LifePremiumDetailsScreenState extends State<LifePremiumDetailsScreen> {
  double totalLossReturn = 100.00;
  double totalPremium = 1000.00;

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
            const PremiumDetailTxt(title: 'life_premium_details_title', image: AppImages.additionalRiskCover,),
            const SizedBox(
              height: kMarginCardMedium_2,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: kMarginSmall),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: context.appColors.colorPrimary),
                      borderRadius: BorderRadius.circular(boxRadius),
                    ),
                    child: Column(
                      children: [
                        PremiumAndTypesWidget(
                          premiumTxt: totalLossReturn.toStringAsFixed(2),
                          typesTxt: 'kyarfishing_sum_insure'.tr(),
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
                                  child: NormalTxtWidget(txt: 'sth premium', fontColor: context.appColors.colorPrimary,)),
                              NormalTxtWidget(
                                  txt:
                                      '${100.0.toStringAsFixed(2)} ${widget.arguments.isMMK ? 'MMK' : 'USD'}', fontColor: context.appColors.colorPrimary,)
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: kMarginCardMedium_2,
                        ),
                        if (widget.arguments.isStampFee == true)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: kMarginCardMedium),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                    child: NormalTxtWidget(txt: 'Stamp Fees', fontColor: context.appColors.colorPrimary,)),
                                NormalTxtWidget(
                                    txt:
                                        '${10.00} ${widget.arguments.isMMK ? 'MMK' : 'USD'}', fontColor: context.appColors.colorPrimary,)
                              ],
                            ),
                          ),
                        Divider(
                          color: context.appColors.colorPrimary,
                        ),
                        PremiumAndTypesWidget(
                          premiumTxt: totalPremium.toStringAsFixed(2),
                          typesTxt: 'life_total_payment'.tr(),
                          isMMK: widget.arguments.isMMK,
                        ),
                        const SizedBox(
                          height: kMarginCardMedium_2,
                        ),
                      ],
                    ),
                  ),
                  if (widget.arguments.isStampFee == true)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: kMarginCardMedium, horizontal: kMarginMedium),
                      child: NormalTxtWidget(txt: 'stamp_fee_details'.tr(), fontColor: context.appColors.colorError,),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: kMarginMedium, horizontal: kMarginSmall_3),
                    child: NormalTxtWidget(txt: 'disclaimer'.tr(), fontColor: context.appColors.colorLabel,),
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
  const PremiumAndTypesWidget({
    super.key,
    required this.premiumTxt,
    required this.typesTxt,
    required this.isMMK,
  });

  final String premiumTxt;
  final String typesTxt;
  final bool isMMK;

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
          Flexible(child: NormalTxtWidget(txt: typesTxt, fontColor: context.appColors.colorPrimary,)),
          NormalTxtWidget(txt: '$premiumTxt ${isMMK ? 'MMK' : 'USD'} ', fontColor: context.appColors.colorPrimary,)
        ],
      ),
    );
  }
}

