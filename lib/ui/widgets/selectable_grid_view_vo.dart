import 'dart:ui';

class SelectableGridViewVO {
  int id;
  String title;
  String? icon;
  String? descTxt; // eg: Life 'years' text
  bool? isLifePeriod;
  String? paymentId;
  String? periodYrs;

  SelectableGridViewVO({
    required this.title,
    this.icon,
    required this.id,
    this.descTxt,
    this.isLifePeriod,
    this.paymentId,
    this.periodYrs,
  });
}