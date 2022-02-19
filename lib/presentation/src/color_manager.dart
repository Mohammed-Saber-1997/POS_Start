import 'package:flutter/material.dart';

class ColorManager {
  static Color black = Color(0xFF222634);
  static Color white = Color(0xFFfafafa);
  static Color grey = Color(0xFF9ea2a7);
  static Color red = Color(0xFFff0808);
  static Color orange = Color(0xFFf27c3a);
  static Color cyan = Color(0xFF06c2bc);
  static Color purple = Color(0xFF514bc3);
  static Color green = Color(0x3b47b83b);
  static Color dark_red = Color(0x3ba6343c);

  static Color greyWithOpacity = "#3b9ea2a7".colorFromHex;

  static Color lightBackground = Color(0xFFeef0f6);
  static Color darkBackground = Color(0xFF0d1724);
  static Color darkBackground2 = Color(0xFF1c2030);
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
