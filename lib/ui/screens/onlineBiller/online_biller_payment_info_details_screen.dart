import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../helper/app_images.dart';
import '../../../helper/app_strings.dart';
import '../../../helper/dimens.dart';
import '../../../helper/navigation_routes.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_confirm_alert_box.dart';
import '../../widgets/widget_next_btn.dart';
import '../../widgets/widget_product_info_detail_title.dart';
import '../../widgets/widget_two_column_txt.dart';

class OnlineBillerPaymentInfoDetailsScreen extends StatelessWidget {
  const OnlineBillerPaymentInfoDetailsScreen({super.key});

  final String paymentChannel = 'AYAPAY';

  @override
  Widget build(BuildContext context) {
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
              const ProductInfoDetailTitleWidget(titleTxt: 'online_biller_payment_info_details'),
              const SizedBox(
                height: kMarginLarge,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.paymentChannel,
                txt2: paymentChannel,
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.premium,
                txt2: paymentChannel,
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.stampFee,
                txt2: paymentChannel,
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.bannkCharges,
                txt2: paymentChannel,
                textColor: context.appColors.colorLabel,
                lftFontWeight: FontWeight.bold,
                fontSize: textRegular,
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
              TwoColumnTextWidget(
                txt1: AppStrings.totalPayable,
                txt2: paymentChannel,
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
            // CustomNavigationHelper.router.push(Routes.tplPaymentPath.path);
            _showConfirmDialog(context);
          },
          txt: AppStrings.pay,
        )
    );
  }

  void _showConfirmDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => ConfirmAlertBoxWidget(
        titleTxt: Text('Confirm', style: context.appFonts.bodySmall()?.copyWith(fontSize: textRegular),),
        contentTxt: Text(AppStrings.paymentConfirmTxt,
            style: context.appFonts.bodySmall()?.copyWith(fontSize: textRegular)),
        cancelButton: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            CustomNavigationHelper.router.push(Routes.tplPremiumHistoryPath.path);
          },
          child: Text(
            'OK',
            style:
            context.appFonts.bodySmall()?.copyWith(fontSize: textRegular),
          ),
        ),
        confirmButton: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'CANCEL',
            style: context.appFonts
                .bodySmall()
                ?.copyWith(fontSize: textRegular),
          ),
        ),
      ),
    );
  }

}
