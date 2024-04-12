import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_arrow_text_form_field.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widget_product_info_detail_title.dart';
import '../../../widgets/widgte_custom_text_form_field.dart';
import '../widget/widget_buy_online_label_txt.dart';

class EnquiryScreen extends StatefulWidget {
  final String screenName;

  const EnquiryScreen({super.key, required this.screenName});

  @override
  State<EnquiryScreen> createState() => _EnquiryScreenState();
}

class _EnquiryScreenState extends State<EnquiryScreen> {
  final formKey = GlobalKey<FormState>();
  String passportNo = '';
  final TextEditingController passportNoController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

  String? receivedData;

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

  String? validateCountry(value){
    if (value!.isEmpty) {
      return '';
    }else {
      return null;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
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
        child: Padding(
          padding: const EdgeInsets.all(kMarginMedium_3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductInfoDetailTitleWidget(
                titleTxt: widget.screenName == 'inbound'
                ? 'inbound_title'
                : 'outbound_travel_accident_insurance',
              ),
              const SizedBox(
                height: kMarginCardMedium,
              ),
              const BuyOnlineLabelTxtWidget(labelTxt: AppStrings.passportNumber,),
              const SizedBox(
                height: kMarginSmall,
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
              const BuyOnlineLabelTxtWidget(labelTxt: AppStrings.passportIssuedCountry,),
              const SizedBox(
                height: kMarginSmall,
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
              const SizedBox(
                height: kMarginLarge,
              ),
              NextBtnWidget(
                onNextPressed: () {
                  final isValid = formKey.currentState?.validate();

                  if (isValid!) {
                    CustomNavigationHelper.router.push(Routes.inboundEnquiryHistoryPath.path, extra: widget.screenName);
                    // passportNo = passportNoController.text;
                  }
                },
                txt: AppStrings.search,
              )
            ],
          ),
        ),
      ),
    );
  }
}
