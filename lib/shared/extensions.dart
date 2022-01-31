import 'dart:math';

import 'package:flutter/material.dart';

/// +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
/// |  [StringExtension]  String extensions on [String] class                                 |
/// +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
extension StringExtension on String {
  ///
  /// [&]
  /// example:
  /// print('First' & 'other')
  ///
  String operator &(String other) => '$this $other';

  ///
  /// [isIP]
  /// check if the string is valid IP.
  ///
  bool get isIP {
    return RegExp(
      r"^(?!0)(?!.*\.$)((1?\d?\d|25[0-5]|2[0-4]\d)(\.|$)){4}$",
      caseSensitive: false,
      multiLine: false,
    ).hasMatch(this);
  }

  /// example:
  ///
  /// print('Numeric  ${'77'.isNumeric}'); >>> true
  /// [isNumeric] can pe desimal numbers.
  ///
  bool get isNumeric => RegExp(r'^[0-9]\d*(\.\d+)?$').hasMatch(this);

  bool get isNegativeNumeric => RegExp(r'^-\d*\.?\d+$').hasMatch(this);

  bool get isPositiveNumeric => RegExp(r'^\d*\.?\d+$').hasMatch(this);

  bool get isLetter => RegExp("[A-Za-z]").hasMatch(this);

  /// print('?'.isSymbol()); >> true >> ?><_)(*&^%$#@!
  bool isSymbol() {
    const String pattern = "[`~!@#\$%^&*()_\-+=<>?:\"{}|,.//\/;'\\[\]·~！@#￥%……&*（）——\-+={}|《》？：“”【】、；‘’，。、]";
    for (int i = 0; i < this.length; i++) {
      if (pattern.contains(this[i])) {
        return true;
      }
    }
    return false;
  }
}

/// +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
/// |  [ObjectExtension]  Object extensions on [Object] class                                 |
/// +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
extension ObjectExtension on Object? {
  bool get isNullObject => this == null ? true : false;
  bool get isNotNullObject => this != null ? true : false;
}

/// +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
/// |  [SizeBoxExtension]  double extensions  on [double] class                               |
/// +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
extension SizeBoxExtension on double {
  /// [SizedBox] 20.widthBox
  Widget get widthBox => SizedBox(width: this);

  /// [SizedBox] 20.heightBox
  Widget get heightBox => SizedBox(height: this);
}

/// +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
/// |  [WidgetExtension]  Widget extensions  on [Widget] class                                |
/// +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
extension WidgetExtension on Widget {
  /// [Padding] Text('Mohamed').paddingAll(50)
  Widget addPaddingAll(double padding) => Padding(
        padding: EdgeInsets.all(padding),
        child: this,
      );

  Widget addPaddingVertical(double padding) => Padding(
        padding: EdgeInsets.symmetric(vertical: padding),
        child: this,
      );

  Widget addPaddingHorizontal(double padding) => Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: this,
      );

  Widget addPaddingSymmetric({required double horizontal, required double vertical}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );

  ///
  /// add onTap for any widget
  ///
  Widget onTap(
    Function? function, {
    BorderRadius? borderRadius,
    Color? splashColor,
    Color? hoverColor,
    Color? highlightColor,
  }) {
    return InkWell(
      onTap: function as void Function()?,
      borderRadius: borderRadius,
      child: this,
      splashColor: splashColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
    );
  }
}

/// +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
/// |  [NumExtension]  num extensions  on [num] class                                         |
/// +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
extension NumExtension on num {
  double get round3 {
    num mod = pow(10.0, 3);
    return ((this * mod).round().toDouble() / mod);
  }

  double percentageOf(num p) {
    return (p / 100) * this;
  }

  double totalWithOutPercentageDiscount(num p) {
    return this - ((this / 100) * p);
  }
}
