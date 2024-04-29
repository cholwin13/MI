import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_pj_mi/bloc/tpl_print_certificate/tpl_print_certificate_bloc.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';
import 'package:test_pj_mi/injector.dart';
import 'package:test_pj_mi/network/api_service.dart';
import 'package:test_pj_mi/network/data_agents/retrofit_data_agent_impl.dart';

import '../../../core/data_state.dart';
import '../../../data/vos/tpl_print_certificate/tpl_print_certificate_vo.dart';
import '../../../helper/app_images.dart';
import '../../../helper/app_strings.dart';
import '../../../helper/dimens.dart';
import '../../../helper/navigation_routes.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_label_txt_form_field.dart';
import '../../widgets/widget_next_btn.dart';
import '../../widgets/widget_notice_alert_box.dart';
import '../../widgets/widget_product_info_detail_title.dart';
import '../../widgets/widgte_custom_text_form_field.dart';

class TPLPrintCertificateScreen extends StatefulWidget {
  const TPLPrintCertificateScreen({super.key});

  @override
  State<TPLPrintCertificateScreen> createState() =>
      _TPLPrintCertificateScreenState();
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

    // RetrofitDataAgentImpl test = RetrofitDataAgentImpl(injector());
    // test.getRecordHistory("9F/9867").then((dataState) {
    //   if (dataState is DataSuccess) {
    //     print("success -..");
    //     print(dataState.data?.toJson().toString());
    //   } else if (dataState is DataError) {
    //     print("Error -....");
    //     print(dataState.error);
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TplPrintCertificateBloc, TplPrintCertificateState>(
      builder: (context, state) {
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
                  const ProductInfoDetailTitleWidget(
                    titleTxt: AppStrings.printCertificateForTplCapital,
                    isLocalized: false,),
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
                    // onChanged: (val){
                    //   BlocProvider.of<TplPrintCertificateBloc>(context).add(VehicleNoChangedEvent(val));
                    // },
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
                          RetrofitDataAgentImpl test = RetrofitDataAgentImpl(injector());
                          test.getRecordHistory(vehicleNo).then((dataState) {
                            if (dataState is DataSuccess) {
                              // print("success -..");
                              List<TPLPrintCertificateVO> decodedData = (dataState.data?.data ?? []);
                              // print(jsonEncode(dataState.data?.data));
                              if(dataState.data?.data != null && dataState.data!.data!.isEmpty){
                                _showDialog(context);
                              }else{
                                CustomNavigationHelper.router.push(
                                  Routes.tplPrintCertificateHistoryPath.path,
                                  extra: decodedData
                                );
                              }
                            } else if (dataState is DataError) {
                              // print("Error -....");
                              print(dataState.error);
                            }
                          });

                          // CustomNavigationHelper.router.push(
                          //   Routes.tplPrintCertificateHistoryPath.path,
                          // );
                        }
                      },
                      txt: 'Search'
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => NoticeAlertBoxWidget(
          titleTxt: Text('Alert',
            style: context.appFonts
                .bodySmall()
                ?.copyWith(fontSize: textRegular, fontWeight: FontWeight.bold),),
          contentTxt: Text('No Record List yet.',
              style:
              context.appFonts.bodySmall()?.copyWith(fontSize: textRegular)),
        )
    );
  }

}
