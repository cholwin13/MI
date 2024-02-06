import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../helper/dimens.dart';
import '../../helper/navigation_routes.dart';
import 'card_view_vo.dart';

class CardViewWidget extends StatelessWidget {
  final CardViewVO vo;

  const CardViewWidget({super.key, required this.vo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            CustomNavigationHelper.router.push(vo.route.path);
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: context.appColors.colorPrimary),
              borderRadius: BorderRadius.circular(boxRadius),
              color: context.appColors.colorPrimary,
            ),
            padding: const EdgeInsets.all(25.0),
            child: Image.asset(
              vo.icon,
              width: iconLarge_3,
              height: iconLarge_3,
              color: context.appColors.colorGold,
            ),
          ),
        ),
        const SizedBox(height: kMarginSmall,),
        Text(
          vo.title.tr(),
          textAlign: TextAlign.center,
          style: context.appFonts.bodySmall()?.copyWith(
            fontSize: 10.0,
          ),
        ),
      ],
    );
  }
}