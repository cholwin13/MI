import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_localized_paragraph_txt.dart';
import '../../widgets/widget_product_info_detail_title.dart';
import '../../widgets/widget_arrow_indicator_row_txt.dart';

class WorkmenScreen extends StatelessWidget {
  const WorkmenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalWorkmenIcon,
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
                        titleTxt: 'workmen_compensation_title',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'workmen_title_desc', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const LocalizedParagraphText(txt: 'workmen_para_1', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'workmen_para_2', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'workmen_para_3', paddingSize: 0.0),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'workmen_para_3_1',
                        paddingSize: 0.0,
                      ),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'workmen_para_3_2',
                        paddingSize: 0.0,
                      ),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'workmen_para_3_3',
                        paddingSize: 0.0,
                      ),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'workmen_para_3_4',
                        paddingSize: 0.0,
                      ),
                      const LocalizedParagraphText(txt: 'workmen_para_4', paddingSize: 0.0),
                    ],
                  )),
            ),
          ),

        ],
      ),
    );
  }
}
