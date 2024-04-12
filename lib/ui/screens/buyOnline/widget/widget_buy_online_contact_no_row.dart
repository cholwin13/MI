import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/dimens.dart';

class BuyOnlineContactNoInfoRowWidget extends StatelessWidget {
  final TextEditingController contactNoCountryCodeController;
  final TextEditingController contactPhoneNoController;
  final String? Function(dynamic)? validateContactNoCountryCode;
  final Function()? countryCodePressed;
  final void Function(String) handleContactPhoneNoChanged;
  final String? Function(dynamic)? validateContactNo;

  const BuyOnlineContactNoInfoRowWidget(
      {super.key,
      required this.contactNoCountryCodeController,
      this.validateContactNoCountryCode,
      this.countryCodePressed,
      required this.handleContactPhoneNoChanged,
      this.validateContactNo,
      required this.contactPhoneNoController});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: TextFormField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(kMarginCardMedium),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: context.appColors.colorBtnGray),
                  borderRadius: BorderRadius.circular(boxRadius_2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: context.appColors.colorBtnGray),
                  borderRadius: BorderRadius.circular(boxRadius_2),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: context.appColors.colorError),
                  borderRadius: BorderRadius.circular(boxRadius_2),
                ),
                errorStyle: const TextStyle(fontSize: 0),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: context.appColors.colorBtnGray),
                  borderRadius: BorderRadius.circular(boxRadius_2),
                ),
                hintText: '',
                hintStyle: TextStyle(
                  fontSize: 12.0,
                  color: context.appColors.colorTextInputPlaceHolder,
                ),
                isDense: true,
                suffixIcon: IconButton(
                  onPressed: countryCodePressed,
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: context.appColors.colorPrimary,
                  ),
                )),
            style: TextStyle(
              fontSize: 12.0,
              color: context.appColors.colorLabel,
            ),
            controller: contactNoCountryCodeController,
            validator: validateContactNoCountryCode,
            readOnly: true,
          ),
        ),
        Expanded(
            flex: 2,
            child: TextFormField(
              onTapOutside: (value) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(kMarginCardMedium),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: context.appColors.colorBtnGray),
                  borderRadius: BorderRadius.circular(boxRadius_2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: context.appColors.colorBtnGray),
                  borderRadius: BorderRadius.circular(boxRadius_2),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: context.appColors.colorError),
                  borderRadius: BorderRadius.circular(boxRadius_2),
                ),
                errorStyle: const TextStyle(fontSize: 0),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: context.appColors.colorError),
                  borderRadius: BorderRadius.circular(boxRadius_2),
                ),
                hintText: '',
                hintStyle: context.appFonts.labelSmall()?.copyWith(
                    fontSize: 11.0,
                    color: context.appColors.colorTextInputPlaceHolder),
                // isDense: true,
              ),
              style: context.appFonts.bodySmall()?.copyWith(
                  fontSize: 12.0, color: context.appColors.colorLabel),
              keyboardType: TextInputType.number,
              validator: validateContactNo,
              onChanged: handleContactPhoneNoChanged,
              controller: contactPhoneNoController,
              readOnly: false,
            )),
      ],
    );
  }
}
