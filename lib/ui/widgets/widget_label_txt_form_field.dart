import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

class LabelTxtInFormFieldWidget extends StatelessWidget {
  final String labelTxt;


  const LabelTxtInFormFieldWidget({super.key, required this.labelTxt});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            labelTxt,
            style: context.appFonts.bodySmall()?.copyWith(
                color: context.appColors.colorLabel
            ),
          ),
        ),
        Text('*', style: TextStyle(
            color: context.appColors.colorError
        ),)
      ],
    );
  }
}