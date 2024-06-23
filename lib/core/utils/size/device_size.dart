import 'package:flutter/material.dart';
import 'package:stock_market/core/core.dart';

class Device {
  /// Device's BoxConstraints
  static late BoxConstraints boxConstraints;

  /// Device's Height
  static late double height;

  /// Device's Width
  static late double width;

  static late bool isPortrait;

  /// Sets the Screen's size,
  /// `BoxConstraints`, `Height`, and `Width`
  static void setScreenSize(
    BuildContext context,
    BoxConstraints constraints,
  ) {
    boxConstraints = constraints;

    // Sets screen width and height
    width = boxConstraints.maxWidth;
    height = boxConstraints.maxHeight;

    isPortrait = context.isPortrait;
  }
}
