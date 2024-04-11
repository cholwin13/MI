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
import '../../../../widgets/premium_details_arguments_list.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_min_max_label_txt.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';

class GroupLifeScreen extends StatefulWidget {
  const GroupLifeScreen({super.key});

  @override
  State<GroupLifeScreen> createState() => _GroupLifeScreenState();
}

class _GroupLifeScreenState extends State<GroupLifeScreen> {
  final formKey = GlobalKey<FormState>();
  final sumInsureTxtController = TextEditingController();
  final personController = TextEditingController();

  String sumInsure = '';
  String noOfPerson = '';

  void handleInsureChanged(String value) {
    setState(() {
      sumInsure = value;
    });
  }

  void handlePersonChanged(String value) {
    setState(() {
      noOfPerson = value;
    });
  }

  String? validateInsure(value){
    final double si = double.tryParse(value!) ?? 0.0;
    if (value!.isEmpty) {
      return AppStrings.farmerErrTxt;
    }else if(si < 10000 || si > 5000000){
      return AppStrings.groupLifeMinMaxErrTxt;
    }else {
      return null;
    }
  }

  String? validatePerson(value){
    final double si = double.tryParse(value!) ?? 0.0;
    if (value!.isEmpty) {
      return AppStrings.groupLifePersonErrTxt;
    }else if(si < 5){
      return AppStrings.groupLifeMinPersonErrTxt;
    }else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.lifeGroupIcon,
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
                  horizontal: kMarginCardMedium_2, vertical: kMarginCardMedium_2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductInfoDetailTitleWidget(
                    titleTxt: 'group_insurance',
                  ),
                  const SizedBox(
                    height: kMarginCardMedium_2,
                  ),
                  LabelTxtInFormFieldWidget(labelTxt: 'group_life_insure_txt'.tr()),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  const MinMaxLabelTxtWidget(labelTxt: AppStrings.groupLifeMinMaxTxt),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  CustomTextFormFieldWidget(
                    onChanged: handleInsureChanged,
                    hintTxt: 'group_life_hint_txt'.tr(),
                    textController: sumInsureTxtController,
                    validator: validateInsure,
                  ),
                  const SizedBox(
                    height: kMarginMedium,
                  ),
                  LabelTxtInFormFieldWidget(labelTxt: 'group_life_person'.tr()),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  const MinMaxLabelTxtWidget(labelTxt: AppStrings.groupLifeMinPersonTxt),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  CustomTextFormFieldWidget(
                    onChanged: handlePersonChanged,
                    hintTxt: 'group_life_person_hint_txt'.tr(),
                    textController: personController,
                    validator: validatePerson,
                  ),

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
                    title: 'group_insurance',
                    isMMK: true,
                    appBarIcon: AppImages.lifeGroupIcon,
                    isStampFee: true
                ));
          }
        }, txt: 'next_btn_txt'.tr(),
      ),
    );
  }
}
