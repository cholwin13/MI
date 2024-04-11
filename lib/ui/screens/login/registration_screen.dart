import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';
import 'package:test_pj_mi/ui/screens/login/widget/widget_login_text_form.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_date_picker_text_form_field.dart';
import '../../widgets/widget_label_txt_form_field.dart';
import '../../widgets/widget_next_btn.dart';
import '../../widgets/widget_normal_txt.dart';
import '../../widgets/widget_notice_alert_box.dart';
import '../../widgets/widget_product_info_detail_title.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController phNoController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  TextEditingController confirmPwdController = TextEditingController();

  late DateTime todayDate;
  late DateTime lastDob;
  late DateTime startDob;
  String name = '';
  String userType = 'Individual';
  String gender = "Male";
  String phNo = '';
  String pwd = '';
  String confirmPwd = '';

  handleNameChanged(String value) {
    setState((){
      name = value;
    });
}

  handlePhNoChanged(String value) {
    setState((){
      phNo = value;
    });
  }

  handlePwdChanged(String value) {
    setState((){
      pwd = value;
    });
  }

  handleConfirmPwdChanged(String value) {
    setState((){
      confirmPwd = value;
    });
  }

  String? validateDOB(value) {
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
    todayDate = DateTime.now();
    lastDob = DateTime(todayDate.year, todayDate.month, todayDate.day - 1);
    startDob = DateTime(todayDate.year - 120, todayDate.month, todayDate.day);
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
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kMarginMedium_3, vertical: kMarginMedium),
            child: Column(
              children: [
                const ProductInfoDetailTitleWidget(
                  titleTxt: 'sign_up',
                ),
                const SizedBox(
                  height: kMarginCardMedium_2,
                ),
                LabelTxtInFormFieldWidget(labelTxt: 'sign_up_name'.tr()),
                LoginTextFormFieldWidget(
                  onChanged: handleNameChanged,
                  textController: nameController,
                ),
                const SizedBox(
                  height: kMarginCardMedium_2,
                ),
                Row(
                  children: [
                    Flexible(
                      child: RadioListTile<String>(
                        title: NormalTxtWidget(txt: 'sign_up_individual'.tr(), fontColor: context.appColors.colorLabel,),
                        value: 'Individual',
                        groupValue: userType,
                        onChanged: (value){
                          setState(() {
                            userType = value!;
                          });
                        },
                      ),
                    ),
                    Flexible(
                      child: RadioListTile<String>(
                        title: NormalTxtWidget(txt: 'sign_up_organization'.tr(), fontColor: context.appColors.colorLabel,),
                        value: 'Organization',
                        groupValue: userType,
                        onChanged: (value){
                          setState(() {
                            userType = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: kMarginCardMedium_2,
                ),
                LabelTxtInFormFieldWidget(labelTxt: 'date_of_birth'.tr()),
                const SizedBox(
                  height: kMarginCardMedium,
                ),
                WidgetDatePickerTextFormField(
                  dateController: dobController,
                  validate: validateDOB,
                  initialDate: lastDob,
                  firstDate: startDob,
                  lastDate: lastDob,
                  hintTxt: 'DD-MM-YYYY',
                  buyOnlineStyle: true,
                ),
                const SizedBox(
                  height: kMarginCardMedium_2,
                ),
                LabelTxtInFormFieldWidget(labelTxt: 'gender'.tr()),
                const SizedBox(
                  height: kMarginCardMedium,
                ),
                Row(
                  children: [
                    Flexible(
                      child: RadioListTile<String>(
                        title: NormalTxtWidget(txt: 'Male', fontColor: context.appColors.colorLabel,),
                        value: 'Male',
                        groupValue: gender,
                        onChanged: (value){
                          setState(() {
                            gender = value!;
                          });
                        },
                      ),
                    ),
                    Flexible(
                      child: RadioListTile<String>(
                        title: NormalTxtWidget(txt: 'Female', fontColor: context.appColors.colorLabel,),
                        value: 'Female',
                        groupValue: gender,
                        onChanged: (value){
                          setState(() {
                            gender = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: kMarginCardMedium_2,
                ),
                LabelTxtInFormFieldWidget(labelTxt: 'login_ph_no'.tr()),
                LoginTextFormFieldWidget(
                  onChanged: handlePhNoChanged,
                  textController: phNoController,
                  textInputType: TextInputType.number,
                ),
                const SizedBox(
                  height: kMarginCardMedium_2,
                ),
                LabelTxtInFormFieldWidget(labelTxt: 'login_pwd'.tr()),
                LoginTextFormFieldWidget(
                  onChanged: handlePwdChanged,
                  textController: pwdController,
                ),
                const SizedBox(
                  height: kMarginCardMedium_2,
                ),
                LabelTxtInFormFieldWidget(labelTxt: 'confirm_pwd'.tr()),
                LoginTextFormFieldWidget(
                  onChanged: handleConfirmPwdChanged,
                  textController: confirmPwdController,
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
                NextBtnWidget(
                  onNextPressed: () {
                    if(!name.isNotEmpty || !dobController.text.isNotEmpty || !phNo.isNotEmpty || !pwd.isNotEmpty || !confirmPwd.isNotEmpty){
                      _showDialog(context);
                    }else if (pwd != confirmPwd) {
                      _showPwdMatch(context);
                    } else {

                    }
                  },
                  txt: 'sign_up_btn'.tr(),
                ),
              ],
            ),
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
          contentTxt: Text('Please fill required information !!!',
              style:
              context.appFonts.bodySmall()?.copyWith(fontSize: textRegular)),
        )
    );
  }

  void _showPwdMatch(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => NoticeAlertBoxWidget(
          titleTxt: Text('Match?',
            style: context.appFonts
                .bodySmall()
                ?.copyWith(fontSize: textRegular, fontWeight: FontWeight.bold),),
          contentTxt: Text('Password does not match !!!',
              style:
              context.appFonts.bodySmall()?.copyWith(fontSize: textRegular)),
        )
    );
  }

}
