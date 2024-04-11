import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../helper/app_images.dart';
import '../../../helper/app_strings.dart';
import '../../../helper/dimens.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_calculator_floating_btn.dart';
import '../../widgets/widget_localized_paragraph_txt.dart';
import '../../widgets/widget_product_info_detail_title.dart';
import '../premiumCalculator/lifeInsurance/seamenPlan/seamem_plan_screen.dart';
import 'widget/widget_square_indicator_row_txt.dart';

class SeamanPlanScreen extends StatefulWidget {
  const SeamanPlanScreen({super.key});

  @override
  State<SeamanPlanScreen> createState() => _SeamanPlanScreenState();
}

class _SeamanPlanScreenState extends State<SeamanPlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeSeamanIcon,
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
                        titleTxt: 'seaman_plan_insurance',
                      ),
                      const SizedBox(
                        height: kMarginCardMedium,
                      ),
                      const LocalizedParagraphText(
                        txt: AppStrings.singlePremiumTxtMm1,
                        paddingSize: 0.0,
                        isLocalized: false,
                        fontWeight: FontWeight.bold,
                      ),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt1,
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                        txt: AppStrings.eductionTxtMm2,
                        paddingSize: 0.0,
                        isLocalized: false,
                        fontWeight: FontWeight.bold,
                      ),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt2,
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                        txt: AppStrings.singlePremiumEndowmentTxtMm6,
                        paddingSize: 0.0,
                        isLocalized: false,
                        fontWeight: FontWeight.bold,
                      ),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt3,
                          paddingSize: kMarginCardMedium_2),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt3_1,
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                        txt: AppStrings.seamanPlanTxt4,
                        paddingSize: 0.0,
                        isLocalized: false,
                        fontWeight: FontWeight.bold,
                      ),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt5,
                          paddingSize: kMarginCardMedium_2),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt6,
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                        txt: AppStrings.seamanPlanTxt7,
                        paddingSize: 0.0,
                        isLocalized: false,
                        fontWeight: FontWeight.bold,
                      ),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt8,
                          paddingSize: kMarginCardMedium_2),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt9,
                          paddingSize: kMarginCardMedium_2),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt9_1,
                          paddingSize: kMarginCardMedium_2),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt9_2,
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                        txt: AppStrings.govPersonShortTermMmTxt14,
                        paddingSize: 0.0,
                        isLocalized: false,
                        fontWeight: FontWeight.bold,
                      ),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt10,
                          paddingSize: kMarginCardMedium_2),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt11,
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                        txt: AppStrings.seamanPlanTxt12,
                        paddingSize: 0.0,
                        isLocalized: false,
                        fontWeight: FontWeight.bold,
                      ),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt13,
                          paddingSize: kMarginCardMedium_2),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt14,
                          paddingSize: kMarginCardMedium_2),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt15,
                          paddingSize: kMarginCardMedium_2),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt16,
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                        txt: AppStrings.seamanPlanTxt17,
                        paddingSize: 0.0,
                        isLocalized: false,
                        fontWeight: FontWeight.bold,
                      ),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt18,
                          paddingSize: kMarginCardMedium_2),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt19,
                          paddingSize: kMarginCardMedium_2),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt20,
                          paddingSize: kMarginCardMedium_2),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt21,
                          paddingSize: kMarginCardMedium_2),
                      const LocalizedParagraphText(
                        txt: AppStrings.seamanPlanTxt22,
                        paddingSize: 0.0,
                        isLocalized: false,
                        fontWeight: FontWeight.bold,
                      ),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt23,
                          paddingSize: kMarginCardMedium_2),
                      const SquareIndicatorRowTextWidget(
                          rowParaTxt: AppStrings.seamanPlanTxt24,
                          paddingSize: kMarginCardMedium_2),
                      Image.asset(AppImages.lifeSeamanPlanTable),
                      const SizedBox(
                        height: kMarginCardMedium_2,
                      ),
                      Image.asset(AppImages.lifeSeamanPlanTable1),
                      Image.asset(AppImages.lifeSeamanPlanTable2),
                      Image.asset(AppImages.lifeSeamanPlanTable3),
                      Image.asset(AppImages.lifeSeamanPlanTable4),
                      Image.asset(AppImages.lifeSeamanPlanTable5),
                      Image.asset(AppImages.lifeSeamanPlanTable6),
                      Image.asset(AppImages.lifeSeamanPlanTable7),
                      Image.asset(AppImages.lifeSeamanPlanTable8),
                    ],
                  )),
            ),
          ),
          const CalculatorFloatingBtn(
            childWidget: SeamanPlanPCScreen(),
          ),
        ],
      ),
    );
  }
}
