import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

class ProductInfoDetailTitleWidget extends StatelessWidget {
  final String titleTxt;
  final bool isLocalized;

  const ProductInfoDetailTitleWidget({super.key, required this.titleTxt, this.isLocalized = true,});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(isLocalized ? titleTxt.tr() : titleTxt,
          style: context.appFonts.bodySmall()?.copyWith(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: context.appColors.colorPrimary,
          )),
    );
  }
}
