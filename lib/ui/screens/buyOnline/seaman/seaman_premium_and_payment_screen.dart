import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_product_info_detail_title.dart';
import '../../lifeInsurance/widget/widget_two_column_txt.dart';
import '../widget/widget_payment_image.dart';

class SeamanPremiumAndPaymentScreen extends StatefulWidget {
  const SeamanPremiumAndPaymentScreen({super.key});

  @override
  State<SeamanPremiumAndPaymentScreen> createState() => _SeamanPremiumAndPaymentScreenState();
}

class _SeamanPremiumAndPaymentScreenState extends State<SeamanPremiumAndPaymentScreen> {
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kMarginMedium_3),
          child: Column(
            children: [
              const SizedBox(
                height: kMarginMedium_3,
              ),
              const ProductInfoDetailTitleWidget(titleTxt: 'premium_payment_info'),
              const SizedBox(
                height: kMarginLarge,
              ),
              TwoColumnTextWidget(
                txt1: 'Insured For',
                txt2: 'Buy for Seaman',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              TwoColumnTextWidget(
                txt1: 'Premium Amount',
                txt2: '60,000,00 MMK',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              TwoColumnTextWidget(
                txt1: 'Net Premium',
                txt2: '60,000,00 MMK',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              TwoColumnTextWidget(
                txt1: 'Package Plan',
                txt2: 'Plan 1',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              TwoColumnTextWidget(
                txt1: 'SIRB',
                txt2: 'name',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              TwoColumnTextWidget(
                txt1: 'Passport Number',
                txt2: '60,000,00 MMK',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              TwoColumnTextWidget(
                txt1: 'Name',
                txt2: 'Mg Mg',
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginSmall_3,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Policy Period',
                      style: context.appFonts.bodySmall()?.copyWith(
                          color: context.appColors.colorLabel,
                          fontWeight: FontWeight.bold,
                          fontSize: textRegular
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Start Date - 09-04-2024',
                        textAlign: TextAlign.right,
                        style: context.appFonts.bodySmall()?.copyWith(
                            color: context.appColors.colorLabel,
                            fontSize: textRegular,
                        ),
                      ),
                      Text(
                        'End Date - 09-04-2024',
                        textAlign: TextAlign.right,
                        style: context.appFonts.bodySmall()?.copyWith(
                          color: context.appColors.colorLabel,
                          fontSize: textRegular,
                        ),
                      ),
                    ],
                  ),
                ],
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
                                  Routes.seamanPaymentInfoDetailsPath.path);
                            }),
                        PaymentImageWidget(
                            imagePath: AppImages.generalCbPay,
                            qrType: 'Q',
                            paymentOption: 'CB',
                            transactionFee: 500,
                            paymentScreenName: 'outboundMMK',
                            onPressed: () {
                              CustomNavigationHelper.router.push(
                                  Routes.seamanPaymentInfoDetailsPath.path);
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
                                  Routes.seamanPaymentInfoDetailsPath.path);
                            }),
                        PaymentImageWidget(
                            imagePath: AppImages.generalOkDollar,
                            qrType: '',
                            paymentOption: 'OKDOLLAR',
                            transactionFee: 500,
                            paymentScreenName: 'outboundMMK',
                            onPressed: () {
                              CustomNavigationHelper.router.push(
                                  Routes.seamanPaymentInfoDetailsPath.path);
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
                                  Routes.seamanPaymentInfoDetailsPath.path);
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
