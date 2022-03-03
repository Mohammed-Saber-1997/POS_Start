// import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SizeConfig {
  static double? _screenWidth;
  static double? _screenHeight;

  static double? heightMultiplier;
  static double? widthMultiplier;

  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  void init(BoxConstraints constraints, Orientation orientation) {
    _screenWidth = constraints.maxWidth;
    _screenHeight = constraints.maxHeight;

    if (orientation == Orientation.portrait) {
      // _screenWidth = constraints.maxWidth;
      // _screenHeight = constraints.maxHeight;
      isPortrait = true;
      // if (_screenWidth! < 450) {
      //   isMobilePortrait = true;
      // }
    } else {
      // _screenWidth = constraints.maxHeight;
      // _screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }

    heightMultiplier = _screenHeight! / 100;
    widthMultiplier = _screenWidth! / 100;

    print('Height = $heightMultiplier');
    print('Width = $widthMultiplier');
  }
}
