import 'package:flutter/material.dart';
import '../../cour/app_prefs.dart';

class ColorManager {
  // Dark Colors
  static const Color black = Color(0xFF222634);
  static Color lightBackground = const Color(0xFFeef0f6);

  // Light Colors
  static const Color white = Color(0xFFfafafa);
  static Color darkBackground = const Color(0xFF0d1724);
  static Color darkBackground2 = const Color(0xFF1c2030);

  static Color grey = const Color(0xFF9ea2a7);
  static Color blue = const Color(0xFF413ac6);
  static Color lightBlue = const Color(0xFFe7f7ff);
  static Color red = const Color(0xFFff0808);
  static Color orange = const Color(0xFFf27c3a);
  static Color cyan = const Color(0xFF06c2bc);
  static Color purple = const Color(0xFF514bc3);
  static Color green = const Color(0x3b47b83b);
  static Color darkRed = const Color(0x3ba6343c);

  static Color greyWithOpacity = "#3b9ea2a7".colorFromHex;

  // App Default Colors
  static Color get defaultTextColor => isDarkMode ? white : black;
  static Color get reversedTextColor => isDarkMode ? black : white;
  static Color get defaultSidePartsColor =>
      isDarkMode ? darkBackground : lightBackground;
  static Color get defaultBackgroundColor =>
      isDarkMode ? darkBackground2 : lightBackground;
  static Color get reversedBackgroundColor =>
      isDarkMode ? ColorManager.lightBackground : ColorManager.darkBackground2;

  // Login Colors
  static Color get loginTextFieldColor =>
      isDarkMode ? Colors.white10 : ColorManager.lightBackground;
  static Color get loginNumbersColor =>
      isDarkMode ? Colors.grey : Colors.black54;
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
