import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/widget_confirm_alert_box.dart';

class PaymentImageWidget extends StatelessWidget {
  final String imagePath;
  final String qrType;
  final String paymentOption;
  final int transactionFee;
  final String paymentScreenName;
  final VoidCallback? onPressed;

  const PaymentImageWidget(
      {super.key,
        required this.imagePath,
        required this.qrType,
        required this.paymentOption,
        required this.transactionFee,
        required this.paymentScreenName,
        this.onPressed,
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(paymentScreenName == 'inbound') {
          _showConfirmDialog(context);
        }else if(paymentScreenName == 'outboundMMK') {
          _showConfirmDialog(context);
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

  void _showConfirmDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => ConfirmAlertBoxWidget(
        titleTxt: Text(AppStrings.confirmTitleTxt,
        style: context.appFonts.bodySmall()?.copyWith(
          fontSize: textRegular2X,
        ),),
        contentTxt: Text(AppStrings.confirmDescTxt,
            style: context.appFonts.bodySmall()?.copyWith(fontSize: textRegular)),
        cancelButton: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            _showSuccessDialog(context);
          },
          child: Text(
            AppStrings.okText,
            style:
            context.appFonts.bodySmall()?.copyWith(fontSize: textRegular),
          ),
        ),
        confirmButton: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            AppStrings.cancelText,
            style: context.appFonts
                .bodySmall()
                ?.copyWith(fontSize: textRegular),
          ),
        ),
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(alertBoxRadius)),
        ),
        title: Text(AppStrings.successTitleTxt, style: context.appFonts.bodySmall()?.copyWith(
          fontSize: textRegular2X,
        ),),
        content: Text(
            AppStrings.successDescTxt,
            style:
            context.appFonts.bodySmall()?.copyWith(fontSize: textRegular)),
        actions: [
          TextButton(
            onPressed: (){
              Navigator.of(context).pop();
              if (onPressed != null) {
                onPressed!();
              }
            },
            child: const Text(AppStrings.okText),
          ),
        ],
        contentPadding:
        const EdgeInsets.only(top: 20.0, left: 20.0, right: 10.0, bottom: 10.0),
        actionsPadding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      ),
    );
  }

}