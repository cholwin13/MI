import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';

class PaymentScreen extends StatelessWidget {
  final String paymentScreenName;
  const PaymentScreen({super.key, required this.paymentScreenName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.generalTlpIcon,
            color: context.appColors.colorGold,
            width: iconMedium_3,
            height: iconMedium_3,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: kMarginCardMedium_2, vertical: kMarginCardMedium_2),
          child: Column(
            children: [
              const SizedBox(
                height: kMarginMedium,
              ),
              const ProductInfoDetailTitleWidget(titleTxt: 'payment_method'),
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: kMarginCardMedium_2,
                          left: kMarginCardMedium_2,
                          right: kMarginCardMedium_2,
                          bottom: kMarginSmall),
                      child: Text(
                        'Payment Option A.',
                        style: context.appFonts
                            .bodySmall()
                            ?.copyWith(color: context.appColors.colorPrimary),
                      ),
                    ),
                    Divider(
                      color: context.appColors.colorPrimary,
                    ),
                    const SizedBox(height: kMarginCardMedium_2),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            ImageContainerWidget(
                              imagePath: AppImages.generalMpuCard,
                              qrType: '',
                              paymentOption: 'MPU',
                              transactionFee: 400,
                              paymentScreenName: paymentScreenName,
                            ),
                            const SizedBox(height: kMarginLarge_3),
                            ImageContainerWidget(
                              imagePath: AppImages.generalOkDollar,
                              qrType: '',
                              paymentOption: 'OKDOLLAR',
                              transactionFee: 500,
                              paymentScreenName: paymentScreenName,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ImageContainerWidget(
                              imagePath: AppImages.generalCbPay,
                              qrType: 'Q',
                              paymentOption: 'CB',
                              transactionFee: 500,
                              paymentScreenName: paymentScreenName,
                            ),
                            const SizedBox(height: kMarginLarge_3),
                            ImageContainerWidget(
                              imagePath: AppImages.generalAyaPay,
                              qrType: '',
                              paymentOption: 'AYAPAY',
                              transactionFee: 500,
                              paymentScreenName: paymentScreenName,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ImageContainerWidget(
                              imagePath: AppImages.generalKbzPay,
                              qrType: 'Q',
                              paymentOption: 'KZ',
                              transactionFee: 500,
                              paymentScreenName: paymentScreenName,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class ImageContainerWidget extends StatelessWidget {
  final String imagePath;
  final String qrType;
  final String paymentOption;
  final int transactionFee;
  final String paymentScreenName;

  const ImageContainerWidget(
      {super.key,
      required this.imagePath,
      required this.qrType,
      required this.paymentOption,
      required this.transactionFee,
      required this.paymentScreenName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (paymentScreenName == "Tpl") {
          CustomNavigationHelper.router
              .push(Routes.tplPaymentInfoDetailsPath.path);
        } else {
          CustomNavigationHelper.router
              .push(Routes.onlineBillerPaymentInfoDetailsPath.path);
        }

        // print('transfee ==> $transactionFee');
        // print('${paymentScreenName}');
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: context.appColors.colorPrimary),
          borderRadius: BorderRadius.circular(boxRadius_3),
        ),
        child: Padding(
          padding: const EdgeInsets.all(kMarginSmall),
          child: Image.asset(
            imagePath,
            width: kMarginExtraLarge_1,
            height: kMarginExtraLarge_1,
          ),
        ),
      ),
    );
  }
}
