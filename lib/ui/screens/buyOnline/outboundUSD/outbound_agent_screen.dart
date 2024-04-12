import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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

class OutboundAgentScreen extends StatefulWidget {
  const OutboundAgentScreen({super.key});

  @override
  State<OutboundAgentScreen> createState() => _OutboundAgentScreenState();
}

class _OutboundAgentScreenState extends State<OutboundAgentScreen> {
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
      // print('Select $selectedOption');
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
              titleText: AppStrings.outboundMMKAgent,
              value: 'agent',
              groupValue: selectedOption,
              onChanged: (value) {
                updateSelectedOption(value!);
              },
            ),
            RadioListTitleWidget(
              titleText: AppStrings.outboundMMKAssoAgent,
              value: 'asso_agent',
              groupValue: selectedOption,
              onChanged: (value) {
                updateSelectedOption(value!);
              },
            ),

            if(selectedOption == 'self_service')
              NextBtnWidget(
                onNextPressed: () {
                  CustomNavigationHelper.router
                      .push(Routes.outboundPremiumAndPaymentPath.path);
                },
                txt: AppStrings.submitAndContinue,
              )

            else if(selectedOption == 'agent')
              const AgentVerificationWidget()

            else
              const AssociationAgentVerification()
          ],
        ),
      ),
    );
  }
}

class AgentVerificationWidget extends StatefulWidget {
  const AgentVerificationWidget({super.key});

  @override
  State<AgentVerificationWidget> createState() => _AgentVerificationWidgetState();
}

class _AgentVerificationWidgetState extends State<AgentVerificationWidget> {
  final formKey = GlobalKey<FormState>();
  TextEditingController agentLicenseNoController = TextEditingController();
  TextEditingController agentNameController = TextEditingController();

  String agentName = '';
  String agentLicenseNo = '';
  bool isCheckAgent = false;
  bool isAgentValid = false;

  handleAgentLicenseChanged(String value) {
    setState(() {
      agentLicenseNo = value;
    });
  }

  handleAgentNameChanged(String value) {
    setState(() {
      agentName = value;
    });
  }

  String? validateAgentLicenseNo(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateAgentName(value) {
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
                labelTxt: AppStrings.agentName,
              ),
              const SizedBox(
                height: kMarginCardMedium,
              ),
              CustomTextFormFieldWidget(
                onChanged: handleAgentNameChanged,
                hintTxt: '',
                textController: agentNameController,
                validator: validateAgentName,
                textInputType: TextInputType.text,
                buyOnlineStyle: true,
              ),
              const SizedBox(
                height: kMarginLarge,
              ),
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
                      if (agentLicenseNo == "1234" && agentName == "1234") {
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
                        .push(Routes.outboundPremiumAndPaymentPath.path);
                  },
                  txt: AppStrings.submitAndContinue,
                ),
            ],
          )
      ),
    );
  }
}

class AssociationAgentVerification extends StatefulWidget {
  const AssociationAgentVerification({super.key});

  @override
  State<AssociationAgentVerification> createState() => _AssociationAgentVerificationState();
}

class _AssociationAgentVerificationState extends State<AssociationAgentVerification> {
  final formKey = GlobalKey<FormState>();
  TextEditingController assoAgentLicenseNoController = TextEditingController();
  TextEditingController assoAgentPwdController = TextEditingController();

  String assoAgentLicenseNo = '';
  String assoAgentPwd = '';
  bool isCheckAgent = false;
  bool isAgentValid = false;

  handleAssoAgentLicenseChanged(String value) {
    setState(() {
      assoAgentLicenseNo = value;
    });
  }

  handleAssoAgentPwdChanged(String value) {
    setState(() {
      assoAgentPwd = value;
    });
  }

  String? validateAssoAgentLicenseNo(value) {
    if (value!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateAssoAgentPwdNo(value) {
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
              onChanged: handleAssoAgentLicenseChanged,
              hintTxt: '',
              textController: assoAgentLicenseNoController,
              validator: validateAssoAgentLicenseNo,
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
              onChanged: handleAssoAgentPwdChanged,
              hintTxt: '',
              textController: assoAgentPwdController,
              validator: validateAssoAgentPwdNo,
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
                    if (assoAgentLicenseNo == "1234" && assoAgentPwd == "1234") {
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
                      .push(Routes.outboundPremiumAndPaymentPath.path);
                },
                txt: AppStrings.submitAndContinue,
              ),
          ],
        ),
      ),
    );
  }
}
