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

class TplDriverPremiumAndPaymentScreen extends StatelessWidget {
  const TplDriverPremiumAndPaymentScreen({super.key});

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
                txt1: AppStrings.name,
                txt2: '',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.dob,
                txt2: '',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              TwoColumnTextWidget(
                txt1: 'Type of Driver ID',
                txt2: '',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              TwoColumnTextWidget(
                txt1: 'Premium Amount',
                txt2: '',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
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
                padding: const EdgeInsets.only(bottom: kMarginMedium_3),
                decoration: BoxDecoration(
                  border: Border.all(color: context.appColors.colorPrimary),
                  borderRadius: BorderRadius.circular(boxRadius),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: kMarginCardMedium_2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PaymentImageWidget(
                            imagePath: AppImages.generalMpuCard,
                            qrType: '',
                            paymentOption: 'MPU',
                            transactionFee: 400,
                            paymentScreenName: 'outboundMMK',
                            onPressed: () {
                              CustomNavigationHelper.router.push(
                                  Routes.tplDriverPaymentInfoDetailsPath.path);
                            }),
                        PaymentImageWidget(
                            imagePath: AppImages.generalCbPay,
                            qrType: 'Q',
                            paymentOption: 'CB',
                            transactionFee: 500,
                            paymentScreenName: 'outboundMMK',
                            onPressed: () {
                              CustomNavigationHelper.router.push(
                                  Routes.tplDriverPaymentInfoDetailsPath.path);
                            }
                        ),
                      ],
                    ),
                    const SizedBox(height: kMarginLarge),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PaymentImageWidget(
                            imagePath: AppImages.generalKbzPay,
                            qrType: 'Q',
                            paymentOption: 'KZ',
                            transactionFee: 500,
                            paymentScreenName: 'outboundMMK',
                            onPressed: () {
                              CustomNavigationHelper.router.push(
                                  Routes.tplDriverPaymentInfoDetailsPath.path);
                            }),
                        PaymentImageWidget(
                            imagePath: AppImages.generalOkDollar,
                            qrType: '',
                            paymentOption: 'OKDOLLAR',
                            transactionFee: 500,
                            paymentScreenName: 'outboundMMK',
                            onPressed: () {
                              CustomNavigationHelper.router.push(
                                  Routes.tplDriverPaymentInfoDetailsPath.path);
                            }
                        ),
                      ],
                    ),
                    const SizedBox(height: kMarginLarge),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PaymentImageWidget(
                            imagePath: AppImages.generalAyaPay,
                            qrType: '',
                            paymentOption: 'AYAPAY',
                            transactionFee: 500,
                            paymentScreenName: 'outboundMMK',
                            onPressed: () {
                              CustomNavigationHelper.router.push(
                                  Routes.tplDriverPaymentInfoDetailsPath.path);
                            }
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
