import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../helper/dimens.dart';

class NoticeAlertBoxWidget extends StatelessWidget {
  final Widget? titleTxt;
  final Widget? contentTxt;

  const NoticeAlertBoxWidget({super.key, this.titleTxt, this.contentTxt});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(alertBoxRadius)),
      ),
      title: titleTxt,
      content: contentTxt,
      actions: [
        TextButton(
          child: Text('OK', style: context.appFonts
              .bodySmall()
              ?.copyWith(fontSize: textRegular),),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}