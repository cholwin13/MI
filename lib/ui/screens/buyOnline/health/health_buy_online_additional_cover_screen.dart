import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widget_normal_txt.dart';
import '../../../widgets/widget_product_info_detail_title.dart';
import '../../premiumCalculator/generalInsurance/additional_risk_cover_screen.dart';
import '../widget/widget_buy_online_title_text.dart';

class HealthBuyOnlineAdditionalCoverBuyOnlineScreen extends StatefulWidget {
  const HealthBuyOnlineAdditionalCoverBuyOnlineScreen({super.key});

  @override
  State<HealthBuyOnlineAdditionalCoverBuyOnlineScreen> createState() => _HealthBuyOnlineAdditionalCoverBuyOnlineScreenState();
}

class _HealthBuyOnlineAdditionalCoverBuyOnlineScreenState extends State<HealthBuyOnlineAdditionalCoverBuyOnlineScreen> {
  final formKey = GlobalKey<FormState>();
  bool isOperation = false;
  bool isClinic = false;

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
              titleTxt: 'health_additional_cover'.tr(),
              pageNo: '',
            ),
            Divider(
              color: context.appColors.colorLabel,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kMarginCardMedium_2, vertical: kMarginCardMedium_2),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: context.appColors.colorPrimary),
                  borderRadius: BorderRadius.circular(boxRadius_2),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                          left: kMarginCardMedium_2,
                          right: kMarginCardMedium_2,
                          top: kMarginSmall_2),
                      child: NormalTxtWidget(
                        txt: AppStrings.basicPremium,
                      ),
                    ),
                    Divider(
                      color: context.appColors.colorPrimary,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(
                                      checkBoxRadius))),
                          value: isOperation,
                          onChanged: (bool? value) {
                            setState(() {
                              isOperation = value!;
                            });
                          },
                          checkColor: Colors.white,
                          activeColor:
                          context.appColors.colorPrimary,
                        ),
                        Expanded(child: NormalTxtWidget(txt: 'health_additional_operation'.tr(), fontSize: textSmall2X, fontColor: context.appColors.colorLabel,)),
                      ],
                    ),
                    if(isOperation)
                      const TxtFieldWidget(),
                    Row(
                      children: [
                        Checkbox(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(
                                      checkBoxRadius))),
                          value: isClinic,
                          onChanged: (bool? value) {
                            setState(() {
                              isClinic = value!;
                            });
                          },
                          checkColor: Colors.white,
                          activeColor:
                          context.appColors.colorPrimary,
                        ),
                        Expanded(child: NormalTxtWidget(txt: 'health_additional_clinical'.tr(),fontSize: textSmall2X, fontColor: context.appColors.colorLabel,)),
                      ],
                    ),
                    if(isClinic)
                      const TxtFieldWidget(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: kMarginMedium, top: kMarginMedium),
              child: NextBtnWidget(
                onNextPressed: () {
                  final isValid = formKey.currentState?.validate();

                  if (isValid!) {
                    CustomNavigationHelper.router
                        .push(Routes.healthSurveyPath.path);
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


class TxtFieldWidget extends StatefulWidget {
  const TxtFieldWidget({
    super.key,
  });

  @override
  State<TxtFieldWidget> createState() => _TxtFieldWidgetState();
}

class _TxtFieldWidgetState extends State<TxtFieldWidget> {
  final _controller = TextEditingController();

  String? validateText(value){
    final double si = double.tryParse(value!) ?? 0.0;
    if(si != 1){
      return AppStrings.healthMinMaxErrTxt;
    }else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NormalTxtWidget(txt: AppStrings.healthMinMaxTxt, fontSize: textSmall2X, fontColor: context.appColors.colorLabel,),
        const SizedBox(height: kMarginCardMedium,),
        SizedBox(
          width: 150.0,
          child: TextFormField(
            onTapOutside: (value){
              FocusManager.instance.primaryFocus?.unfocus();
            },
            controller: _controller,
            validator: validateText,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(kMarginCardMedium),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: context.appColors.colorPrimary),
                borderRadius: BorderRadius.circular(boxRadius_2),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: context.appColors.colorPrimary),
                borderRadius: BorderRadius.circular(boxRadius_2),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: context.appColors.colorPrimary),
                borderRadius: BorderRadius.circular(boxRadius_2),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: context.appColors.colorPrimary),
                borderRadius: BorderRadius.circular(boxRadius_2),
              ),
              hintText: 'travel_enter_unit'.tr(),
              hintStyle: TextStyle(
                fontSize: 12.0,
                color: context.appColors.colorTextInputPlaceHolder,
              ),
              isDense: true,
            ),
            style: TextStyle(
              fontSize: 12.0,
              color: context.appColors.colorLabel,
            ),
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
          ),
        ),
        const SizedBox(height: kMarginCardMedium,),
      ],
    );
  }
}