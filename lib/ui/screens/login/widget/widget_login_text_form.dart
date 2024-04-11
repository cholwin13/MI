import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

class LoginTextFormFieldWidget extends StatelessWidget {
  final Function(String)? onChanged;

  final TextEditingController textController;

  final TextInputType textInputType;

  const LoginTextFormFieldWidget({
    super.key,
    required this.onChanged,
    required this.textController,
    this.textInputType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (value){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: context.appColors.colorTextInputPlaceHolder),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: context.appColors.colorTextInputPlaceHolder),
        ),

        isDense: true,
      ),
      style: context.appFonts.bodySmall()?.copyWith(
          fontSize: 12.0,
          color: context.appColors.colorLabel
      ),
      keyboardType: TextInputType.text,
      onChanged: onChanged,
      controller: textController,
    );
  }
}
