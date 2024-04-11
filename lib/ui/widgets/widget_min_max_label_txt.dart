import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

class MinMaxLabelTxtWidget extends StatelessWidget {
  final String labelTxt;


  const MinMaxLabelTxtWidget({super.key, required this.labelTxt});

  @override
  Widget build(BuildContext context) {
    return Text(
      labelTxt,
      style: context.appFonts.bodySmall()?.copyWith(
          color: context.appColors.colorLabel
      ),
    );
  }
}