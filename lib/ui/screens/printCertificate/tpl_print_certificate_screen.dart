import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/injector.dart';
import 'package:test_pj_mi/network/api_services.dart';
import 'package:test_pj_mi/network/data_agents/retrofit_data_agent_impl.dart';

import '../../../core/data_state.dart';
import '../../../helper/app_images.dart';
import '../../../helper/app_strings.dart';
import '../../../helper/dimens.dart';
import '../../../helper/navigation_routes.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_label_txt_form_field.dart';
import '../../widgets/widget_next_btn.dart';
import '../../widgets/widget_product_info_detail_title.dart';
import '../../widgets/widgte_custom_text_form_field.dart';

class TPLPrintCertificateScreen extends StatefulWidget {
  const TPLPrintCertificateScreen({super.key});

  @override
  State<TPLPrintCertificateScreen> createState() => _TPLPrintCertificateScreenState();
}

class _TPLPrintCertificateScreenState extends State<TPLPrintCertificateScreen> {
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
      return '';
    } else {
      return null;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final RetrofitDataAgentImpl test = RetrofitDataAgentImpl(injector());
    test.getTPLPrintCertificate("9F/9867").then((dataState) {
      if(dataState is DataSuccess) {
        print("success -..");
        print(dataState.data?.toJson().toString());
      }else if (dataState is DataError){
        print("Error -....");
        print(dataState.error);
      }
    });
    // test.getTPLPrintCertificate("9F/9867");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.homePrintCertificate,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kMarginMedium),
          child: Column(
            children: [
              const SizedBox(
                height: kMarginMedium_2,
              ),
              const ProductInfoDetailTitleWidget(titleTxt: AppStrings.printCertificateForTplCapital, isLocalized: false,),
              const SizedBox(
                height: kMarginMedium_2,
              ),
              const LabelTxtInFormFieldWidget(
                  labelTxt: AppStrings.vehicleNo),
              const SizedBox(
                height: kMarginMedium_2,
              ),
              CustomTextFormFieldWidget(
                onChanged: handleVehicleNoChanged,
                hintTxt: '9F/9867',
                textController: vehicleNoController,
                validator: validateVehicleNo,
                textInputType: TextInputType.text,
                buyOnlineStyle: true,
              ),
              const SizedBox(
                height: kMarginMedium_2,
              ),
              NextBtnWidget(
                  formKey: formKey,
                  onNextPressed: () {
                    final isValid = formKey.currentState?.validate();

                    if (isValid!) {
                      CustomNavigationHelper.router.push(
                        Routes.tplPrintCertificateHistoryPath.path,
                      );
                    }
                  },
                  txt: 'Search'
              ),
            ],
          ),
        ),
      ),
    );
  }
}
