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
import '../../../../widgets/widget_date_picker_text_form_field.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_min_max_label_txt.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';

class PublicLifeAssuranceScreen extends StatefulWidget {
  const PublicLifeAssuranceScreen({super.key});

  @override
  State<PublicLifeAssuranceScreen> createState() => _PublicLifeAssuranceScreenState();
}

class _PublicLifeAssuranceScreenState extends State<PublicLifeAssuranceScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController dobController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController sumInsureTxtController = TextEditingController();
  TextEditingController termController = TextEditingController();

  String age = '';
  String? unitReceivedData;
  String sumInsure = '';
  String term = '';

  void handleInsureChanged(String value) {
    setState(() {
      sumInsure = value;
    });
  }

  void handleTermChanged(String value) {
    setState(() {
      term = value;
    });
  }

  String? validateDOB(value) {
    if (value!.isEmpty) {
      return AppStrings.dateOfBirthErrTxt;
    } else {
      return null;
    }
  }

  String? validateInsure(value){
    final double si = double.tryParse(value!) ?? 0.0;
    if (value!.isEmpty) {
      return AppStrings.publicTermLifeSumInsuredErrTxt;
    }else if(si < 50000 || si > 30000000 ){
      return AppStrings.publicLifeMinMaxErrTxt;
    }else {
      return null;
    }
  }

  String? validateTerm(value) {
    if (value!.isEmpty) {
      return AppStrings.publicLifeTermErrTxt;
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    DateTime todayDate = DateTime.now();
    final lastDob =
    DateTime(todayDate.year - 19, todayDate.month, todayDate.day - 1);
    final startDob =
    DateTime(todayDate.year - 55, todayDate.month, todayDate.day);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifePublicIcon,
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
              children: [
                const ProductInfoDetailTitleWidget(
                  titleTxt: 'public_life_insurance',
                ),
                const SizedBox(
                  height: kMarginCardMedium_2,
                ),
                LabelTxtInFormFieldWidget(labelTxt: 'date_of_birth'.tr()),
                const SizedBox(
                  height: kMarginSmall,
                ),
                WidgetDatePickerTextFormField(
                  dateController: dobController,
                  validate: validateDOB,
                  initialDate: lastDob,
                  firstDate: startDob,
                  lastDate: lastDob,
                  hintTxt: 'dd-mm-yyyy',
                  ageController: ageController,
                ),
                const SizedBox(
                  height: kMarginMedium_2,
                ),
                LabelTxtInFormFieldWidget(labelTxt: 'age'.tr()),
                const SizedBox(
                  height: kMarginSmall,
                ),
                CustomTextFormFieldWidget(
                  hintTxt: '',
                  textController: ageController,
                  readOnlyValue: true,
                ),
                const SizedBox(
                  height: kMarginMedium_2,
                ),
                LabelTxtInFormFieldWidget(labelTxt: 'sum_insured_kyat'.tr()),
                const MinMaxLabelTxtWidget(labelTxt: AppStrings.publicLifeMinMaxTxt),
                const SizedBox(
                  height: kMarginSmall,
                ),
                CustomTextFormFieldWidget(
                  onChanged: handleInsureChanged,
                  hintTxt: 'sum_insured_hint'.tr(),
                  textController: sumInsureTxtController,
                  validator: validateInsure,
                ),
                const SizedBox(
                  height: kMarginMedium_2,
                ),
                LabelTxtInFormFieldWidget(labelTxt: 'public_life_term'.tr()),
                const SizedBox(
                  height: kMarginSmall,
                ),
                CustomTextFormFieldWidget(
                  onChanged: handleTermChanged,
                  hintTxt: 'public_life_term_hint'.tr(),
                  textController: termController,
                  validator: validateTerm,
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
                  title: 'public_life_insurance',
                  isMMK: true,
                  appBarIcon:
                  AppImages.lifePublicIcon,
                  isStampFee: true
              ),
            );
          }
        },
        txt: 'next_btn_txt'.tr(),
      ),
    );
  }
}
