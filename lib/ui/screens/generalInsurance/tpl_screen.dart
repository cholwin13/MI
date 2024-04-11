import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../helper/app_images.dart';
import '../../../helper/app_strings.dart';
import '../../../helper/dimens.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_calculator_floating_btn.dart';
import '../../widgets/widget_localized_paragraph_txt.dart';
import '../../widgets/widget_product_info_detail_title.dart';
import '../../widgets/widget_arrow_indicator_row_txt.dart';
import '../premiumCalculator/generalInsurance/thirdParty/tpl_premium_calculator_car_number.dart';

class ThirdPartyLiabilityScreen extends StatefulWidget {
  const ThirdPartyLiabilityScreen({super.key});

  @override
  State<ThirdPartyLiabilityScreen> createState() => _ThirdPartyLiabilityScreenState();
}

class _ThirdPartyLiabilityScreenState extends State<ThirdPartyLiabilityScreen> {
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
          AppImages.generalTlpIcon,
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
                      titleTxt: 'tpl_title',
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    const LocalizedParagraphText(txt: 'tpl_para_1', paddingSize: 0.0),
                    const LocalizedParagraphText(txt: 'tpl_para_2', paddingSize: 0.0),
                    isLocale == true
                        ? Image.asset(AppImages.generalTplTable)
                        : const SizedBox(),
                    const LocalizedParagraphText(txt: 'tpl_para_3', paddingSize: 0.0),
                    const LocalizedParagraphText(txt: 'tpl_para_4', paddingSize: 0.0),
                    const SizedBox(
                      height: kMarginSmall_3,
                    ),
                    
