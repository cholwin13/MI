import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';
import 'package:test_pj_mi/ui/screens/login/widget/widget_login_text_form.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_next_btn.dart';
import '../../widgets/widget_notice_alert_box.dart';

class EnterCodeScreen extends StatefulWidget {
  const EnterCodeScreen({super.key});

  @override
  State<EnterCodeScreen> createState() => _EnterCodeScreenState();
}

class _EnterCodeScreenState extends State<EnterCodeScreen> {
  TextEditingController codeNoController = TextEditingController();

  String codeNo = '';

  handleCodeNoChanged(String value) {
    setState(() {
      codeNo = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: context.appColors.colorPrimary,
        iconTheme: IconThemeData(
          color: context.appColors.colorGold,
        ),
        title: Image.asset(
          AppImages.appLogo,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kMarginMedium_2),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('enter_code'.tr(), style: context.appFonts.bodySmall()?.copyWith(
                  fontSize: textRegular2X
              ),),
              LoginTextFormFieldWidget(
                onChanged: handleCodeNoChanged,
                textController: codeNoController,
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: kMarginCardMedium,
              ),
              NextBtnWidget(
                onNextPressed: () {
                  if(!codeNo.isNotEmpty){
                    _showDialog(context);
                  }
                },
                txt: 'next_btn_txt'.tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => NoticeAlertBoxWidget(
          titleTxt: Text('Required',
            style: context.appFonts
                .bodySmall()
                ?.copyWith(fontSize: textRegular, fontWeight: FontWeight.bold),),
          contentTxt: Text('Please enter mobile number...',
              style:
              context.appFonts.bodySmall()?.copyWith(fontSize: textRegular)),
        )
    );
  }
}
