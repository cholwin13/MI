import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_confirm_alert_box.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widget_two_column_txt.dart';

class TPLPaymentInfoDetailsScreen extends StatelessWidget {
  const TPLPaymentInfoDetailsScreen({super.key});

  final String type = 'MOTOR PRIVATE';

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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kMarginMedium_3),
            child: Column(
              children: [
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                const ProductInfoDetailTitleWidget(titleTxt: 'tpl_title'),
                const SizedBox(
                  height: kMarginLarge,
                ),
                TwoColumnTextWidget(
                  txt1: 'tpl_vehicle_type'.tr(),
                  txt2: type,
                  textColor: context.appColors.colorLabel,
                  lftFontWeight: FontWeight.bold,
                  fontSize: textRegular,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                TwoColumnTextWidget(
                  txt1: 'tpl_total_period'.tr(),
                  txt2: type,
                  textColor: context.appColors.colorLabel,
                  lftFontWeight: FontWeight.bold,
                  fontSize: textRegular,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                TwoColumnTextWidget(
                  txt1: 'tpl_premium_amount'.tr(),
                  txt2: type,
                  textColor: context.appColors.colorLabel,
                  lftFontWeight: FontWeight.bold,
                  fontSize: textRegular,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                TwoColumnTextWidget(
                  txt1: 'tpl_penalty_fee'.tr(),
                  txt2: type,
                  textColor: context.appColors.colorLabel,
                  lftFontWeight: FontWeight.bold,
                  fontSize: textRegular,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                TwoColumnTextWidget(
                  txt1: 'tpl_payment_channel'.tr(),
                  txt2: type,
                  textColor: context.appColors.colorLabel,
                  lftFontWeight: FontWeight.bold,
                  fontSize: textRegular,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                TwoColumnTextWidget(
                  txt1: 'tpl_service_charges'.tr(),
                  txt2: type,
                  textColor: context.appColors.colorLabel,
                  lftFontWeight: FontWeight.bold,
                  fontSize: textRegular,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                TwoColumnTextWidget(
                  txt1: 'tpl_total_amount'.tr(),
                  txt2: type,
                  textColor: context.appColors.colorLabel,
                  lftFontWeight: FontWeight.bold,
                  fontSize: textRegular,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                TwoColumnTextWidget(
                  txt1: 'tpl_next_premium_buy_date'.tr(),
                  txt2: type,
                  textColor: context.appColors.colorLabel,
                  lftFontWeight: FontWeight.bold,
                  fontSize: textRegular,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: NextBtnWidget(
          onNextPressed: () {
            // CustomNavigationHelper.router.push(Routes.tplPaymentPath.path);
            _showNoticeDialog(context);
          },
          txt: 'buy_btn'.tr(),
        ));
  }

  void _showNoticeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => ConfirmAlertBoxWidget(
        titleTxt: Text(
          'tpl_notice'.tr(),
          style: context.appFonts
              .bodySmall()
              ?.copyWith(fontSize: textRegular, fontWeight: FontWeight.bold),
        ),
        contentTxt: Text('tpl_buy_notice'.tr(),
            style:
                context.appFonts.bodySmall()?.copyWith(fontSize: textRegular)),
        cancelButton: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'CANCEL',
            style:
                context.appFonts.bodySmall()?.copyWith(fontSize: textRegular),
          ),
        ),
        confirmButton: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            _showConfirmDialog(context);
          },
          child: Text(
            'OK',
            style: context.appFonts
                .bodySmall()
                ?.copyWith(fontSize: textRegular),
          ),
        ),
      ),
    );
  }

  void _showConfirmDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => ConfirmAlertBoxWidget(
        contentTxt: Text(AppStrings.paymentConfirmTxt,
            style: context.appFonts.bodySmall()?.copyWith(fontSize: textRegular, color: context.appColors.colorPrimary)),
        cancelButton: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'NO',
            style:
            context.appFonts.bodySmall()?.copyWith(fontSize: textRegular),
          ),
        ),
        confirmButton: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            CustomNavigationHelper.router.push(Routes.tplPremiumHistoryPath.path);
          },
          child: Text(
            'YES',
            style: context.appFonts
                .bodySmall()
                ?.copyWith(fontSize: textRegular),
          ),
        ),
      ),
    );
  }
}
