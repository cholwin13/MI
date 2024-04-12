import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/dimens.dart';

class BuyOnlineTitleTxt extends StatelessWidget {
  final String titleTxt;
  final String pageNo;

  const BuyOnlineTitleTxt({super.key, required this.titleTxt, required this.pageNo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kMarginCardMedium, left: kMarginMedium_2, right: kMarginMedium_2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(titleTxt,
                style: context.appFonts.bodySmall()?.copyWith(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                )),
          ),
          Text(pageNo,
              style: context.appFonts.bodySmall()?.copyWith(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              )),
        ],
      ),
    );
  }
}