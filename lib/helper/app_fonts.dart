
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

enum FontFamily {
  poppins('Poppins'),
  pyidaungsu('Pyidaungsu');

  const FontFamily(this.value);

  final String value;
}

class AppFontsStyle {

  const AppFontsStyle(this.context);

  final BuildContext context;

  TextStyle? displayLarge(){
    return Theme.of(context).textTheme.displayLarge?.copyWith(
      fontFamily: context.isEnglish ? FontFamily.poppins.value : FontFamily.pyidaungsu.value,
    );
  }

  TextStyle? displayMedium(){
    return Theme.of(context).textTheme.displayMedium?.copyWith(
      fontFamily: context.isEnglish ? FontFamily.poppins.value : FontFamily.pyidaungsu.value,
    );
  }

  TextStyle? displaySmall(){
    return Theme.of(context).textTheme.displaySmall?.copyWith(
        fontFamily: context.isEnglish ? FontFamily.poppins.value : FontFamily.pyidaungsu.value
    );
  }

  TextStyle? headlineLarge() {
    return Theme.of(context).textTheme.headlineLarge?.copyWith(
      fontFamily: FontFamily.pyidaungsu.value,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle? headlineMedium() {
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
      fontFamily: context.isEnglish ? FontFamily.poppins.value : FontFamily.pyidaungsu.value,
      fontSize: 19,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle? headlineSmall() {
    return Theme.of(context).textTheme.headlineSmall?.copyWith(
      fontFamily: FontFamily.pyidaungsu.value,
      fontSize: 16,
      // letterSpacing: 0.5,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle? tableTitle() {
    return Theme.of(context).textTheme.titleLarge?.copyWith(
        fontFamily: FontFamily.pyidaungsu.value,
        fontSize: 15,
        fontWeight: FontWeight.w700,
        height: 1.7,
        letterSpacing: 0.5,
        color: context.appColors.colorWhite);
  }

  TextStyle? tableBody() {
    return Theme.of(context).textTheme.titleLarge?.copyWith(
        fontFamily: FontFamily.pyidaungsu.value,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 1.7,
        letterSpacing: 0.5);
  }

  TextStyle? titleLarge() {
    return Theme.of(context).textTheme.titleLarge?.copyWith(
      fontFamily: FontFamily.poppins.value,
      fontSize: 18,
      fontWeight: FontWeight.w700,
      height: 1.5,
    );
  }

  TextStyle? titleMedium() {
    return Theme.of(context).textTheme.titleMedium?.copyWith(
        fontFamily: context.isEnglish ? FontFamily.poppins.value : FontFamily.pyidaungsu.value,
        height: 1.5,
        color: Colors.white);
  }

  TextStyle? titleSmall() {
    return Theme.of(context).textTheme.titleSmall?.copyWith(
        fontFamily: context.isEnglish ? FontFamily.poppins.value : FontFamily.pyidaungsu.value,
        color: context.appColors.colorPrimary
    );
  }

  TextStyle? labelLarge() {
    return Theme.of(context).textTheme.labelLarge?.copyWith(
        fontFamily: context.isEnglish ? FontFamily.poppins.value : FontFamily.pyidaungsu.value,
        color: context.appColors.colorWhite,
        fontWeight: FontWeight.w600,
        fontSize: 16);
  }

  TextStyle? labelMedium() {
    return Theme.of(context).textTheme.labelMedium?.copyWith(
        fontFamily: context.isEnglish ? FontFamily.poppins.value : FontFamily.pyidaungsu.value,
        color: context.appColors.colorWhite,
        fontWeight: FontWeight.w400,
        fontSize: 14);
  }

  TextStyle? labelSmall() {
    return Theme.of(context).textTheme.labelSmall?.copyWith(
      fontFamily: context.isEnglish ? FontFamily.poppins.value : FontFamily.pyidaungsu.value,
    );
  }

  TextStyle? bodyLarge() {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
      fontFamily: FontFamily.pyidaungsu.value,
    );
  }

  TextStyle? bodyMedium() {
    return Theme.of(context).textTheme.bodyMedium?.copyWith(
      fontFamily: context.isEnglish ? FontFamily.poppins.value : FontFamily.pyidaungsu.value,
    );
  }

  TextStyle? bodySmall() {
    return Theme.of(context).textTheme.bodySmall?.copyWith(
      fontFamily: context.isEnglish ? FontFamily.poppins.value : FontFamily.pyidaungsu.value,
    );
  }

  TextStyle? calendarTitle() {
    return Theme.of(context).textTheme.titleMedium?.copyWith(fontFamily: FontFamily.poppins.value, fontSize: 18);
  }

  TextStyle? calendarCell() {
    return Theme.of(context).textTheme.bodyMedium?.copyWith(fontFamily: FontFamily.pyidaungsu.value, fontSize: 16);
  }

  TextStyle? buttonTextLarge() {
    return Theme.of(context).textTheme.headlineLarge?.copyWith(
      fontFamily: FontFamily.poppins.value,
      fontSize: 18,
      // letterSpacing: 0.8,
      // fontWeight: FontWeight.w500,
    );
  }

  TextStyle? buttonTextMedium() {
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
      fontFamily: FontFamily.poppins.value,
      fontSize: 14,
    );
  }

  TextStyle? buttonTextSmall() {
    return Theme.of(context).textTheme.headlineSmall?.copyWith(
      fontFamily: FontFamily.poppins.value,
      fontSize: 12,
    );
  }
}

extension ContextLocaleExtension on BuildContext{
  bool get isEnglish => locale == const Locale('en');

  AppFontsStyle get appFonts => AppFontsStyle(this);
}