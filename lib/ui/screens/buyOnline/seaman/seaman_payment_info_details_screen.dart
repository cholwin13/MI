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

class SeamanPaymentInfoDetailsScreen extends StatefulWidget {
  const SeamanPaymentInfoDetailsScreen({super.key});

  @override
  State<SeamanPaymentInfoDetailsScreen> createState() => _SeamanPaymentInfoDetailsScreenState();
}

class _SeamanPaymentInfoDetailsScreenState extends State<SeamanPaymentInfoDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeSeamanIcon,
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
                    txt1: AppStrings.paymentAmount,
                    txt2: '150.00 USD',
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
                  TwoColumnTextWidget(
                    txt1: AppStrings.netAmount,
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
                      AppStrings.insurePersonPassportTxt,
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
                    txt1: AppStrings.passportNumber,
                    txt2: 'VISA',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.passportIssueDate,
                    txt2: '150.00 USD',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.passportIssueCountry,
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
                      AppStrings.insurePersonInfo,
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
                    txt1: AppStrings.insureFor,
                    txt2: 'VISA',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.insureNameAsPerPassport,
                    txt2: '150.00 USD',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.dobPassport,
                    txt2: '150.00 USD',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.genderPassport,
                    txt2: '150.00 USD',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.estimatedArrivalDate,
                    txt2: '150.00 USD',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.journeyFrom,
                    txt2: '150.00 USD',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.journeyTo,
                    txt2: '150.00 USD',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.coveragePlanBuyOnline,
                    txt2: '150.00 USD',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.insureContactNo,
                    txt2: '150.00 USD',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.residentAddress,
                    txt2: '150.00 USD',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.residentCountry,
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
                      AppStrings.beneInfo,
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
                    txt2: 'VISA',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.dob,
                    txt2: '150.00 USD',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.relationship,
                    txt2: '150.00 USD',
                    textColor: context.appColors.colorLabel,
                    lftFontWeight: FontWeight.bold,
                    fontSize: textRegular,
                  ),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  TwoColumnTextWidget(
                    txt1: AppStrings.beneContactNo,
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
