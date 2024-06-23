import 'package:flutter/material.dart';

enum AppearanceType {
  lightMode('Light Mode', Icons.sunny, ThemeMode.light),
  darkMode('Dark Mode', Icons.nightlight, ThemeMode.dark),
  systemDefault('System Default', Icons.wb_cloudy, ThemeMode.system);

  const AppearanceType(this.label, this.iconData, this.themeMode);

  final String label;
  final IconData iconData;
  final ThemeMode themeMode;

  @override
  toString() => 'AppearanceType.$label';
}
