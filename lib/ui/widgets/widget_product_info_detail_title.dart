import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

class ProductInfoDetailTitleWidget extends StatelessWidget {
  final String titleTxt;

  const ProductInfoDetailTitleWidget({super.key, required this.titleTxt});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(titleTxt.tr(),
          style: context.appFonts.bodySmall()?.copyWith(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: context.appColors.colorPrimary,
          )),
    );
  }
}
