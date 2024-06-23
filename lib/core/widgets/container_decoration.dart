import 'package:flutter/material.dart';
import 'package:stock_market/core/core.dart';

class CustomDecoration {
  const CustomDecoration._();

  static containerDecoration(
    BuildContext context, {
    Color? color,
    BorderRadius? borderRadius,
    BoxBorder? border,
    BoxShape? shape,
    Gradient? gradient,
    DecorationImage? decorationImage,
    List<BoxShadow>? boxShadow,
  }) {
    return BoxDecoration(
      color: color ?? context.theme.backgroundPrimary,
      borderRadius: shape == BoxShape.circle
          ? null
          : borderRadius ?? BorderRadius.circular(12.adaptSize),
      border: border,
      shape: shape ?? BoxShape.rectangle,
      gradient: gradient,
      image: decorationImage,
      boxShadow: boxShadow,
    );
  }
}
