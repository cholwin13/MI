import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';
import '../../../../widgets/premium_details_arguments_list.dart';

class PublicBusinessScreen extends StatefulWidget {
  const PublicBusinessScreen({super.key});

  @override
  State<PublicBusinessScreen> createState() => _PublicBusinessScreenState();
}

class _PublicBusinessScreenState extends State<PublicBusinessScreen> {
  final formKey = GlobalKey<FormState>();
  String sumInsure = '';
  final TextEditingController sumInsureController = TextEditingController();

  void handleSIChanged(String value) {
    setState(() {
      sumInsure = value;
    });
  }

  String? validateSI(value){
    final double si = double.tryParse(value!) ?? 0.0;
    if (value!.isEmpty) {
      return AppStrings.sumInsureErrTxt;
    }else if(si < 1000 || si > 1000000000){
      return '*Sum insured must be between 1,000 and \n 1,000,000,000.';
    }
    else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LabelTxtInFormFieldWidget(labelTxt: 'motor_si_mmk'.tr()),
                const SizedBox(
                  height: kMarginSmall,
                ),
                CustomTextFormFieldWidget(
                  onChanged: handleSIChanged,
                  hintTxt: 'motor_si_txt'.tr(),
                  textController: sumInsureController,
                  validator: validateSI,
                ),

              ],
            ),
            KeyboardVisibilityBuilder(builder: (context, visible){
              return visible?
                  const SizedBox() :
              NextBtnWidget(
                formKey: formKey,
                onNextPressed: () {
                  final isValid = formKey.currentState?.validate();

                  if (isValid!) {
                    CustomNavigationHelper.router
                        .push(Routes.generalInsPremiumDetailsAndCoveragePath.path,
                        extra: PremiumDetailsArguments(title: 'fidelity_title', isMMK: true, appBarIcon: AppImages.generalFidelityIcon)
                    );
                  }
                }, txt: 'next_btn_txt'.tr(),
              );
            })
          ],
        )
    );
  }
}