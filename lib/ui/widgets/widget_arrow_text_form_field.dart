import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../helper/dimens.dart';

class WidgetArrowTextFormFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final String? Function(String?)? validator;
  final Function()? onPressed;
  final bool buyOnlineStyle;
  final Function()? onTap;
  final String? selectedText;

  const WidgetArrowTextFormFieldWidget({super.key,
    required this.controller,
    required this.hintText,
    required this.validator,
    required this.onPressed,
    this.buyOnlineStyle = false,
    this.onTap,
    this.selectedText
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  buyOnlineStyle == false
          ? InputDecoration(
          contentPadding: const EdgeInsets.all(kMarginCardMedium),
          enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: context.appColors.colorPrimary),
            borderRadius: BorderRadius.circular(boxRadius_2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: context.appColors.colorPrimary),
            borderRadius: BorderRadius.circular(boxRadius_2),
          ),
          errorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: context.appColors.colorPrimary),
            borderRadius: BorderRadius.circular(boxRadius_2),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: context.appColors.colorPrimary),
            borderRadius: BorderRadius.circular(boxRadius_2),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 12.0,
            color: context.appColors.colorTextInputPlaceHolder,
          ),
          isDense: true,
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.arrow_forward_ios, color: context.appColors.colorPrimary,),
          )
      )
          : InputDecoration(
          contentPadding: const EdgeInsets.all(kMarginCardMedium),
          enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: context.appColors.colorBtnGray),
            borderRadius: BorderRadius.circular(boxRadius_2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: context.appColors.colorBtnGray),
            borderRadius: BorderRadius.circular(boxRadius_2),
          ),
          errorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: context.appColors.colorError),
            borderRadius: BorderRadius.circular(boxRadius_2),
          ),
          errorStyle: const TextStyle(fontSize: 0),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: context.appColors.colorBtnGray),
            borderRadius: BorderRadius.circular(boxRadius_2),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 12.0,
            color: context.appColors.colorTextInputPlaceHolder,
          ),
          isDense: true,
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.arrow_forward_ios, color: context.appColors.colorPrimary,),
          )
      ),
      style: TextStyle(
        fontSize: 12.0,
        color: context.appColors.colorLabel,
      ),
      controller: controller,
      validator: validator,
      readOnly: true,
      onTap: onPressed,
    );
  }
}
