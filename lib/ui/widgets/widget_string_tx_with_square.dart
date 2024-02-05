import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../helper/dimens.dart';

class RowStringTxtWithSquare extends StatelessWidget {
  final String rowParaTxt;
  final double paddingSize;

  const RowStringTxtWithSquare(
      {super.key, required this.rowParaTxt, required this.paddingSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingSize),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Icon(
              Icons.square,
              size: iconSmall_2,
              color: context.appColors.colorPrimary,
            ),
          ),
          const SizedBox(width: kMarginCardMedium,),
          Expanded(
            child: Text(
              rowParaTxt,
              style: context.appFonts.bodySmall()?.copyWith(
                  color: context.appColors.colorPrimary, height: 1.9),
            ),
          ),
        ],
      ),
    );
  }
}
