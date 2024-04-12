import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../../helper/dimens.dart';

class NRCTextFormFieldWidget extends StatelessWidget {

  final Function(String)? onChanged;

  final String hintTxt;

  final TextEditingController textController;

  final String? Function(String?)? validator;

  final TextInputType textInputType;

  final bool? errorBorderColor;

  final int maxLines;

  final int? maxLength;

  const NRCTextFormFieldWidget({
    super.key,
    this.onChanged,
    required this.hintTxt,
    required this.textController,
    this.validator,
    this.textInputType = TextInputType.number,
    this.errorBorderColor,
    this.maxLines = 1,
    this.maxLength
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (value){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(kMarginMedium),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: context.appColors.colorBtnGray),
          borderRadius: BorderRadius.circular(boxRadius_2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: context.appColors.colorBtnGray
          ),
          borderRadius: BorderRadius.circular(boxRadius_2),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: context.appColors.colorError),
          borderRadius: BorderRadius.circular(boxRadius_2),
        ),
        errorStyle: const TextStyle(fontSize: 0),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: context.appColors.colorError),
          borderRadius: BorderRadius.circular(boxRadius_2),
        ),
        hintText: hintTxt,
        hintStyle: context.appFonts.labelSmall()?.copyWith(
            fontSize: 11.0,
            color: context.appColors.colorTextInputPlaceHolder
        ),
        isDense: true,
      ),
      style: context.appFonts.bodySmall()?.copyWith(
          fontSize: 12.0,
          color: context.appColors.colorLabel
      ),
      keyboardType: textInputType,
      validator: validator,
      onChanged: onChanged,
      controller: textController,
      maxLines: maxLines,
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxLength)
      ],
    );
  }
}