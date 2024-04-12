import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_dropdown_btn.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widgte_custom_text_form_field.dart';
import '../widget/widget_buy_online_label_txt.dart';
import '../widget/widget_buy_online_title_text.dart';

class HealthInsurePersonInfo1Screen extends StatefulWidget {
  const HealthInsurePersonInfo1Screen({super.key});

  @override
  State<HealthInsurePersonInfo1Screen> createState() => _HealthInsurePersonInfo1ScreenState();
}

class _HealthInsurePersonInfo1ScreenState extends State<HealthInsurePersonInfo1Screen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  String? initialIdDropdownValue = 'U';
  String firstName = '';
  String middleName = '';
  String lastName = '';

  final List<String> initialIDList = ['U', 'Daw', 'Mr.', 'Mrs'];

  handleFirstNameChanged(String value){
    setState(() {
      firstName = value;
    });
  }

  handleMiddleNameChanged(String value){
    setState(() {
      middleName = value;
    });
  }

  handleLastNameChanged(String value){
    setState(() {
      lastName = value;
    });
  }

  String? validateFirstName(value){
    if(value!.isEmpty){
      return '';
    }else{
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeHealthIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            BuyOnlineTitleTxt(
              titleTxt: 'pa_insure_person_info'.tr(),
              pageNo: AppStrings.pageNo1of3,
            ),
            Divider(
              color: context.appColors.colorLabel,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kMarginLargeX, vertical: kMarginCardMedium),
              child: Column(
                children: [
                  const BuyOnlineLabelTxtWidget(
                    labelTxt: AppStrings.initialId,
                    isRequire: false,
                  ),
                  const SizedBox(
                    height: kMarginCardMedium,
                  ),
                  DropDownBtnWidget(
                    dropDownList: initialIDList,
                    dropDownValue: initialIdDropdownValue,
                    onValueChanged: (String? newValue) {
                      setState(() {
                        initialIdDropdownValue = newValue;
                      });
                    },
                    hintTxt: 'SELECT ONE ',
                    errTxt: '',
                    buyOnlineStyle: true,
                  ),
                  const SizedBox(
                    height: kMarginLarge,
                  ),
                  const BuyOnlineLabelTxtWidget(
                    labelTxt: AppStrings.firstName,
                  ),
                  const SizedBox(
                    height: kMarginCardMedium,
                  ),
                  CustomTextFormFieldWidget(
                    onChanged: handleFirstNameChanged,
                    hintTxt: '',
                    textController: firstNameController,
                    validator: validateFirstName,
                    textInputType: TextInputType.text,
                    buyOnlineStyle: true,
                  ),
                  const SizedBox(
                    height: kMarginLarge,
                  ),
                  const BuyOnlineLabelTxtWidget(
                    labelTxt: AppStrings.middleName,
                    isRequire: false,
                  ),
                  const SizedBox(
                    height: kMarginCardMedium,
                  ),
                  CustomTextFormFieldWidget(
                    onChanged: handleMiddleNameChanged,
                    hintTxt: '',
                    textController: middleNameController,
                    textInputType: TextInputType.text,
                    buyOnlineStyle: true,
                  ),
                  const SizedBox(
                    height: kMarginLarge,
                  ),
                  const BuyOnlineLabelTxtWidget(
                    labelTxt: AppStrings.lastName,
                    isRequire: false,
                  ),
                  const SizedBox(
                    height: kMarginCardMedium,
                  ),
                  CustomTextFormFieldWidget(
                    onChanged: handleLastNameChanged,
                    hintTxt: '',
                    textController: lastNameController,
                    textInputType: TextInputType.text,
                    buyOnlineStyle: true,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: kMarginMedium, top: kMarginMedium),
              child: NextBtnWidget(
                onNextPressed: () {
                  final isValid = formKey.currentState?.validate();

                  if (isValid!) {
                    CustomNavigationHelper.router
                        .push(Routes.healthInsurePersonInfo2Path.path);
                  }
                },
                txt: 'next_btn_txt'.tr(),
                buyOnlineStyle: true,
              ),
            )
          ],
        ),
      )
    );
  }
}
