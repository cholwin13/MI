import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_localized_paragraph_txt.dart';
import '../../widgets/widget_product_info_detail_title.dart';
import '../../widgets/widget_arrow_indicator_row_txt.dart';

class ShipOwnerScreen extends StatelessWidget {
  const ShipOwnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalShipOwnerIcon,
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
                        titleTxt: 'ship_owner_title',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'ship_para1',
                        paddingSize: 0.0,
                      ),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'ship_para2',
                        paddingSize: 0.0,
                      ),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'ship_para3',
                        paddingSize: 0.0,
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'ship_para4', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'ship_para4_1',
                        paddingSize: 0.0,
                      ),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'ship_para4_2',
                        paddingSize: 0.0,
                      ),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'ship_para4_3',
                        paddingSize: 0.0,
                      ),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'ship_para4_4',
                        paddingSize: 0.0,
                      ),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'ship_para4_5',
                        paddingSize: 0.0,
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'ship_para5', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'ship_para5_1',
                        paddingSize: 0.0,
                      ),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'ship_para5_2',
                        paddingSize: 0.0,
                      ),
                      const LocalizedParagraphText(txt: 'ship_para5_2_1', paddingSize: kMarginLarge_2),
                      const LocalizedParagraphText(txt: 'ship_para5_2_2', paddingSize: kMarginLarge_2),
                      const LocalizedParagraphText(txt: 'ship_para5_2_3', paddingSize: kMarginLarge_2),
                      const LocalizedParagraphText(txt: 'ship_para5_2_4', paddingSize: kMarginLarge_2),
                      const LocalizedParagraphText(txt: 'ship_para5_2_5', paddingSize: kMarginLarge_2),
                      const LocalizedParagraphText(txt: 'ship_para5_2_6', paddingSize: kMarginLarge_2),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'ship_para6', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'ship_para6_1',
                        paddingSize: 0.0,
                      ),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'ship_para6_2',
                        paddingSize: 0.0,
                      ),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'ship_para6_3',
                        paddingSize: 0.0,
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
