import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

class BuyOnlineLabelTxtWidget extends StatelessWidget {
  final String labelTxt;
  final bool isRequire;
  final MainAxisAlignment mainAxisAlignment;

  const BuyOnlineLabelTxtWidget(
      {super.key, required this.labelTxt, this.isRequire = true, this.mainAxisAlignment = MainAxisAlignment.center});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Flexible(
          child: Text(
            labelTxt,
            style: context.appFonts
                .bodySmall()
                ?.copyWith(color: context.appColors.colorBtnOutline),
          ),
        ),
        isRequire == true
            ? Text(
                '*',
                style: TextStyle(color: context.appColors.colorError),
              )
            : const Text('')
      ],
    );
  }
}
