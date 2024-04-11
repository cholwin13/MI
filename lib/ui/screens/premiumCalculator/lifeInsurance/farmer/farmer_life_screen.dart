import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_min_max_label_txt.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';
import '../../../../widgets/premium_details_arguments_list.dart';

class FarmerLifeScreen extends StatefulWidget {
  const FarmerLifeScreen({super.key});

  @override
  State<FarmerLifeScreen> createState() => _FarmerLifeScreenState();
}

class _FarmerLifeScreenState extends State<FarmerLifeScreen> {
  final formKey = GlobalKey<FormState>();
  final sumInsureTxtController = TextEditingController();

  String sumInsure = '';

  void handleInsureChanged(String value) {
    setState(() {
      sumInsure = value;
    });
  }

  String? validateInsure(value){
    final double si = double.tryParse(value!) ?? 0.0;
    if (value!.isEmpty) {
      return AppStrings.farmerErrTxt;
    }else if(si < 100000 || si > 5000000){
      return AppStrings.farmerMinMaxErrTxt;
    }else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.lifeFarmerIcon,
            color: context.appColors.colorGold,
            width: iconMedium_3,
            height: iconMedium_3,
          ),
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kMarginMedium, vertical: kMarginCardMedium_2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ProductInfoDetailTitleWidget(
                    titleTxt: 'farmer_insurance',
                  ),
                  const SizedBox(
                    height: kMarginCardMedium_2,
                  ),
                  LabelTxtInFormFieldWidget(labelTxt: 'sum_insured_kyat'.tr()),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  const MinMaxLabelTxtWidget(labelTxt: AppStrings.farmerMinMaxTxt),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  CustomTextFormFieldWidget(
                    onChanged: handleInsureChanged,
                    hintTxt: 'sum_insured_hint'.tr(),
                    textController: sumInsureTxtController,
                    validator: validateInsure,
                  ),
                  // const Spacer(),
                  // KeyboardVisibilityBuilder(builder: (context, visible){
                  //   return visible?
                  //   const SizedBox()
                  //       : NextBtnWidget(
                  //     formKey: formKey,
                  //     onNextPressed: () {
                  //       final isValid = formKey.currentState?.validate();
                  //       if (isValid!) {
                  //         CustomNavigationHelper.router.push(
                  //             Routes.lifePremiumDetailsPath.path,
                  //             extra: PremiumDetailsArguments(
                  //                 title: 'farmer_insurance',
                  //                 isMMK: true,
                  //                 appBarIcon: AppImages.lifeFarmerIcon));
                  //       }
                  //     }, txt: 'next_btn_txt'.tr(),
                  //   );
                  // }),
                ],
              ),
            ),
          ),
        ),
      bottomNavigationBar: NextBtnWidget(
        formKey: formKey,
        onNextPressed: () {
          final isValid = formKey.currentState?.validate();
          if (isValid!) {
            CustomNavigationHelper.router.push(
                Routes.lifePremiumDetailsPath.path,
                extra: PremiumDetailsArguments(
                    title: 'farmer_insurance',
                    isMMK: true,
                    appBarIcon: AppImages.lifeFarmerIcon));
          }
        }, txt: 'next_btn_txt'.tr(),
      ),
    );
  }
}
