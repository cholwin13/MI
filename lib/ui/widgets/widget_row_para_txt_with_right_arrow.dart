import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../helper/dimens.dart';

class RowParaTxtWithRightArrow extends StatelessWidget {
  final String rowParaTxt;
  final double paddingSize;

  const RowParaTxtWithRightArrow(
      {super.key, required this.rowParaTxt, required this.paddingSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingSize),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.arrow_right,
            size: iconMedium_3,
            color: context.appColors.colorPrimary,
          ),
          Expanded(
            child: Text(
              rowParaTxt.tr(),
              style: context.appFonts.bodySmall()?.copyWith(
                  color: context.appColors.colorPrimary, height: 1.9),
            ),
          ),
        ],
      ),
    );
  }
}
