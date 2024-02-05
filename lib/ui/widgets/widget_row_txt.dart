import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../helper/app_strings.dart';

class RowTxt extends StatelessWidget {
  final String txt1;
  final String txt2;

  const RowTxt({super.key, required this.txt1, required this.txt2});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            txt1,
            style: context.appFonts.bodySmall()?.copyWith(
                color: context.appColors.colorPrimary, height: 1.9),
          ),
        ),
        Expanded(
          child: Text(
            txt2,
            textAlign: TextAlign.right,
            style: context.appFonts.bodySmall()?.copyWith(
              color: context.appColors.colorPrimary,
              height: 1.9,
            ),
          ),
        ),
      ],
    );
  }
}