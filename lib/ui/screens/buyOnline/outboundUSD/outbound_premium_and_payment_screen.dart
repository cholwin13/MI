import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_product_info_detail_title.dart';
import '../../lifeInsurance/widget/widget_two_column_txt.dart';
import '../widget/widget_payment_image.dart';

class OutboundPremiumAndPayment extends StatelessWidget {
  const OutboundPremiumAndPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalInboundIcon,
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
              const ProductInfoDetailTitleWidget(
                  titleTxt: 'premium_payment_info'),
              const SizedBox(
                height: kMarginLarge,
              ),
              TwoColumnTextWidget(
                txt1: 'Insured For',
                txt2: 'Buy for this passport holder',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              TwoColumnTextWidget(
                txt1: 'Premium Amount',
                txt2: '3,000,000 MMK',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              TwoColumnTextWidget(
                txt1: 'Net Premium',
                txt2: '3,000,000 MMK',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              TwoColumnTextWidget(
                txt1: 'Age (Year)',
                txt2: '1',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              TwoColumnTextWidget(
                txt1: 'Coverage Plan',
                txt2: '60 DAYS',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              TwoColumnTextWidget(
                txt1: 'Packages',
                txt2: '30,000,000 MMK',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              TwoColumnTextWidget(
                txt1: 'Passport Number',
                txt2: 'Pas234',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.insureNamePassport,
                txt2: 'Myo',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.estimatedDeptDate,
                txt2: '11-02-2023',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Choose Payment method',
                  style: context.appFonts.bodySmall()?.copyWith(
                      color: context.appColors.colorPrimary,
                      fontSize: textRegular,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: kMarginMedium,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: kMarginMedium_3),
                decoration: BoxDecoration(
                  border: Border.all(color: context.appColors.colorPrimary),
                  borderRadius: BorderRadius.circular(boxRadius),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PaymentImageWidget(
                            imagePath: AppImages.generalVisaCard,
                            qrType: '',
                            paymentOption: 'MPU',
                            transactionFee: 400,
                            paymentScreenName: 'inbound',
                            onPressed: (){
                              CustomNavigationHelper.router
                                  .push(Routes.outboundPaymentInfoDetailsPath.path);
                            }
                        ),
                        const SizedBox(height: kMarginLarge_3),
                        PaymentImageWidget(
                            imagePath: AppImages.generalMasterCard,
                            qrType: '',
                            paymentOption: 'OKDOLLAR',
                            transactionFee: 500,
                            paymentScreenName: 'inbound',
                            onPressed: (){
                              CustomNavigationHelper.router
                                  .push(Routes.outboundPaymentInfoDetailsPath.path);
                            }
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kMarginMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
