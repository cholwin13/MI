import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';
import 'package:test_pj_mi/ui/screens/login/widget/widget_login_text_form.dart';

import '../../../helper/app_images.dart';
import '../../../helper/app_strings.dart';
import '../../../helper/dimens.dart';
import '../../../helper/navigation_routes.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/widget_label_txt_form_field.dart';
import '../../widgets/widget_next_btn.dart';
import '../../widgets/widget_notice_alert_box.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  String phoneNo = '';
  String pwd = '';

  handlePhNoChanged(String value) {
    setState(() {
      phoneNo = value;
    });
  }

  handlePwdChanged(String value) {
    setState(() {
      pwd = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kMarginMedium_3,vertical: kMarginMedium_3),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(230, 232, 234, 0.6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onPressed: () {
                    CustomNavigationHelper.router.push(
                      Routes.homePath.path
                    );
                  },
                  child: Text('login_skip'.tr(), style: context.appFonts.bodySmall()?.copyWith(
                    fontSize: textRegular
                  ),),
                ),
              ],
            ),
            const SizedBox(
              height: kMarginMedium_2,
            ),
            Center(
              child: Image.asset(
                AppImages.appLogo,
                width: 160.0,
                height: 160.0,
              ),
            ),
            const SizedBox(
              height: kMarginCardMedium_2,
            ),
            LabelTxtInFormFieldWidget(labelTxt: 'login_ph_no'.tr()),
            LoginTextFormFieldWidget(
              onChanged: handlePwdChanged,
              textController: pwdController,
              textInputType: TextInputType.number,
            ),
            const SizedBox(
              height: kMarginMedium_2,
            ),
            LabelTxtInFormFieldWidget(labelTxt: 'login_pwd'.tr()),
            LoginTextFormFieldWidget(
              onChanged: handlePhNoChanged,
              textController: phoneNoController,
            ),
            const SizedBox(
              height: kMarginMedium_3,
            ),
            NextBtnWidget(
              onNextPressed: () {
                if(!phoneNo.isNotEmpty || !pwd.isNotEmpty){
                  _showDialog(context);
                }
              },
              txt: 'login_btn'.tr(),
            ),
            const SizedBox(
              height: kMarginCardMedium,
            ),
            GestureDetector(
              onTap: (){
                CustomNavigationHelper.router.push(
                    Routes.forgetPwdPath.path
                );
              },
                child: Text('forget_pwd'.tr(),
                style: context.appFonts.bodySmall()?.copyWith(
                  decoration: TextDecoration.underline
                ),)
            ),
            const SizedBox(
              height: kMarginCardMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('login_no_account'.tr(), style: context.appFonts.bodySmall(),),
                GestureDetector(
                    onTap: (){
                      CustomNavigationHelper.router.push(
                          Routes.registrationPath.path
                      );
                    },
                    child: Text('new_account'.tr(),
                      style: context.appFonts.bodySmall()?.copyWith(
                          fontWeight: FontWeight.bold
                      ),)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => NoticeAlertBoxWidget(
          titleTxt: Text('Fill',
            style: context.appFonts
                .bodySmall()
                ?.copyWith(fontSize: textRegular, fontWeight: FontWeight.bold),),
          contentTxt: Text('Please fill mobile number and password',
              style:
              context.appFonts.bodySmall()?.copyWith(fontSize: textRegular)),
        )
    );
  }

}
