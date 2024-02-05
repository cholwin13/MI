import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../helper/dimens.dart';

class WidgetTopBar extends StatelessWidget {
  final bool isLeftBtnSelected;
  final bool isRightBtnSelected;
  final VoidCallback onLeftTap;
  final VoidCallback onRightTap;
  final String leftBtnTxt;
  final String rightBtnTxt;

  const WidgetTopBar({
    super.key,
    required this.isLeftBtnSelected,
    required this.isRightBtnSelected,
    required this.onLeftTap,
    required this.onRightTap,
    required this.leftBtnTxt,
    required this.rightBtnTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onLeftTap,
            child: Container(
              height: topBarWidgetHeight,
              decoration: BoxDecoration(
                color: isLeftBtnSelected == true ? context.appColors.colorPrimary : context.appColors.colorGray,
                borderRadius: const BorderRadius.all(Radius.circular(boxRadius)),
              ),
              child: Center(
                child: Text(
                  leftBtnTxt.tr(),
                  style: context.appFonts.buttonTextSmall()?.copyWith(
                    color: isLeftBtnSelected == true ? context.appColors.colorGold : context.appColors.colorPrimary,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: onRightTap,
            child: Container(
              height: topBarWidgetHeight,
              decoration: BoxDecoration(
                color: isRightBtnSelected == true ? context.appColors.colorPrimary : context.appColors.colorGray,
                borderRadius: const BorderRadius.all(Radius.circular(boxRadius)),
              ),
              child: Center(
                child: Text(
                  rightBtnTxt.tr(),
                  style: context.appFonts.buttonTextSmall()?.copyWith(
                    color: isRightBtnSelected == true ? context.appColors.colorGold : context.appColors.colorPrimary,
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
