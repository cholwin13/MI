import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_arrow_text_form_field.dart';
import '../../../widgets/widget_date_picker_text_form_field.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widgte_custom_text_form_field.dart';
import '../widget/widget_buy_online_label_txt.dart';
import '../widget/widget_buy_online_title_text.dart';

class InboundPassportInfoScreen extends StatefulWidget {
  const InboundPassportInfoScreen({super.key});

  @override
  State<InboundPassportInfoScreen> createState() =>
      _InboundPassportInfoScreenState();
}

class _InboundPassportInfoScreenState extends State<InboundPassportInfoScreen> {
  final formKey = GlobalKey<FormState>();
  String passportNo = '';
  String? receivedData;
  final TextEditingController passportNoController = TextEditingController();
  TextEditingController passportIssueDateController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  void handlePassportNoChanged(String value) {
    setState(() {
      passportNo = value;
    });
  }

  String? validatePassportNo(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateDOB(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateCountry(value){
    if (value!.isEmpty) {
      return '';
    }else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    DateTime todayDate = DateTime.now();
    final lastDob =
        DateTime(todayDate.year, todayDate.month, todayDate.day - 1);
    final startDob =
        DateTime(todayDate.year - 15, todayDate.month, todayDate.day);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalInboundIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const BuyOnlineTitleTxt(
              titleTxt: AppStrings.passportInfo,
              pageNo: AppStrings.pageNo1,
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
                    labelTxt: AppStrings.passportNumber,
                  ),
                  const SizedBox(
                    height: kMarginCardMedium,
                  ),
                  CustomTextFormFieldWidget(
                    onChanged: handlePassportNoChanged,
                    hintTxt: '',
                    textController: passportNoController,
                    validator: validatePassportNo,
                    textInputType: TextInputType.text,
                    buyOnlineStyle: true,
                  ),
                  const SizedBox(
                    height: kMarginLarge,
                  ),
                  const BuyOnlineLabelTxtWidget(
                    labelTxt: AppStrings.passportIssueDate,
                  ),
                  const SizedBox(
                    height: kMarginCardMedium,
                  ),
                  WidgetDatePickerTextFormField(
                    dateController: passportIssueDateController,
                    validate: validateDOB,
                    initialDate: lastDob,
                    firstDate: startDob,
                    lastDate: lastDob,
                    hintTxt: 'dd-mm-yyyy',
                    ageController: ageController,
                    buyOnlineStyle: true,
                  ),
                  const SizedBox(
                    height: kMarginLarge,
                  ),
                  const BuyOnlineLabelTxtWidget(labelTxt: AppStrings.passportIssuedCountry,),
                  const SizedBox(
                    height: kMarginCardMedium,
                  ),
                  WidgetArrowTextFormFieldWidget(
                    controller: countryController,
                    hintText: 'SELECT ONE',
                    validator: validateCountry,
                    onPressed: () async {
                      final result = await CustomNavigationHelper.router.push(Routes.countryScreenPath.path);

                      setState(() {
                        receivedData = result as String;
                        countryController.text = receivedData ?? '';
                      });
                    },
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
                    CustomNavigationHelper.router.push(Routes.inboundInsurePersonPath.path);
                    // passportNo = passportNoController.text;
                  }
                },
                txt: 'next_btn_txt'.tr(),
                buyOnlineStyle: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
