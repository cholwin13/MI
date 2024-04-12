import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widget_product_info_detail_title.dart';
import '../../lifeInsurance/widget/widget_two_column_txt.dart';

class TplDriverPaymentInfoDetailsScreen extends StatelessWidget {
  const TplDriverPaymentInfoDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalMotorIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: kMarginMedium_3,
            ),
            const ProductInfoDetailTitleWidget(titleTxt: 'premium_payment_info'),
            const SizedBox(
              height: kMarginLarge,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kMarginMedium_3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppStrings.paymentInfo,
                      style: context.appFonts
                          .bodySmall()
                          ?.copyWith(
                          color: context.appColors.colorPrimary,
                          fontSize: textRegular,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.paymentChannel,
                    txt2: 'VISA',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.premiumAmountMMK,
                    txt2: '150.00 MMK',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.serviceCharge,
                    txt2: '150.00 USD',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.totalAmount,
                    txt2: '150.00 USD',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                ],
              ),
            ),
            Divider(
              color: context.appColors.colorPrimary,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kMarginMedium_3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppStrings.insuredPersonInfo,
                      style: context.appFonts
                          .bodySmall()
                          ?.copyWith(
                          color: context.appColors.colorPrimary,
                          fontSize: textRegular,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.name,
                    txt2: '',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.nationalIdNo,
                    txt2: '',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.dob,
                    txt2: '',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.driverCodeNo,
                    txt2: '',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.typeOfDriverId,
                    txt2: '',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.nationalIdNo,
                    txt2: '',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.periodOfYear,
                    txt2: '',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.policyStartDate,
                    txt2: '',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.contactPhNo,
                    txt2: '',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.address,
                    txt2: '',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: kMarginMedium, top: kMarginMedium),
              child: NextBtnWidget(
                onNextPressed: () {
                  // CustomNavigationHelper.router
                  //     .push(Routes.inboundAgentPath.path);
                },
                txt: AppStrings.confirmTitleTxt,
              ),
            )
          ],
        ),
      ),
    );
  }
}
