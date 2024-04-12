import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_confirm_alert_box.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../lifeInsurance/widget/widget_two_column_txt.dart';
import '../widget/widget_buy_online_title_text.dart';

class PAConfirmScreen extends StatefulWidget {
  const PAConfirmScreen({super.key});

  @override
  State<PAConfirmScreen> createState() => _PAConfirmScreenState();
}

class _PAConfirmScreenState extends State<PAConfirmScreen> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifePABuyOnline,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BuyOnlineTitleTxt(
              titleTxt: AppStrings.confirmTitleTxt,
              pageNo: '',
            ),
            Divider(
              color: context.appColors.colorLabel,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: kMarginCardMedium_2),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                border: Border.all(color: context.appColors.colorPrimary),
                borderRadius: BorderRadius.circular(boxRadius),
              ),
              child: Column(
                children: [
                  const PremiumAndTypesWidget(premiumTxt: '175000 MMK', typesTxt: AppStrings.premium),
                  Divider(
                    color: context.appColors.colorPrimary,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: kMarginCardMedium,
                      right: kMarginCardMedium,
                    ),
                    child: Column(
                      children: [
                        TwoColumnTextWidget(
                          txt1: AppStrings.sumInsure,
                          txt2: '10,000,000 MMK',
                          textColor: context.appColors.colorPrimary,
                          lftFontWeight: FontWeight.normal,
                          fontSize: textRegular,
                        ),
                        TwoColumnTextWidget(
                          txt1: AppStrings.policyStartDate,
                          txt2: '28-03-2024',
                          textColor: context.appColors.colorPrimary,
                          lftFontWeight: FontWeight.normal,
                          fontSize: textRegular,
                        ),
                        TwoColumnTextWidget(
                          txt1: AppStrings.policyEndDate,
                          txt2: '28-03-2024',
                          textColor: context.appColors.colorPrimary,
                          lftFontWeight: FontWeight.normal,
                          fontSize: textRegular,
                        ),
                        TwoColumnTextWidget(
                          txt1: AppStrings.paymentType,
                          txt2: 'LUMP SUM',
                          textColor: context.appColors.colorPrimary,
                          lftFontWeight: FontWeight.normal,
                          fontSize: textRegular,
                        ),
                        const SizedBox(
                          height: kMarginMedium,
                        ),
                        GestureDetector(
                          onTap: () => setState(() {
                            expanded = !expanded;
                          }),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: kMarginSmall_2, horizontal: kMarginSmall_2),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: expanded ?
                              Border(left: BorderSide(color: context.appColors.colorPrimary), right: BorderSide(color: context.appColors.colorPrimary), top: BorderSide(color: context.appColors.colorPrimary))
                                  : Border.all(color: context.appColors.colorPrimary),
                              borderRadius: expanded ?
                              const BorderRadius.only(topLeft: Radius.circular(boxRadius), topRight: Radius.circular(boxRadius))
                              : BorderRadius.circular(boxRadius),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(AppStrings.insurePerson),
                                Icon(Icons.keyboard_arrow_down_outlined, color: context.appColors.colorLabel,)
                              ],
                            ),
                          ),
                        ),
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          height: expanded ? 100 : 0,
                          child: Container(
                            width: double.infinity,
                              height: 120,
                            decoration: BoxDecoration(
                              border: expanded ?
                              Border(left: BorderSide(color: context.appColors.colorPrimary), right: BorderSide(color: context.appColors.colorPrimary), bottom: BorderSide(color: context.appColors.colorPrimary))
                              : Border.all(color: context.appColors.colorPrimary),
                              borderRadius: expanded ?
                              const BorderRadius.only(bottomLeft: Radius.circular(boxRadius), bottomRight: Radius.circular(boxRadius))
                              : BorderRadius.circular(boxRadius),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: kMarginSmall_2),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: TwoColumnTextWidget(
                                      txt1: AppStrings.name,
                                      txt2: 'Mg Mg',
                                      lftFontWeight: FontWeight.normal,
                                      textColor: context.appColors.colorLabel,
                                      fontSize: textRegular,
                                    ),
                                  ),
                                  Expanded(
                                    child: TwoColumnTextWidget(
                                      txt1: AppStrings.occupation,
                                      txt2: '',
                                      lftFontWeight: FontWeight.normal,
                                      textColor: context.appColors.colorLabel,
                                      fontSize: textRegular,
                                    ),
                                  ),
                                  Expanded(
                                    child: TwoColumnTextWidget(
                                      txt1: 'ID',
                                      txt2: '',
                                      lftFontWeight: FontWeight.normal,
                                      textColor: context.appColors.colorLabel,
                                      fontSize: textRegular,
                                    ),
                                  ),
                                  Expanded(
                                    child: TwoColumnTextWidget(
                                      txt1: AppStrings.dob,
                                      txt2: 'Mg Mg',
                                      lftFontWeight: FontWeight.normal,
                                      textColor: context.appColors.colorLabel,
                                      fontSize: textRegular,
                                    ),
                                  )
                                ],

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: kMarginMedium, top: kMarginMedium),
              child: NextBtnWidget(
                onNextPressed: () {
                  _showConfirmDialog(context);
                },
                txt: AppStrings.pay,
                buyOnlineStyle: true,
              ),
            )
          ],
        ),
      ),
    );
  }
  void _showConfirmDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => ConfirmAlertBoxWidget(
        titleTxt: Text(AppStrings.confirmTitleTxt,
          style: context.appFonts.bodySmall()?.copyWith(
            fontSize: textRegular2X,
          ),),
        contentTxt: Text(AppStrings.confirmDescTxt,
            style: context.appFonts.bodySmall()?.copyWith(fontSize: textRegular)),
        cancelButton: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            // _showSuccessDialog(context);
          },
          child: Text(
            AppStrings.okText,
            style:
            context.appFonts.bodySmall()?.copyWith(fontSize: textRegular),
          ),
        ),
        confirmButton: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            AppStrings.cancelText,
            style: context.appFonts
                .bodySmall()
                ?.copyWith(fontSize: textRegular),
          ),
        ),
      ),
    );
  }
}


class PremiumAndTypesWidget extends StatelessWidget {
  const PremiumAndTypesWidget({
    super.key,
    required this.premiumTxt,
    required this.typesTxt,
  });

  final String premiumTxt;
  final String typesTxt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: kMarginCardMedium,
        right: kMarginCardMedium,
        top: kMarginSmall_3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child: Text(
            typesTxt,
            style: context.appFonts.bodySmall()?.copyWith(
              fontSize: textRegular,
                color: context.appColors.colorPrimary,
            ),
          )),
          Text(
            premiumTxt,
            style: context.appFonts.bodySmall()?.copyWith(
              fontSize: textRegular,
              color: context.appColors.colorPrimary,
            ),
          )
        ],
      ),
    );
  }
}