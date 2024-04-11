import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../../helper/app_images.dart';
import '../../../../../../helper/app_strings.dart';
import '../../../../../../helper/dimens.dart';
import '../../../../../../helper/navigation_routes.dart';
import '../../../../../../routes/app_routes.dart';
import '../../../../../widgets/app_bar_widget.dart';
import '../../../../../widgets/premium_details_arguments_list.dart';
import '../../../../../widgets/widget_next_btn.dart';
import '../../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../../widgets/widget_normal_txt.dart';

class HealthAdditionalCoverWidget extends StatefulWidget {
  const HealthAdditionalCoverWidget({super.key});

  @override
  State<HealthAdditionalCoverWidget> createState() =>
      _HealthAdditionalCoverWidgetState();
}

class _HealthAdditionalCoverWidgetState
    extends State<HealthAdditionalCoverWidget> {
  final formKey = GlobalKey<FormState>();
  bool isOperation = false;
  bool isClinic = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
          appBar: AppBarWidget(
            titleIcon: Image.asset(
              AppImages.lifeHealthIcon,
              color: context.appColors.colorGold,
              width: iconMedium_3,
              height: iconMedium_3,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kMarginCardMedium_2, vertical: kMarginCardMedium_2),
            child: Column(
              children: [
                const ProductInfoDetailTitleWidget(
                  titleTxt: 'health_insurance',
                ),
                const SizedBox(
                  height: kMarginCardMedium_2,
                ),
                const AdditionalRiskCovetTxtWidget(),
                const SizedBox(
                  height: kMarginCardMedium_2,
                ),
                Container(
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
                const Spacer(),
                KeyboardVisibilityBuilder(builder: (context, visible){
                  return visible?
                  const SizedBox()
                      : NextBtnWidget(
                    formKey: formKey,
                    onNextPressed: () {
                      final isValid = formKey.currentState?.validate();
                      if(isValid!){
                        CustomNavigationHelper.router.push(
                          Routes.lifePremiumDetailsPath.path,
                          extra: PremiumDetailsArguments(
                              title: 'health_insurance',
                              isMMK: true,
                              appBarIcon:
                              AppImages.lifeHealthIcon,
                              isStampFee: true
                          ),
                        );
                      }
                    },
                    txt: 'next_btn_txt'.tr(),
                  );
                }),
              ],
            ),
          )),
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

class AdditionalRiskCovetTxtWidget extends StatelessWidget {
  const AdditionalRiskCovetTxtWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppImages.additionalRiskCover,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
        const SizedBox(
          width: kMarginCardMedium,
        ),
        NormalTxtWidget(
          txt: 'health_additional_cover'.tr(),
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
