import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widget_two_column_txt.dart';

class TPLOwnerInfoScreen extends StatefulWidget {
  const TPLOwnerInfoScreen({super.key});

  @override
  State<TPLOwnerInfoScreen> createState() => _TPLOwnerInfoScreenState();
}

class _TPLOwnerInfoScreenState extends State<TPLOwnerInfoScreen> {
  final String name = 'Daw Hla Hla';

  final String date = '2025-05-06';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // _showDialog(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    // _showDialog(context);
    return Scaffold(
        appBar: AppBarWidget(
            titleIcon: Image.asset(
              AppImages.generalTlpIcon,
              color: context.appColors.colorGold,
              width: iconMedium_3,
              height: iconMedium_3,
            ),
            actions: <Widget>[
              IconButton(
                icon: Image.asset(
                    AppImages.generalTplHistory,
                  width: iconMedium_3,
                  height: iconMedium_3,
                ),
                onPressed: () {
                  CustomNavigationHelper.router.push(Routes.tplPremiumHistoryPath.path);
                },
              ),
            ]),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kMarginMedium_3),
            child: Column(
              children: [
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                const ProductInfoDetailTitleWidget(titleTxt: 'tpl_title'),
                const SizedBox(
                  height: kMarginLarge,
                ),
                TwoColumnTextWidget(
                  txt1: 'tpl_owner_name'.tr(),
                  txt2: name,
                  textColor: context.appColors.colorLabel,
                  lftFontWeight: FontWeight.bold,
                  fontSize: textRegular,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                TwoColumnTextWidget(
                  txt1: 'tpl_nrc_no'.tr(),
                  txt2: name,
                  textColor: context.appColors.colorLabel,
                  lftFontWeight: FontWeight.bold,
                  fontSize: textRegular,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                TwoColumnTextWidget(
                  txt1: 'tpl_vehicle_no'.tr(),
                  txt2: name,
                  textColor: context.appColors.colorLabel,
                  lftFontWeight: FontWeight.bold,
                  fontSize: textRegular,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                TwoColumnTextWidget(
                  txt1: 'tpl_vehicle_manufacture'.tr(),
                  txt2: name,
                  textColor: context.appColors.colorLabel,
                  lftFontWeight: FontWeight.bold,
                  fontSize: textRegular,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                TwoColumnTextWidget(
                  txt1: 'tpl_carrying_capacity'.tr(),
                  txt2: name,
                  textColor: context.appColors.colorLabel,
                  lftFontWeight: FontWeight.bold,
                  fontSize: textRegular,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                TwoColumnTextWidget(
                  txt1: 'tpl_vehicle_type'.tr(),
                  txt2: name,
                  textColor: context.appColors.colorLabel,
                  lftFontWeight: FontWeight.bold,
                  fontSize: textRegular,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                TwoColumnTextWidget(
                  txt1: 'tpl_insurance_effective_date'.tr(),
                  txt2: name,
                  textColor: context.appColors.colorLabel,
                  lftFontWeight: FontWeight.bold,
                  fontSize: textRegular,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                TwoColumnTextWidget(
                  txt1: 'tpl_insurance_effective_date'.tr(),
                  txt2: name,
                  textColor: context.appColors.colorLabel,
                  lftFontWeight: FontWeight.bold,
                  fontSize: textRegular,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                TwoColumnTextWidget(
                  txt1: 'tpl_insurance_expire_date'.tr(),
                  txt2: name,
                  textColor: context.appColors.colorLabel,
                  lftFontWeight: FontWeight.bold,
                  fontSize: textRegular,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: NextBtnWidget(
          onNextPressed: () {
            _showDialog(context);
            // CustomNavigationHelper.router.push(
            //     Routes.tplPaymentPath.path,
            //     extra: "Tpl"
            // );
          },
          txt: 'next_btn_txt'.tr(),
        ));
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(alertBoxRadius)),
        ),
        content: Text(
            'အာမခံသက်တမ်း ရက် (၉၀) အထက် ကျန်ရှိနေပါသေးသည်။ 2026-02-28 နောက်ပိုင်းတွင်မှ ဝယ်ယူ၍ ရပါမည်။',
            style:
                context.appFonts.bodySmall()?.copyWith(fontSize: textRegular)),
        actions: [
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
        actionsAlignment: MainAxisAlignment.center,
        contentPadding:
            EdgeInsets.only(top: 20.0, left: 20.0, right: 10.0, bottom: 10.0),
        actionsPadding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      ),
    );
  }
}
