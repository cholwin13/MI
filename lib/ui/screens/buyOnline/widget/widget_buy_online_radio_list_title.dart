import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/dimens.dart';

class RadioListTitleWidget extends StatelessWidget {
  final String titleText;
  final String value;
  final String? groupValue;
  final Function(String?) onChanged;
  const RadioListTitleWidget(
      {super.key,
      required this.titleText,
      required this.value,
      required this.groupValue,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text(
        titleText,
        style: context.appFonts.bodySmall()?.copyWith(
              fontSize: textSmall2X,
            ),
      ),
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }
}
