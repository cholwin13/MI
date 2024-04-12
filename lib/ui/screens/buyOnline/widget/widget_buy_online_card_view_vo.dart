import 'package:flutter/material.dart';

class BuyOnlineCardViewVO {
  final String icon;
  final String title;
  final Widget? childWidget;
  final bool lock;

  BuyOnlineCardViewVO(
    this.icon,
    this.title,
    this.childWidget,
      this.lock,
  );
}
