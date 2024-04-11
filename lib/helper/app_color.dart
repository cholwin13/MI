import 'package:flutter/material.dart';

// const primaryColor = Color.fromRGBO(30, 70, 144, 1.0);
// const secondaryColor = Color.fromRGBO(228, 228, 228, 1.0);
// const goldColor = Color.fromRGBO(255, 239, 0, 1.0);
// const whiteColor = Color.fromRGBO(255, 255, 255, 1.0);
// const grayColor = Color.fromRGBO(229, 231, 233, 1.0);
// //const GRAY_COLOR = Color.fromRGBO(250, 250, 250, 1.0);
// //const GRAY_COLOR = Color.fromRGBO(189, 189, 189, 1.0);
// const labelColor = Color.fromRGBO(79, 79, 79, 1.0);
// const textInputPlaceHolderColor = Color.fromRGBO(130, 130, 130, 1.0);
// const errorColor = Color.fromRGBO(245, 0, 0, 1.0);
// const buttonOutlineColor = Color.fromRGBO(0, 0, 0, 1.0);
// const normalTextColor = Color.fromRGBO(0, 0, 0, 1.0);

const colorAccentLight = Color(0xFF1EC5A2);
const colorAccentDark = Color(0xFF1EC5A2);

const colorPrimaryLight = Color(0xFF1E4690);
const colorPrimaryDark = Color(0xFF1E4690);

const colorSecondaryLight = Color(0xFFe4e4e4);
const colorSecondaryDark = Color(0xFFe4e4e4);

const colorGoldLight = Color(0xFFffef00);
const colorGoldDark = Color(0xFFffef00);

const colorWhiteLight = Color(0xFFFFFFFF);
const colorWhiteDark = Color(0xFFFFFFFF);

const colorGrayLight = Color(0xFFE5E7E9);
const colorGrayDark = Color(0xFFE5E7E9);

const colorLabelLight = Color(0xFF4F4F4F);
const colorLabelDark = Color(0xFF4F4F4F);

const colorTextInputPlaceHolderLight = Color(0xFF828282);
const colorTextInputPlaceHolderDark = Color(0xFF828282);

const colorErrorLight = Color(0xFFF50000);
const colorErrorDark = Color(0xFFF50000);

const colorBtnOutlineLight = Color(0xFF000000);
const colorBtnOutlineDark = Color(0xFF000000);

const colorBtnGrayLight = Color(0xFFBDBDBD);
const colorBtnGrayDark = Color(0xFFBDBDBD);

const colorDatePickerLight = Color(0xFF208577);
const colorDatePickerDark = Color(0xFF208577);

class AppColors {
  Color colorPrimary;
  Color colorSecondary;
  Color colorGold;
  Color colorWhite;
  Color colorGray;
  Color colorLabel;
  Color colorTextInputPlaceHolder;
  Color colorError;
  Color colorBtnOutline;
  Color colorBtnGray;
  Color colorDatePicker;

  AppColors(
      this.colorPrimary,
      this.colorSecondary,
      this.colorGold,
      this.colorWhite,
      this.colorGray,
      this.colorLabel,
      this.colorTextInputPlaceHolder,
      this.colorError,
      this.colorBtnOutline,
      this.colorBtnGray,
      this.colorDatePicker
      );
}

final _appColorLight = AppColors(
    colorPrimaryLight,
    colorSecondaryLight,
    colorGoldLight,
    colorWhiteLight,
    colorGrayLight,
    colorLabelLight,
    colorTextInputPlaceHolderLight,
    colorErrorLight,
    colorBtnOutlineLight,
    colorBtnGrayLight,
    colorDatePickerLight
);

final _appColorDark = AppColors(
    colorPrimaryDark,
    colorSecondaryDark,
    colorGoldDark,
    colorWhiteDark,
    colorGrayDark,
    colorLabelDark,
    colorTextInputPlaceHolderDark,
    colorErrorDark,
    colorBtnOutlineDark,
    colorBtnGrayDark,
    colorDatePickerDark
);

extension AppTheme on ThemeData {
  AppColors get appColors => brightness == Brightness.light ? _appColorLight : _appColorDark;
}

extension ContextThemeExtension on BuildContext {
  bool get isLightTheme => Theme.of(this).brightness == Brightness.light;

  AppColors get appColors => Theme.of(this).appColors;
}