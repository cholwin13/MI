import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../helper/dimens.dart';

class WidgetDatePickerTextFormField extends StatefulWidget {
  final TextEditingController dateController;
  final TextEditingController? ageController;
  ///For Student Life term process
  final TextEditingController? termController;
  ///For Personal Accident (Buy Online process)
  final TextEditingController? endDateController;
  final String? Function(String?) validate;
  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final String hintTxt;
  ///Style for Buy online Form
  final bool buyOnlineStyle;
  ///travel insurance (Buy Online)
  final Function(DateTime)? onDateSelected;

  const WidgetDatePickerTextFormField({super.key,
    required this.dateController,
    this.ageController,
    this.termController,
    this.endDateController,
    required this.validate,
    required this.initialDate,
    required this.firstDate,
    required this.lastDate,
    required this.hintTxt,
    this.buyOnlineStyle = false,
    this.onDateSelected
  });

  @override
  State<WidgetDatePickerTextFormField> createState() => _WidgetDatePickerTextFormFieldState();
}

class _WidgetDatePickerTextFormFieldState extends State<WidgetDatePickerTextFormField> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.dateController,
      decoration: widget.buyOnlineStyle == false
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
          hintText: widget.hintTxt,
          hintStyle: TextStyle(
            fontSize: 12.0,
            color: context.appColors.colorTextInputPlaceHolder,
          ),
          isDense: true,
          suffixIcon: Icon(Icons.date_range, color: context.appColors.colorPrimary, size: 25,)
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
          hintText: widget.hintTxt,
          hintStyle: TextStyle(
            fontSize: 12.0,
            color: context.appColors.colorTextInputPlaceHolder,
          ),
          isDense: true,
          suffixIcon: Icon(Icons.date_range, color: context.appColors.colorPrimary, size: 25,)
      ),
      style: context.appFonts.bodySmall()?.copyWith(
          fontSize: 12.0,
          color: context.appColors.colorLabel
      ),
      readOnly: true,
      // enabled: enable,
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: widget.initialDate,
          firstDate: widget.firstDate,
          lastDate: widget.lastDate,
          cancelText: 'CANCEL',
          helpText: '',
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                datePickerTheme: DatePickerThemeData(
                  headerBackgroundColor:
                  context.appColors.colorDatePicker,
                  headerForegroundColor: Colors.white,
                  cancelButtonStyle: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  confirmButtonStyle: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(boxRadius_2), // Adjust the radius as needed
                  ),
                ),
              ),
              child: child!,
            );
          },
        );
        if (pickedDate != null) {
          setState(() {

            DateTime calculateEndDate = pickedDate.add(const Duration(days: 90));
            widget.endDateController?.text = DateFormat('dd-MM-yyyy').format(calculateEndDate);
          });

          if (widget.onDateSelected != null) {
            widget.onDateSelected!(pickedDate);
          }

          String formatDate = DateFormat('dd-MM-yyyy').format(pickedDate);

          widget.dateController.text = formatDate;
          widget.ageController?.text = _calculateAge(pickedDate).toString();
          widget.termController?.text = (20 - _calculateAge(pickedDate)).toString();
        }
      },
      validator: widget.validate,
    );
  }

  _calculateAge(DateTime pickedDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - pickedDate.year;

    bool hasBirthdayPassed = pickedDate.month < currentDate.month ||
        (pickedDate.month == currentDate.month && pickedDate.day < currentDate.day);

    if (hasBirthdayPassed) {
      age++;
    }

    return age;
  }
}