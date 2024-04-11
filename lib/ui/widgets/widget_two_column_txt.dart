import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/dimens.dart';

class TwoColumnTextWidget extends StatelessWidget {
  final String txt1;
  final String txt2;
  final Color? textColor;
  final FontWeight? lftFontWeight;
  final double? fontSize;

  const TwoColumnTextWidget({super.key, required this.txt1, required this.txt2, this.textColor, this.lftFontWeight, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            txt1,
            style: context.appFonts.bodySmall()?.copyWith(
                color: textColor ?? context.appColors.colorPrimary,
                fontWeight: lftFontWeight ?? FontWeight.normal,
                fontSize: fontSize ?? textSmall2X,
                height: 2
            ),
          ),
        ),
        Expanded(
          child: Text(
            txt2,
            textAlign: TextAlign.right,
            style: context.appFonts.bodySmall()?.copyWith(
                color: textColor ?? context.appColors.colorPrimary,
                fontSize: fontSize ?? textSmall2X,
                height: 2
            ),
          ),
        ),
      ],
    );
  }
}