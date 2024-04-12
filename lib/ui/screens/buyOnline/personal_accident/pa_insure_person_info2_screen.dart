import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widgte_custom_text_form_field.dart';
import '../widget/widget_buy_online_label_txt.dart';
import '../widget/widget_buy_online_title_text.dart';

class PAInsurePersonInfo2Screen extends StatefulWidget {
  const PAInsurePersonInfo2Screen({super.key});

  @override
  State<PAInsurePersonInfo2Screen> createState() => _PAInsurePersonInfo2ScreenState();
}

class _PAInsurePersonInfo2ScreenState extends State<PAInsurePersonInfo2Screen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController nrcNoController = TextEditingController();

  String nrcNo = '';

  handleNRCNoChanged(String value){
    setState(() {
      nrcNo = value;
    });
  }

  String? validateNRCNo(value){
    if(value!.isEmpty){
      return '';
    }else{
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifePABuyOnline,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              BuyOnlineTitleTxt(
                titleTxt: 'pa_insure_person_info'.tr(),
                pageNo: AppStrings.pageNo2of3,
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
                      labelTxt: AppStrings.nrcNo,
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleNRCNoChanged,
                      hintTxt: 'eg. 5/KaBaLa(N)123456',
                      textController: nrcNoController,
                      validator: validateNRCNo,
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
                          .push(Routes.paInsurePersonInfo3Path.path);
                    }
                  },
                  txt: 'next_btn_txt'.tr(),
                  buyOnlineStyle: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
