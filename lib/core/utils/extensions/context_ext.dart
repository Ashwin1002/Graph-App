import 'package:flutter/material.dart';

const Duration _duration = Duration(milliseconds: 350);
const Curve _curve = Curves.easeInOut;

extension BuildContextExtension on BuildContext {
  Size get size => MediaQuery.sizeOf(this);

  double get deviceWidth => MediaQuery.sizeOf(this).width;
  double get deviceHeight => MediaQuery.sizeOf(this).height;

  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);

  TextTheme get textStyle => Theme.of(this).textTheme;

  void get popLoading => Navigator.of(this).pop();

  bool get isDarkMode =>
      View.of(this).platformDispatcher.platformBrightness == Brightness.dark;

  bool get isLightMode =>
      View.of(this).platformDispatcher.platformBrightness == Brightness.light;

  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;

  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;

  Future<void> scrollToEnsureVisible() =>
      Scrollable.ensureVisible(this, duration: _duration, curve: _curve);

  Offset? getGlobalPos([Offset offset = Offset.zero]) {
    final renderBox = findRenderObject() as RenderBox?;
    if (renderBox?.hasSize == true) {
      return renderBox?.localToGlobal(offset);
    }
    return null;
  }

  Size? getSize() {
    final renderBox = findRenderObject() as RenderBox?;
    if (renderBox?.hasSize == true) {
      return renderBox?.size;
    }
    return null;
  }
}
