import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../helper/dimens.dart';

class BuyOnlineDropDownWidget extends StatelessWidget {
  final int? dropDownValue;
  final List<Map<String, dynamic>> dropDownList;
  final Function(int?) onValueChanged;
  final String hintTxt;
  final String errTxt;

  const BuyOnlineDropDownWidget({
    Key? key,
    required this.dropDownValue,
    required this.dropDownList,
    required this.onValueChanged,
    required this.hintTxt,
    required this.errTxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? currentValue = dropDownValue;

    return DropdownButtonFormField2(
      decoration: InputDecoration(
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
          borderSide: BorderSide(color: context.appColors.colorBtnGray),
          borderRadius: BorderRadius.circular(boxRadius_2),
        ),
      ),
      items: dropDownList.map((Map<String, dynamic> item) {
        return DropdownMenuItem(
          value: item['value'],
          child: Text(item['label']),
        );
      }).toList(),
      onChanged: (value) => onValueChanged(value as int?),
      onSaved: (value) => onValueChanged(value as int?),
      validator: (value) {
        if (value == null) {
          return errTxt;
        }
        return null;
      },
      value: currentValue,
      hint: Text(
        hintTxt,
        style: TextStyle(
          fontSize: 12.0,
          color: context.appColors.colorTextInputPlaceHolder,
        ),
      ),
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
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(boxRadius_2),
            bottomRight: Radius.circular(boxRadius_2),
          ),
          color: context.appColors.colorGray,
        ),
      ),
      style: TextStyle(
        fontSize: 12.0,
        color: context.appColors.colorLabel,
      ),
    );
  }
}
