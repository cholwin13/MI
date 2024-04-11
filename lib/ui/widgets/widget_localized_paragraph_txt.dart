import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

class LocalizedParagraphText extends StatelessWidget {
  final String txt;
  final double paddingSize;
  final bool isLocalized;
  final FontWeight fontWeight;
  final TextDecoration? textDecoration;
  final Color? decorationColor;

  const LocalizedParagraphText({
    super.key,
    required this.txt,
    required this.paddingSize,
    this.isLocalized = true,
    this.fontWeight = FontWeight.normal,
    this.textDecoration,
    this.decorationColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingSize),
      child: Text(
        isLocalized ? txt.tr() : txt,
        // txt.tr(),
        style: context.appFonts.bodySmall()?.copyWith(
          color: context.appColors.colorPrimary,
          height: 1.9,
          fontWeight: fontWeight,
          decoration: textDecoration,
          decorationColor: decorationColor,
        ),
      ),
    );
  }
}