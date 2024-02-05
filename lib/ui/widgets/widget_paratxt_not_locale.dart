import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

class ParagraphTextNotLocale extends StatelessWidget {
  final String txt;
  final double paddingSize;
  final FontWeight fontWeight;

  const ParagraphTextNotLocale(
      {super.key, required this.txt, required this.paddingSize, required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingSize),
      child: Text(
        txt,
        style: context.appFonts
            .bodySmall()
            ?.copyWith(color: context.appColors.colorPrimary, height: 1.9, fontWeight: fontWeight),
      ),
    );
  }
}
