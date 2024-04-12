import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widget_product_info_detail_title.dart';
import '../../../widgets/widgte_custom_text_form_field.dart';
import '../widget/widget_buy_online_label_txt.dart';

class SeamanEnquiryScreen extends StatefulWidget {
  const SeamanEnquiryScreen({super.key});

  @override
  State<SeamanEnquiryScreen> createState() => _SeamanEnquiryScreenState();
}

class _SeamanEnquiryScreenState extends State<SeamanEnquiryScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController SIRBController = TextEditingController();

  String SIRB = '';

  void handleSIRBChanged(String value) {
    setState(() {
      SIRB = value;
    });
  }

  String? validateSIRB(value) {
    if (value!.isEmpty) {
      return '';
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
          AppImages.lifeSeamanIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(kMarginMedium_3),
          child: Column(
            children: [
              const ProductInfoDetailTitleWidget(
                titleTxt: 'seaman_insurance',
              ),
              const SizedBox(
                height: kMarginCardMedium,
              ),
              const BuyOnlineLabelTxtWidget(labelTxt: AppStrings.SIRB,),
              const SizedBox(
                height: kMarginSmall,
              ),
              CustomTextFormFieldWidget(
                onChanged: handleSIRBChanged,
                hintTxt: '',
                textController: SIRBController,
                validator: validateSIRB,
                textInputType: TextInputType.text,
                buyOnlineStyle: true,
              ),
              const SizedBox(
                height: kMarginLarge,
              ),
              NextBtnWidget(
                onNextPressed: () {
                  final isValid = formKey.currentState?.validate();

                  if (isValid!) {
                    CustomNavigationHelper.router.push(Routes.inboundEnquiryHistoryPath.path, extra: '');
                    // passportNo = passportNoController.text;
                  }
                },
                txt: AppStrings.search,
              )
            ],
          ),
        )
      ),
    );
  }
}
