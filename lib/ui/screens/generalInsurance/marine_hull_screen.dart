import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_calculator_floating_btn.dart';
import '../../widgets/widget_localized_paragraph_txt.dart';
import '../../widgets/widget_product_info_detail_title.dart';
import '../../widgets/widget_arrow_indicator_row_txt.dart';
import '../premiumCalculator/generalInsurance/marineHull/marine_hull_premium_calculator_screen.dart';

class MarineHullScreen extends StatefulWidget {
  const MarineHullScreen({super.key});

  @override
  State<MarineHullScreen> createState() => _MarineHullScreenState();
}

class _MarineHullScreenState extends State<MarineHullScreen> {
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
          AppImages.generalMarineHullIcon,
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
                        titleTxt: 'marine_hull_and_machinery_title',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'marine_cargo_title_1', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_1_a',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_1_b',
                          paddingSize: kMarginCardMedium_2),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'marine_hull_a', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const ArrowIndicatorRowTextWidget(rowParaTxt: 'marine_hull_a_1', paddingSize: 0.0),
                      const ArrowIndicatorRowTextWidget(rowParaTxt: 'marine_hull_a_2', paddingSize: 0.0),
                      const ArrowIndicatorRowTextWidget(rowParaTxt: 'marine_hull_a_3', paddingSize: 0.0),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'marine_hull_b', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const ArrowIndicatorRowTextWidget(rowParaTxt: 'marine_hull_b_1', paddingSize: 0.0),
                      
                      LocalizedParagraphText(txt: 'marine_cargo_title_3', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const LocalizedParagraphText(txt: 'marine_hull_b_a', paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(txt: 'marine_hull_b_b', paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(txt: 'marine_hull_b_c', paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(txt: 'marine_hull_b_d', paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(txt: 'marine_hull_b_e', paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(txt: 'marine_hull_b_f', paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(txt: 'marine_hull_b_g', paddingSize: kMarginCardMedium_2),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'marine_hull_b_title2', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const ArrowIndicatorRowTextWidget(rowParaTxt: 'marine_hull_b_title2_1', paddingSize: 0.0),
                      const ArrowIndicatorRowTextWidget(rowParaTxt: 'marine_hull_b_title2_2', paddingSize: 0.0),
                      const ArrowIndicatorRowTextWidget(rowParaTxt: 'marine_hull_b_title2_3', paddingSize: 0.0),
                      const ArrowIndicatorRowTextWidget(rowParaTxt: 'marine_hull_b_title2_4', paddingSize: 0.0),
                      const ArrowIndicatorRowTextWidget(rowParaTxt: 'marine_hull_b_title2_5', paddingSize: 0.0),
                      const ArrowIndicatorRowTextWidget(rowParaTxt: 'marine_hull_b_title2_6', paddingSize: 0.0),
                      const ArrowIndicatorRowTextWidget(rowParaTxt: 'marine_hull_b_title2_7', paddingSize: 0.0),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'marine_hull_b_title3', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const ArrowIndicatorRowTextWidget(rowParaTxt: 'marine_hull_b_title3_1', paddingSize: 0.0),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      isLocale == true
                          ? Image.asset(AppImages.generalMarineHullAddPremiumEn)
                          : Image.asset(AppImages.generalMarineHullAddPremiumMm),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      isLocale == true
                          ? Image.asset(AppImages.generalMarineHullPremiumEn)
                          : Image.asset(AppImages.generalMarineHullPremiumMm),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      isLocale == true
                          ? Image.asset(AppImages.generalMarineHullWoodenEn)
                          : Image.asset(AppImages.generalMarineHullWoodenMm),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      const ArrowIndicatorRowTextWidget(rowParaTxt: 'marine_hull_b_title3_2', paddingSize: 0.0),
                    ],
                  )),
            ),
          ),
          const CalculatorFloatingBtn(
            childWidget: MarineHullPremiumCalculatorScreen(),
          ),
        ],
      ),
    );
  }
}
