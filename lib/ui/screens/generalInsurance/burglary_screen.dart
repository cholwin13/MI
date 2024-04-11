import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_localized_paragraph_txt.dart';
import '../../widgets/widget_product_info_detail_title.dart';
import '../../widgets/widget_arrow_indicator_row_txt.dart';

class BurglaryScreen extends StatelessWidget {
  const BurglaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalBurglaryIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(kMarginMedium_3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProductInfoDetailTitleWidget(
                      titleTxt: 'burglary_title',
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    
                    LocalizedParagraphText(txt: 'Burglary_Insurance_Description', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'Burglary_Insurance_Purpose',
                      paddingSize: 0.0,
                    ),
                  ],
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
