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
import '../premiumCalculator/generalInsurance/marineCargo/marine_cargo_premium_calculator_screen.dart';

class MarineCargoScreen extends StatefulWidget {
  const MarineCargoScreen({super.key});

  @override
  State<MarineCargoScreen> createState() => _MarineCargoScreenState();
}

class _MarineCargoScreenState extends State<MarineCargoScreen> {
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
          AppImages.generalMarineIcon,
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
                        titleTxt: 'marine_cargo_title',
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
                      
                      LocalizedParagraphText(txt: 'marine_cargo_title_2', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const ArrowIndicatorRowTextWidget(
                          rowParaTxt: 'marine_cargo_title_2_1',
                          paddingSize: 0.0),
                      const ArrowIndicatorRowTextWidget(
                          rowParaTxt: 'marine_cargo_title_2_2',
                          paddingSize: 0.0),
                      isLocale == true
                          ? Image.asset(AppImages.generalMarineCargoLossEn)
                          : Image.asset(AppImages.generalMarineCargoLossMM),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'marine_cargo_title_3', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_a',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_b',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_c',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_d',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_e',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_f',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_g',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_h',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_i',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_j',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_k',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_l',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_m',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_n',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_o',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_p',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_q',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_3_r',
                          paddingSize: kMarginCardMedium_2),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'marine_cargo_title_4', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const ArrowIndicatorRowTextWidget(
                          rowParaTxt: 'marine_cargo_title_4_1',
                          paddingSize: 0.0),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      isLocale == true
                          ? Image.asset(AppImages.generalMarineCargoRiskPremiumEn)
                          : Image.asset(AppImages.generalMarineCargoRiskPremiumMm),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      isLocale == true
                          ? Image.asset(AppImages.generalMarineCargoRiskAddEn)
                          : Image.asset(AppImages.generalMarineCargoRiskAddMm),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'marine_cargo_title_3', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_5_a',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_5_b',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_5_c',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_5_d',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_5_e',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_5_f',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_5_g',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_5_h',
                          paddingSize: kMarginCardMedium_2),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'marine_cargo_title_6', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_6_a',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_6_b',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_6_c',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_6_d',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_6_e',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_6_f',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_6_g',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_6_h',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_6_i',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_6_j',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_6_k',
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                          txt: 'marine_cargo_title_6_1',
                          paddingSize: kMarginCardMedium_2),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      
                      LocalizedParagraphText(txt: 'marine_cargo_title_7', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                      const ArrowIndicatorRowTextWidget(
                          rowParaTxt: 'marine_cargo_title_7_1',
                          paddingSize: 0.0),
                    ],
                  )),
            ),
          ),
          const CalculatorFloatingBtn(
            childWidget: MarineCargoPremiumCalculatorScreen(),
          ),
        ],
      ),
    );
  }
}
