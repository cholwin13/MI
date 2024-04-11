import 'package:easy_localization/easy_localization.dart';
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
import '../premiumCalculator/generalInsurance/travel/travel_premium_calculator_screen.dart';

class TravelScreen extends StatefulWidget {
  const TravelScreen({super.key});

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
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
          AppImages.generalTravelIcon,
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
                        titleTxt: 'travel_title',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      const ArrowIndicatorRowTextWidget(
                        rowParaTxt: 'travel_para1',
                        paddingSize: 0.0,
                      ),
                      const RowParaTxtWithRightArrowAndUnderline(rowParaTxt: 'travel_para2', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'travel_para2_1', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para2_2', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para2_3', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para2_4', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para2_5', paddingSize: kMarginLarge),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      const RowParaTxtWithRightArrowAndUnderline(rowParaTxt: 'travel_para3', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'travel_para3_1', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para3_2', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para3_3', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para3_4', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para3_5', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para3_6', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para3_7', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para3_8', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para3_9', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para3_10', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para3_11', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para3_12', paddingSize: kMarginLarge),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      isLocale == true
                          ? Image.asset(AppImages.generalTravelPremiumEn)
                          : Image.asset(AppImages.generalTravelPremiumMm),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      isLocale == true
                          ? Image.asset(AppImages.generalTravelPremiumDollarEn)
                          : Image.asset(AppImages.generalTravelPremiumDollarMm),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'travel_para4', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const LocalizedParagraphText(txt: 'travel_para4_a', paddingSize: kMarginMedium),
                      const LocalizedParagraphText(txt: 'travel_para4_b', paddingSize: kMarginMedium),
                      const LocalizedParagraphText(txt: 'travel_para4_c', paddingSize: kMarginMedium),
                      const LocalizedParagraphText(txt: 'travel_para4_d', paddingSize: kMarginMedium),
                      const LocalizedParagraphText(txt: 'travel_para4_e', paddingSize: kMarginMedium),
                      const LocalizedParagraphText(txt: 'travel_para4_f', paddingSize: kMarginMedium),
                      const LocalizedParagraphText(txt: 'travel_para4_g', paddingSize: kMarginMedium),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'travel_para5', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const ArrowIndicatorRowTextWidget(rowParaTxt: 'travel_para5_1', paddingSize: 0.0),
                      const ArrowIndicatorRowTextWidget(rowParaTxt: 'travel_para5_2', paddingSize: 0.0),
                      const ArrowIndicatorRowTextWidget(rowParaTxt: 'travel_para5_3', paddingSize: 0.0),
                      isLocale == true
                          ? const SizedBox()
                          : const ArrowIndicatorRowTextWidget(rowParaTxt: 'travel_para5_4', paddingSize: 0.0),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'travel_para6', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const ArrowIndicatorRowTextWidget(rowParaTxt: 'travel_para6_1', paddingSize: 0.0),
                      const RowParaTxtWithRightArrowAndUnderline(rowParaTxt: 'travel_para6_2', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'travel_para6_2_a', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para6_2_b', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para6_2_c', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para6_2_d', paddingSize: kMarginLarge),
                      const RowParaTxtWithRightArrowAndUnderline(rowParaTxt: 'travel_para6_3', paddingSize: 0.0),
                      const LocalizedParagraphText(txt: 'travel_para6_3_a', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para6_3_b', paddingSize: kMarginLarge),
                      const LocalizedParagraphText(txt: 'travel_para6_3_c', paddingSize: kMarginLarge),
                    ],
                  )),
            ),
          ),
          const CalculatorFloatingBtn(
            childWidget: TravelPremiumCalculatorScreen(),
          ),
        ],
      ),
    );
  }
}

class RowParaTxtWithRightArrowAndUnderline extends StatelessWidget {
  final String rowParaTxt;
  final double paddingSize;

  const RowParaTxtWithRightArrowAndUnderline(
      {super.key, required this.rowParaTxt, required this.paddingSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingSize),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.arrow_right,
            size: iconMedium_3,
            color: context.appColors.colorPrimary,
          ),
          Expanded(
            child: Text(
              rowParaTxt.tr(),
              style: context.appFonts.bodySmall()?.copyWith(
                  color: context.appColors.colorPrimary,
                  height: 1.9,
                  decoration: TextDecoration.underline,
                  decorationColor: context.appColors.colorPrimary
              ),
            ),
          ),
        ],
      ),
    );
  }
}
