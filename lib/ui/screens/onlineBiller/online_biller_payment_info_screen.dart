import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../helper/app_images.dart';
import '../../../helper/app_strings.dart';
import '../../../helper/dimens.dart';
import '../../../helper/navigation_routes.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_next_btn.dart';
import '../../widgets/widget_product_info_detail_title.dart';
import '../../widgets/widget_two_column_txt.dart';

class OnlineBillerPaymentInfo extends StatelessWidget {
  const OnlineBillerPaymentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    const String name = 'GIC1000177';

    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.homeOnlinePayment,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kMarginMedium_3),
          child: Column(
            children: [
              const SizedBox(
                height: kMarginMedium_3,
              ),
              const ProductInfoDetailTitleWidget(titleTxt: 'online_biller_payment_info'),
              const SizedBox(
                height: kMarginLarge,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.invoiceNo,
                txt2: name,
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.policyNo,
                txt2: name,
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.insurePersonName,
                txt2: name,
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.agentName,
                txt2: name,
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.licenceNo,
                txt2: name,
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.interest,
                txt2: name,
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.department,
                txt2: name,
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.policyStartDate,
                txt2: name,
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.policyEndDate,
                txt2: name,
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.stampFee,
                txt2: name,
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.sumInsure,
                txt2: name,
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.premium,
                txt2: name,
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.totalPayable,
                txt2: name,
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
            ],
          ),
        ),
      ),
        bottomNavigationBar: NextBtnWidget(
          onNextPressed: () {
            CustomNavigationHelper.router.push(
                Routes.tplPaymentPath.path,
              extra: "OnlineBiller"
            );
          },
          txt: 'next_btn_txt'.tr(),
        )
    );
  }
}
