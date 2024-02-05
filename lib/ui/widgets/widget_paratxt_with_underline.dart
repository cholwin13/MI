import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

class ParaTextWithUnderline extends StatelessWidget {
  final String txt;

  const ParaTextWithUnderline({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Text(
      txt.tr(),
      style: context.appFonts.bodySmall()?.copyWith(
        color: context.appColors.colorPrimary,
        height: 1.9,
        decoration: TextDecoration.underline,
        decorationColor: context.appColors.colorPrimary,
      ),
    );
  }
}
