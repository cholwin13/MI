import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_localized_paragraph_txt.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';

class TplPremiumCalculatorCarNumberScreen extends StatefulWidget {
  const TplPremiumCalculatorCarNumberScreen({super.key});

  @override
  State<TplPremiumCalculatorCarNumberScreen> createState() =>
      _TplPremiumCalculatorCarNumberScreenState();
}

class _TplPremiumCalculatorCarNumberScreenState
    extends State<TplPremiumCalculatorCarNumberScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController vehicleNoController = TextEditingController();
  String vehicleNo = '';

  void handleVehicleNoChanged(String value) {
    setState(() {
      vehicleNo = value;
    });
  }

  String? validateVehicleNo(value) {
    if (value!.isEmpty) {
      return AppStrings.tplVehicleNoErrTxt;
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalTlpIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(
              height: kMarginMedium_2,
            ),
            const ProductInfoDetailTitleWidget(titleTxt: 'tpl_title'),
            const SizedBox(
              height: kMarginMedium_2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kMarginMedium),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: LabelTxtInFormFieldWidget(
                                labelTxt: 'tpl_vehicle_number'.tr())),
                        GestureDetector(
                          onTap: () {
                            CustomNavigationHelper.router
                                .push(
                              Routes.userGuidePath.path,
                              extra: 'tpl'
                            );
                          },
                          child: Text(
                            AppStrings.tplHowToPay,
                            style: TextStyle(
                                color: context.appColors.colorLabel,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleVehicleNoChanged,
                      hintTxt: 'tpl_vehicle_number_hint_txt'.tr(),
                      textController: vehicleNoController,
                      validator: validateVehicleNo,
                      textInputType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: kMarginMedium_2,
                    ),
                    const LocalizedParagraphText(
                        txt: 'tpl_vehicle_no_para1',
                        paddingSize: kMarginMedium),
                    const LocalizedParagraphText(
                        txt: 'tpl_vehicle_no_para2',
                        paddingSize: kMarginMedium),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NextBtnWidget(
        formKey: formKey,
        onNextPressed: () {
          final isValid = formKey.currentState?.validate();

          if (isValid!) {
            CustomNavigationHelper.router.push(
              Routes.tplOwnerInfoPath.path,
            );
          }
        },
        txt: 'next_btn_txt'.tr(),
      ),
    );
  }
}
