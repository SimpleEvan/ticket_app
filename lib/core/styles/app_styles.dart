import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = Colors.black12;

  static TextStyle h1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle h2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle h3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  static TextStyle h4 =
      const TextStyle(fontSize: 12, fontWeight: FontWeight.w500);

  static SizedBox defaultHeightSpacing = const SizedBox(
    height: 40,
  );

  static SizedBox smallHeightSpacing = const SizedBox(
    height: 20,
  );

  static Color ticketUpperColor = const Color(0xfcBC242C);
  static Color ticketBottomColor = const Color(0xfc015E32);
}
