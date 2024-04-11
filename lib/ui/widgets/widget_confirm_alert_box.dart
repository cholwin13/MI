import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../helper/dimens.dart';

class ConfirmAlertBoxWidget extends StatelessWidget {
  final Widget? titleTxt;
  final Widget? contentTxt;
  final Widget? cancelButton;
  final Widget? confirmButton;

  const ConfirmAlertBoxWidget({
    super.key,
    this.contentTxt,
    this.titleTxt,
    this.cancelButton,
    this.confirmButton,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(alertBoxRadius)),
      ),
      title: titleTxt,
      content: contentTxt,
      actions: [
        cancelButton ??
            TextButton(
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
        confirmButton ??
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'OK',
                style: context.appFonts
                    .bodySmall()
                    ?.copyWith(fontSize: textRegular),
              ),
            ),
      ],
      contentPadding: const EdgeInsets.only(
          top: 20.0, left: 20.0, right: 10.0, bottom: 10.0),
      actionsPadding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
    );
  }
}