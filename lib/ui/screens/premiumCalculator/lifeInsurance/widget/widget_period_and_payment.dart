import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../helper/dimens.dart';
import '../../../../widgets/widget_normal_txt.dart';

class PremiumDetailTxt extends StatelessWidget {
  final String title;
  final String image;

  const PremiumDetailTxt({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
        const SizedBox(
          width: kMarginCardMedium,
        ),
        NormalTxtWidget(
          txt: title.tr(),
        ),
      ],
    );
  }
}
