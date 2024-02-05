import 'package:flutter/material.dart';

enum Languages {
  english(Locale('en'), 'english'),
  myanmar(Locale('my'), 'myanmar');

  const Languages(this.locale, this.title);

  final Locale locale;
  final String title;
}
