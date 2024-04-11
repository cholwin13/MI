import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/ui/screens/premiumCalculator/generalInsurance/motor/premium_and_add_on_types_list.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_normal_txt.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';

class MotorPremiumAndCoverageDetailScreen extends StatefulWidget {
  final bool isMMK;
  const MotorPremiumAndCoverageDetailScreen({super.key, required this.isMMK});

  @override
  State<MotorPremiumAndCoverageDetailScreen> createState() =>
      _MotorPremiumAndCoverageDetailScreenState();
}

class _MotorPremiumAndCoverageDetailScreenState
    extends State<MotorPremiumAndCoverageDetailScreen> {
  double totalLossReturn = 100.00;
  String carType = 'Private Car';
  String excessType = 'Nil Excess';
  double totalPremium = 1000.00;
  double charges = 500.00;
  double netPremium = 0.0;
  double basicPremium = 536000.00;
  double ownDamage = 0.0;
  double excessValue = 300;

  List<PremiumAndAddOnTypesList> typesList = [
    PremiumAndAddOnTypesList(addOnType: 'SRCC', premium: 4300.00),
    PremiumAndAddOnTypesList(addOnType: 'Nil Excess', premium: 500.00),
    PremiumAndAddOnTypesList(addOnType: 'Acts of God', premium: 0.07),
    PremiumAndAddOnTypesList(addOnType: 'War Risk', premium: 100.00),
  ];

  @override
  Widget build(BuildContext context) {
    double netPremiumValue = totalPremium + charges;
    netPremium = netPremiumValue;
    ownDamage = basicPremium + excessValue;

    return Scaffold(
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
                          isMMK: widget.isMMK,
                        ),
                        Divider(
                          color: context.appColors.colorPrimary,
                        ),
                        CoverRiskTxtWidget(isMMK: widget.isMMK),
                        const SizedBox(
                          height: kMarginCardMedium_2,
                        ),
                        /// Need to extract Widget (Contains Basic Premium , Nil Excess and own damage)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: kMarginCardMedium),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(child: NormalTxtWidget(txt: 'Basic Premium for ${carType}', fontSize: textSmall2X,)),
                                  NormalTxtWidget(txt: '${basicPremium.toStringAsFixed(2)} ${widget.isMMK ? 'MMK' : 'USD'}', fontSize: textSmall2X,)
                                ],
                              ),
                              const SizedBox(
                                height: kMarginMedium,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(child: NormalTxtWidget(txt: 'Premium of ${excessType}', fontSize: textSmall2X,)),
                                  NormalTxtWidget(txt: '${excessValue.toStringAsFixed(2)} ${widget.isMMK ? 'MMK' : 'USD'}')
                                ],
                              ),
                              const SizedBox(
                                height: kMarginMedium,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Flexible(child: NormalTxtWidget(txt: 'Premium of Own Damage')),
                                  NormalTxtWidget(txt: '${ownDamage.toStringAsFixed(2)} ${widget.isMMK ? 'MMK' : 'USD'}')
                                ],
                              ),
                            ],
                          ),
                        ),
                        ///
                        /// Need to Extract Widget (Contains Other Add On Items)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: kMarginCardMedium, vertical: kMarginSmall_3),
                          child: ListView.builder(
                              shrinkWrap: true,
                            itemCount: typesList.length,
                              itemBuilder: (context, index){
                                PremiumAndAddOnTypesList items = typesList[index];

                                return Padding(
                                  padding: const EdgeInsets.symmetric(vertical: kMarginCardMedium),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(child: NormalTxtWidget(txt: 'Premium of ${items.addOnType}')),
                                      NormalTxtWidget(txt: '${(items.premium).toStringAsFixed(2)} ${widget.isMMK ? 'MMK' : 'USD'}')
                                    ],
                                  ),
                                );
                              }
                        ),
                        ),
                        ///
                        Divider(
                          color: context.appColors.colorPrimary,
                        ),
                        PremiumAndTypesWidget(
                          premiumTxt: totalPremium.toStringAsFixed(2),
                          typesTxt: 'Total Premium',
                          isMMK: widget.isMMK,
                        ),
                        PremiumAndTypesWidget(
                          premiumTxt: charges.toStringAsFixed(2),
                          typesTxt: 'Premium Charges (10%)',
                          isMMK: widget.isMMK
                        ),
                        PremiumAndTypesWidget(
                          premiumTxt: netPremium.toStringAsFixed(2),
                          typesTxt: 'Net Premium',
                          isMMK: widget.isMMK,
                        ),
                        const SizedBox(
                          height: kMarginCardMedium_2,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kMarginMedium),
                    child: NormalTxtWidget(txt: 'disclaimer'.tr()),
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
            ),
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
