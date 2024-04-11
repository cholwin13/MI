import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../helper/dimens.dart';

class SliderWidget extends StatelessWidget {
  final bool isSelectLeft;
  final Function(bool) onClick;
  final String leftBtnTxt;
  final String rightBtnTxt;

  const SliderWidget({
    super.key,
    required this.isSelectLeft,
    required this.onClick,
    required this.leftBtnTxt,
    required this.rightBtnTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              onClick(true);
            },
            child: Container(
              height: topBarWidgetHeight,
              decoration: BoxDecoration(
                color: isSelectLeft == true
                    ? context.appColors.colorPrimary
                    : context.appColors.colorGray,
                borderRadius:
                const BorderRadius.all(Radius.circular(boxRadius)),
              ),
              child: Center(
                child: Text(
                  leftBtnTxt.tr(),
                  style: context.appFonts.buttonTextSmall()?.copyWith(
                    color: isSelectLeft == true
                        ? context.appColors.colorGold
                        : context.appColors.colorPrimary,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              onClick(false);
            },
            child: Container(
              height: topBarWidgetHeight,
              decoration: BoxDecoration(
                color: isSelectLeft == false
                    ? context.appColors.colorPrimary
                    : context.appColors.colorGray,
                borderRadius:
                const BorderRadius.all(Radius.circular(boxRadius)),
              ),
              child: Center(
                child: Text(
                  rightBtnTxt.tr(),
                  style: context.appFonts.buttonTextSmall()?.copyWith(
                    color: isSelectLeft == false
                        ? context.appColors.colorGold
                        : context.appColors.colorPrimary,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}