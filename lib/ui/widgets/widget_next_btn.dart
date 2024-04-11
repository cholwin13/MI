import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../helper/dimens.dart';

class NextBtnWidget extends StatelessWidget {
  final GlobalKey<FormState>? formKey;
  final void Function() onNextPressed;
  final String txt;
  final bool? isOKTxt;
  final bool buyOnlineStyle;

  const NextBtnWidget({
    super.key,
    this.formKey,
    required this.onNextPressed,
    required this.txt,
    this.isOKTxt = false,
    this.buyOnlineStyle = false,
  });

  @override
  Widget build(BuildContext context) {
    return buyOnlineStyle == false
        ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: context.appColors.colorPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(boxRadius_2),
              ),
            ),
            onPressed: () {
              onNextPressed();
            },
            child: isOKTxt == false
                ? Text(
              txt,
              style: context.appFonts
                  .buttonTextSmall()
                  ?.copyWith(color: context.appColors.colorGold),
            )
                : Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kMarginSmall_3),
              child: Text(
                txt,
                style: context.appFonts
                    .bodySmall()
                    ?.copyWith(color: context.appColors.colorGold),
              ),
            )),
      ],
    )
        : Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: context.appColors.colorPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(boxRadius_2),
            ),
          ),
          onPressed: () {
            onNextPressed();
          },
          child: Text(
            txt,
            style: context.appFonts
                .buttonTextSmall()
                ?.copyWith(color: context.appColors.colorGold),
          ),
        )
      ],
    );
  }
}
