import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../helper/dimens.dart';

class NormalTxtWidget extends StatelessWidget {
  final String txt;
  final FontWeight fontWeight;
  final double fontSize;
  final Color? fontColor;

  const NormalTxtWidget({
    super.key,
    required this.txt,
    this.fontWeight = FontWeight.normal,
    this.fontSize = textSmall2X,
    this.fontColor
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: context.appFonts.bodySmall()?.copyWith(
          fontSize: fontSize,
          color: fontColor ?? context.appColors.colorPrimary,
          fontWeight: fontWeight
      ),
    );
  }
}