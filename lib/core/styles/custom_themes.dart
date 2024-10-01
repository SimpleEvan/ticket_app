import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';

abstract class CustomTheme {
  Color get bgColor1;
  Color get bgColor2;
  Color get textColor1;
  Color get textColor2;
  double get borderRadius;
}

class MoroccanTheme implements CustomTheme {
  @override
  Color get bgColor1 => const Color(0xfcBC242C);
  @override
  Color get bgColor2 => const Color(0xfc015E32);
  @override
  Color get textColor1 => Colors.white;
  @override
  Color get textColor2 => Colors.white;
  @override
  double get borderRadius => 21;
}

class CleanTheme implements CustomTheme {
  @override
  Color get bgColor1 => Colors.white;
  @override
  Color get bgColor2 => Colors.white70;
  @override
  Color get textColor1 => Colors.black;
  @override
  Color get textColor2 => Styles.primaryColor;
  @override
  double get borderRadius => 0;
}
