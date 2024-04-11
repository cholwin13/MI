import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../../helper/navigation_routes.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_calculator_floating_btn.dart';
import '../../widgets/widget_localized_paragraph_txt.dart';
import '../../widgets/widget_product_info_detail_title.dart';
import '../../widgets/widget_arrow_indicator_row_txt.dart';

class KyarFishingScreen extends StatefulWidget {
  const KyarFishingScreen({super.key});

  @override
  State<KyarFishingScreen> createState() => _KyarFishingScreenState();
}

class _KyarFishingScreenState extends State<KyarFishingScreen> {
  bool? isLocale;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        checkLanguage();
      });
    });
  }

  void checkLanguage() {
    setState(() {
      isLocale = context.isEnglish ? true : false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalTigerFishingIcon,
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
                        titleTxt: 'kyar_fishing_title',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      const LocalizedParagraphText(txt: 'kyarfishing_insure', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'kyarfishing_1', paddingSize: 0.0),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      const LocalizedParagraphText(txt: 'kyarfishing_org', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'kyarfishing_2', paddingSize: 0.0),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      const LocalizedParagraphText(txt: 'kyarfishing_period', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'kyarfishing_3', paddingSize: 0.0),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      const LocalizedParagraphText(txt: 'kyarfishing_sum_insure', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'kyarfishing_4', paddingSize: 0.0),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      const LocalizedParagraphText(txt: 'kyarfishing_premium', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'kyarfishing_5', paddingSize: 0.0),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      const LocalizedParagraphText(txt: 'kyarfishing_coverage', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'kyarfishing_6', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'kyarfishing_6_a', paddingSize: kMarginLarge_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_6_b', paddingSize: kMarginLarge_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_6_c', paddingSize: kMarginLarge_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_6_d', paddingSize: kMarginLarge_2),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      const LocalizedParagraphText(txt: 'kyarfishing_benefit', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'kyarfishing_7', paddingSize: 0.0),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: LocalizedParagraphText(txt: 'kyarfishing_7a', paddingSize: 0.0)),
                          SizedBox(width: kMarginMedium_3,),
                          Expanded(child: LocalizedParagraphText(txt: 'kyarfishing_7a_1', paddingSize: 0.0)),
                        ],
                      ),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: LocalizedParagraphText(txt: 'kyarfishing_7b', paddingSize: 0.0)),
                          SizedBox(width: kMarginMedium_3,),
                        ],
                      ),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: LocalizedParagraphText(txt: 'kyarfishing_7b_2', paddingSize: 0.0)),
                          SizedBox(width: kMarginMedium_3,),
                          Expanded(child: LocalizedParagraphText(txt: 'kyarfishing_7b_1', paddingSize: 0.0)),
                        ],
                      ),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: LocalizedParagraphText(txt: 'kyarfishing_7b_3', paddingSize: 0.0)),
                          SizedBox(width: kMarginMedium_3,),
                          Expanded(child: LocalizedParagraphText(txt: 'kyarfishing_7b_1', paddingSize: 0.0)),
                        ],
                      ),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: LocalizedParagraphText(txt: 'kyarfishing_7b_4', paddingSize: 0.0)),
                          SizedBox(width: kMarginMedium_3,),
                          Expanded(child: LocalizedParagraphText(txt: 'kyarfishing_7b_1', paddingSize: 0.0)),
                        ],
                      ),
                      const LocalizedParagraphText(txt: 'kyarfishing_7b_5', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'kyarfishing_7b_6', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'kyarfishing_remark', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'kyarfishing_remark_1', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'kyarfishing_remark_2', paddingSize: kMarginLarge),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      const LocalizedParagraphText(txt: 'kyarfishing_exclusion', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'kyarfishing_8', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'kyarfishing_8a', paddingSize: kMarginMedium_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_8b', paddingSize: kMarginMedium_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_8b_1', paddingSize: kMarginMedium_3),
                      const LocalizedParagraphText(txt: 'kyarfishing_8b_2', paddingSize: kMarginMedium_3),
                      const LocalizedParagraphText(txt: 'kyarfishing_8b_3', paddingSize: kMarginMedium_3),
                      const LocalizedParagraphText(txt: 'kyarfishing_8b_4', paddingSize: kMarginMedium_3),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      const LocalizedParagraphText(txt: 'kyarfishing_req_id', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'kyarfishing_9', paddingSize: 0.0),
                      isLocale == true
                          ? const SizedBox()
                          : const LocalizedParagraphText(txt: 'kyarfishing_9ka', paddingSize: 0.0),
                      isLocale == true
                          ? const SizedBox()
                          : const LocalizedParagraphText(txt: 'kyarfishing_9kha', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'kyarfishing_9_1', paddingSize: kMarginMedium_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_9_2', paddingSize: kMarginMedium_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_9_3', paddingSize: kMarginMedium_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_9_4', paddingSize: kMarginMedium_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_9_5', paddingSize: kMarginMedium_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_9_6', paddingSize: kMarginMedium_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_9_7', paddingSize: kMarginMedium_2),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      const LocalizedParagraphText(txt: 'kyarfishing_general', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'kyarfishing_10', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'kyarfishing_10_a', paddingSize: kMarginMedium_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_10_b', paddingSize: kMarginMedium_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_10_c', paddingSize: kMarginMedium_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_10_d', paddingSize: kMarginMedium_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_10_e', paddingSize: kMarginMedium_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_10_f', paddingSize: kMarginMedium_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_10_g', paddingSize: kMarginMedium_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_10_h', paddingSize: kMarginMedium_2),
                      const LocalizedParagraphText(txt: 'kyarfishing_10_i', paddingSize: kMarginMedium_2),

                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
