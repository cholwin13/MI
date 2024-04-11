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
import 'motor/premium_and_add_on_types_list.dart';

class PremiumAndCoverageDetailsScreen extends StatefulWidget {
  final PremiumDetailsArguments arguments;

  const PremiumAndCoverageDetailsScreen({super.key, required this.arguments});

  @override
  State<PremiumAndCoverageDetailsScreen> createState() => _PremiumAndCoverageDetailsScreenState();
}

class _PremiumAndCoverageDetailsScreenState extends State<PremiumAndCoverageDetailsScreen> {
  double totalLossReturn = 100.00;
  double totalPremium = 1000.00;

  List<PremiumAndAddOnTypesList> typesList = [
    PremiumAndAddOnTypesList(addOnType: 'Motor Cycle', premium: 4300.00),
    PremiumAndAddOnTypesList(addOnType: 'SRCC', premium: 4300.00),
    PremiumAndAddOnTypesList(addOnType: 'Nil Excess', premium: 500.00),
    PremiumAndAddOnTypesList(addOnType: 'Acts of God', premium: 0.07),
    PremiumAndAddOnTypesList(addOnType: 'War Risk', premium: 100.00),
  ];

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
          const PremiumAndCoverageDetailTxt(),
          const SizedBox(
            height: kMarginCardMedium_2,
          ),
          Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: kMarginCardMedium_2),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: context.appColors.colorPrimary),
                        borderRadius: BorderRadius.circular(boxRadius),
                      ),
                      child: Column(
                        children: [
                          PremiumAndTypesWidget(
                            premiumTxt: totalLossReturn.toStringAsFixed(2),
                            typesTxt: 'Total Loss Return',
                            isMMK: widget.arguments.isMMK,
                          ),
                          Divider(
                            color: context.appColors.colorPrimary,
                          ),
                          CoverRiskTxtWidget(isMMK: widget.arguments.isMMK),
                          const SizedBox(
                            height: kMarginCardMedium_2,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: kMarginCardMedium),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Flexible(child: NormalTxtWidget(txt: 'sth premium')),
                                NormalTxtWidget(txt: '${100.0.toStringAsFixed(2)} ${widget.arguments.isMMK ? 'MMK' : 'USD'}')
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: kMarginCardMedium_2,
                          ),
                          Divider(
                            color: context.appColors.colorPrimary,
                          ),
                          PremiumAndTypesWidget(
                            premiumTxt: totalPremium.toStringAsFixed(2),
                            typesTxt: 'Total Premium',
                            isMMK: widget.arguments.isMMK,
                          ),
                          const SizedBox(
                            height: kMarginCardMedium_2,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kMarginMedium),
                      child: NormalTxtWidget(txt: 'disclaimer'.tr(), fontColor: context.appColors.colorLabel,),
                    ),
                    NextBtnWidget(
                      onNextPressed: () {
                        CustomNavigationHelper.router.push(Routes.calculatorPath.path);
                      },
                      txt: 'OK',
                      isOKTxt: true,
                    ),
                  ],
                ),
              )
          )
        ],
      )
    );
  }
}

class CoverRiskTxtWidget extends StatelessWidget {
  final bool isMMK;
  const CoverRiskTxtWidget({
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
          const Flexible(child: NormalTxtWidget(txt: 'Cover Risks', fontWeight: FontWeight.w600,)),
          NormalTxtWidget(txt: isMMK ? AppStrings.premiumMMK : AppStrings.premiumUSD, fontWeight: FontWeight.w600,)
        ],
      ),
    );
  }
}

class PremiumAndCoverageDetailTxt extends StatelessWidget {
  const PremiumAndCoverageDetailTxt({
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
            txt: AppStrings.premiumAndCoverageDetails,
          ),
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
          Flexible(child: NormalTxtWidget(txt: typesTxt)),
          NormalTxtWidget(txt: '$premiumTxt ${isMMK ? 'MMK' : 'USD'} ')
        ],
      ),
    );
  }
}