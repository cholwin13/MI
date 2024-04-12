import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widgte_custom_text_form_field.dart';
import '../widget/widget_buy_online_label_txt.dart';
import '../widget/widget_buy_online_radio_list_title.dart';
import '../widget/widget_buy_online_title_text.dart';

class InboundAgentScreen extends StatefulWidget {
  const InboundAgentScreen({super.key});

  @override
  State<InboundAgentScreen> createState() => _InboundAgentScreenState();
}

class _InboundAgentScreenState extends State<InboundAgentScreen> {
  String? selectedOption;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedOption = 'self_service';
  }

  void updateSelectedOption(String option) {
    setState(() {
      selectedOption = option;
      print('Select $selectedOption');
    });
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              const BuyOnlineTitleTxt(
                titleTxt: AppStrings.agentTitle,
                pageNo: AppStrings.pageNo4,
              ),
              Divider(
                color: context.appColors.colorLabel,
              ),
              RadioListTitleWidget(
                titleText: AppStrings.selfService,
                value: 'self_service',
                groupValue: selectedOption,
                onChanged: (value) {
                  updateSelectedOption(value!);
                },
              ),
              RadioListTitleWidget(
                titleText: AppStrings.inboundAgent,
                value: 'agent',
                groupValue: selectedOption,
                onChanged: (value) {
                  updateSelectedOption(value!);
                },
              ),
              selectedOption == 'self_service'
                  ? NextBtnWidget(
                      onNextPressed: () {
                        CustomNavigationHelper.router
                            .push(Routes.inboundPremiumAndPaymentPath.path);
                      },
                      txt: AppStrings.submitAndContinue,
                    )
                  : const AgentCheckWidget(),
            ],
          ),
        ));
  }
}

class AgentCheckWidget extends StatefulWidget {
  const AgentCheckWidget({super.key});

  @override
  State<AgentCheckWidget> createState() => _AgentCheckWidgetState();
}

class _AgentCheckWidgetState extends State<AgentCheckWidget> {
  final formKey = GlobalKey<FormState>();
  TextEditingController agentLicenseNoController = TextEditingController();
  TextEditingController agentPwdController = TextEditingController();

  String agentLicenseNo = '';
  String agentPwd = '';
  bool isCheckAgent = false;
  bool isAgentValid = false;

  handleAgentLicenseChanged(String value) {
    setState(() {
      agentLicenseNo = value;
    });
  }

  handleAgentPwdChanged(String value) {
    setState(() {
      agentPwd = value;
    });
  }

  String? validateAgentLicenseNo(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateAgentPwdNo(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kMarginLargeX, vertical: kMarginCardMedium),
        child: Column(
          children: [
            const BuyOnlineLabelTxtWidget(
              labelTxt: AppStrings.agentLicenseNo,
            ),
            const SizedBox(
              height: kMarginCardMedium,
            ),
            CustomTextFormFieldWidget(
              onChanged: handleAgentLicenseChanged,
              hintTxt: '',
              textController: agentLicenseNoController,
              validator: validateAgentLicenseNo,
              textInputType: TextInputType.text,
              buyOnlineStyle: true,
            ),
            const SizedBox(
              height: kMarginLarge,
            ),
            const BuyOnlineLabelTxtWidget(
              labelTxt: AppStrings.agentPwd,
            ),
            const SizedBox(
              height: kMarginCardMedium,
            ),
            CustomTextFormFieldWidget(
              onChanged: handleAgentPwdChanged,
              hintTxt: '',
              textController: agentPwdController,
              validator: validateAgentPwdNo,
              textInputType: TextInputType.text,
              buyOnlineStyle: true,
            ),
            const SizedBox(
              height: kMarginLarge,
            ),
            if (isAgentValid)
              Text(
                AppStrings.agentCheckError,
                style: context.appFonts
                    .bodySmall()
                    ?.copyWith(color: context.appColors.colorError),
              ),
            if (!isCheckAgent)
              NextBtnWidget(
                onNextPressed: () {
                  final isValid = formKey.currentState?.validate();

                  if (isValid!) {
                    if (agentLicenseNo == "ITAI" && agentPwd == "1234") {
                      setState(() {
                        isAgentValid = false;
                        isCheckAgent = true;
                      });
                    } else {
                      setState(() {
                        isAgentValid = true;
                        isCheckAgent = false;
                      });
                    }
                  }
                },
                txt: AppStrings.checkAgent,
              ),
            if (isCheckAgent)
              NextBtnWidget(
                onNextPressed: () {
                  CustomNavigationHelper.router
                      .push(Routes.inboundPremiumAndPaymentPath.path);
                },
                txt: AppStrings.submitAndContinue,
              ),
          ],
        ),
      ),
    );
  }
}
