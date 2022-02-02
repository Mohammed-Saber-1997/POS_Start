import 'package:flutter/material.dart';

class ColorManager {
  static Color white = "#FFFFFF".colorFromHex;
  static Color black = "#000000".colorFromHex;
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}

extension HexColorFromString on String {
  Color get colorFromHex {
    return HexColor.fromHex(this);
  }
}