                    LocalizedParagraphText(txt: 'tpl_para_5', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                    const LocalizedParagraphText(txt: 'tpl_para_5_1', paddingSize: 0.0),
                    const LocalizedParagraphText(txt: 'tpl_para_5_2', paddingSize: 0.0),
                    const LocalizedParagraphText(txt: 'tpl_para_5_3', paddingSize: 0.0),
                    const LocalizedParagraphText(txt: 'tpl_para_5_4', paddingSize: 0.0),
                    const LocalizedParagraphText(txt: 'tpl_para_5_5', paddingSize: 0.0),
                    const LocalizedParagraphText(txt: 'tpl_para_5_6', paddingSize: 0.0),
                    isLocale == true
                        ? const SizedBox()
                        : const LocalizedParagraphText(
                            txt: 'tpl_para_5_7', paddingSize: 0.0),
                    isLocale == true
                        ? const SizedBox()
                        : const LocalizedParagraphText(
                            txt: 'tpl_para_5_8', paddingSize: 0.0),
                    const SizedBox(
                      height: kMarginSmall_3,
                    ),
                    
                    LocalizedParagraphText(txt: 'tpl_para_6', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                    isLocale == true
                        ? const SizedBox()
                        : const LocalizedParagraphText(
                            txt: 'tpl_para_6_mm', paddingSize: 0.0),
                    const LocalizedParagraphText(txt: 'tpl_para_6_1', paddingSize: 0.0),
                    const LocalizedParagraphText(
                        txt: 'tpl_para_6_1_a', paddingSize: kMarginCardMedium),
                    const LocalizedParagraphText(
                        txt: 'tpl_para_6_1_b', paddingSize: kMarginCardMedium),
                    const LocalizedParagraphText(
                        txt: 'tpl_para_6_1_c', paddingSize: kMarginCardMedium),
                    const LocalizedParagraphText(
                        txt: 'tpl_para_6_1_d', paddingSize: kMarginCardMedium),
                    const LocalizedParagraphText(
                        txt: 'tpl_para_6_1_e', paddingSize: kMarginCardMedium),
                    const LocalizedParagraphText(txt: 'tpl_para_6_2', paddingSize: 0.0),
                    const LocalizedParagraphText(txt: 'tpl_para_6_3', paddingSize: 0.0),
                    const LocalizedParagraphText(txt: 'tpl_para_6_4', paddingSize: 0.0),
                    isLocale == true
                        ? const SizedBox()
                        : const LocalizedParagraphText(
                            txt: 'tpl_para_6_5', paddingSize: 0.0),
                    const LocalizedParagraphText(txt: 'tpl_para_7', paddingSize: 0.0),
                    const SizedBox(
                      height: kMarginSmall_3,
                    ),
                    
                    LocalizedParagraphText(txt: 'tpl_para_8', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                    const LocalizedParagraphText(txt: 'tpl_para_8_1', paddingSize: 0.0),
                    const LocalizedParagraphText(txt: 'tpl_para_8_2', paddingSize: 0.0),
                    const LocalizedParagraphText(txt: 'tpl_para_8_3', paddingSize: 0.0),
                    const LocalizedParagraphText(txt: 'tpl_para_8_4', paddingSize: 0.0),
                    const LocalizedParagraphText(
                        txt: 'tpl_para_8_4_1', paddingSize: kMarginMedium_2),
                    const LocalizedParagraphText(
                        txt: 'tpl_para_8_4_2', paddingSize: kMarginMedium_2),
                    const LocalizedParagraphText(
                        txt: 'tpl_para_8_4_3', paddingSize: kMarginMedium_2),
                    const LocalizedParagraphText(
                        txt: 'tpl_para_8_4_4', paddingSize: kMarginMedium_2),
                    const LocalizedParagraphText(
                        txt: 'tpl_para_8_4_5', paddingSize: kMarginMedium_2),
                    const LocalizedParagraphText(
                        txt: 'tpl_para_8_4_6', paddingSize: kMarginMedium_2),
                    const LocalizedParagraphText(
                        txt: 'tpl_para_8_4_7', paddingSize: kMarginMedium_2),
                    const LocalizedParagraphText(
                        txt: 'tpl_para_8_4_8', paddingSize: kMarginMedium_2),
                    const LocalizedParagraphText(
                        txt: 'tpl_para_8_4_9', paddingSize: kMarginMedium_2),
                    const LocalizedParagraphText(
                        txt: 'tpl_para_8_4_10', paddingSize: kMarginMedium_2),
                    const SizedBox(
                      height: kMarginSmall_3,
                    ),
                    
                    LocalizedParagraphText(txt: 'tpl_para_9', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                    const LocalizedParagraphText(txt: 'tpl_para_9_1', paddingSize: 0.0),
                    const LocalizedParagraphText(txt: 'tpl_para_9_2', paddingSize: 0.0),
                    const LocalizedParagraphText(txt: 'tpl_para_9_3', paddingSize: 0.0),
                    const SizedBox(
                      height: kMarginSmall_3,
                    ),
                    const LocalizedParagraphText(txt: 'tpl_para_9_4', paddingSize: 0.0),
                    const SizedBox(
                      height: kMarginSmall_3,
                    ),
                    
                    LocalizedParagraphText(txt: 'tpl_para_9_remark', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                    const LocalizedParagraphText(
                        txt: 'tpl_para_9_remark_desc', paddingSize: 0.0),
                    const SizedBox(
                      height: kMarginSmall_3,
                    ),
                    Container(
                      color: context.appColors.colorPrimary,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          vertical: kMarginCardMedium),
                      child: InkWell(
                        onTap: (){
                          launchUrl(Uri.parse('http://mminsurance.gov.mm/wp-content/uploads/2020/09/TP-Premium-2016.pdf'));
                        },
                        child: Text(
                            'Download Third Party Liability Premium Rates',
                            textAlign: TextAlign.center,
                            style: context.appFonts.bodySmall()?.copyWith(
                                decoration: TextDecoration.underline,
                                color: context.appColors.colorGold,
                                fontSize: 10.0,
                                decorationColor: context.appColors.colorGold,
                            )),
                      ),
                    ),
                    Text(AppStrings.tplAseanTxtTitle,
                        style: context.appFonts.bodySmall()?.copyWith(
                              color: context.appColors.colorPrimary,
                              height: 1.9,
                              decoration: TextDecoration.underline,
                              decorationColor: context.appColors.colorPrimary,
                            )),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'tpl_para_10',
                      paddingSize: 0.0,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'tpl_para_11',
                      paddingSize: 0.0,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'tpl_para_12',
                      paddingSize: 0.0,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'tpl_para_13',
                      paddingSize: 0.0,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'tpl_para_14',
                      paddingSize: 0.0,
                    ),
                    isLocale == true
                        ? Image.asset(AppImages.generalTplTable1)
                        : const SizedBox(),
                    isLocale == true
                        ? const SizedBox()
                        : const ArrowIndicatorRowTextWidget(
                            rowParaTxt: 'tpl_para_15',
                            paddingSize: 0.0,
                          ),
                    isLocale == true
                        ? const SizedBox()
                        : const ArrowIndicatorRowTextWidget(
                            rowParaTxt: 'tpl_para_16',
                            paddingSize: 0.0,
                          ),
                    isLocale == true
                        ? const SizedBox()
                        : const ArrowIndicatorRowTextWidget(
                            rowParaTxt: 'tpl_para_17',
                            paddingSize: 0.0,
                          ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'tpl_para_18',
                      paddingSize: 0.0,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'tpl_para_19',
                      paddingSize: 0.0,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'tpl_para_20',
                      paddingSize: 0.0,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'tpl_para_21',
                      paddingSize: 0.0,
                    ),
                    const SizedBox(
                      height: kMarginSmall_3,
                    ),
                    
                    LocalizedParagraphText(txt: 'tpl_para_22', paddingSize: 0.0, textDecoration: TextDecoration.underline, decorationColor: context.appColors.colorPrimary,),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'tpl_para_22_1',
                      paddingSize: 0.0,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'tpl_para_22_2',
                      paddingSize: 0.0,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'tpl_para_22_3',
                      paddingSize: 0.0,
                    ),
                    const ArrowIndicatorRowTextWidget(
                      rowParaTxt: 'tpl_para_22_4',
                      paddingSize: 0.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const CalculatorFloatingBtn(
            childWidget: TplPremiumCalculatorCarNumberScreen(),
          ),
        ],
      ),
    );
  }
}
