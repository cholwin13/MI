import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../helper/dimens.dart';

class DropDownBtnWidget extends StatelessWidget {
  final String? dropDownValue;
  final List<String> dropDownList;
  final Function(String?) onValueChanged;
  final String hintTxt;
  final String errTxt;
  final bool buyOnlineStyle;

  const DropDownBtnWidget({super.key,
    required this.dropDownValue,
    required this.dropDownList,
    required this.onValueChanged,
    required this.hintTxt,
    required this.errTxt,
    this.buyOnlineStyle = false,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2(
      decoration: buyOnlineStyle == false
          ? InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: kMarginSmall),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(boxRadius_2),
          borderSide: BorderSide(
            color: context.appColors.colorPrimary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(boxRadius_2),
          borderSide: BorderSide(
            color: context.appColors.colorPrimary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(boxRadius_2),
          borderSide: BorderSide(
            color: context.appColors.colorPrimary,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: context.appColors.colorPrimary),
          borderRadius: BorderRadius.circular(boxRadius_2),
        ),
      )
          : InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: kMarginSmall),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(boxRadius_2),
          borderSide: BorderSide(
            color: context.appColors.colorBtnGray,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(boxRadius_2),
          borderSide: BorderSide(
            color: context.appColors.colorBtnGray,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(boxRadius_2),
          borderSide: BorderSide(
            color: context.appColors.colorError,
          ),
        ),
        errorStyle: const TextStyle(fontSize: 0),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: context.appColors.colorError),
          borderRadius: BorderRadius.circular(boxRadius_2),
        ),
      ),
      items: dropDownList.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      onChanged: onValueChanged,
      // onSaved: (value) => setState(() => dropDownValue = value!),
      onSaved: (value) => onValueChanged(value as String?),
      validator: (value) {
        if (value == null) {
          return errTxt;
        }
        return null;
      },
      value: dropDownValue,
      hint: Text(hintTxt, style: TextStyle(fontSize: 12.0, color: context.appColors.colorTextInputPlaceHolder),),
      isExpanded: true,
      isDense: true,
      iconStyleData: const IconStyleData(
        icon: Icon(
          Icons.keyboard_arrow_down,
        ),
      ),
      buttonStyleData: const ButtonStyleData(
        padding: EdgeInsets.only(right: kMarginCardMedium_2),
      ),
      dropdownStyleData: DropdownStyleData(
        maxHeight: 200,
        elevation: 1,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(boxRadius_2), bottomRight: Radius.circular(boxRadius_2)),
          color: context.appColors.colorGray,
        ),
      ),
      style: TextStyle(
          fontSize: 12.0,
          color: context.appColors.colorLabel
      ),
    );
  }
}