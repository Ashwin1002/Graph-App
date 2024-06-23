import 'package:flutter/material.dart';
import 'package:stock_market/core/core.dart';

Future<T?> customModalBottomSheet<T>(
  BuildContext context, {
  required Widget child,
  VoidCallback? onDragdownPressed,
  bool? isDimissable,
}) {
  return showModalBottomSheet<T>(
    context: context,
    // barrierColor: context.theme.backgroundPrimary?.withOpacity(.1),
    isScrollControlled: true,
    backgroundColor: AppColors.transparent,
    isDismissible: isDimissable ?? true,
    builder: (context) => _buildFilterSheet(
      context,
      child: child,
      onDragdownPressed: onDragdownPressed,
    ),
  );
}

Widget _makeDismissible(
  BuildContext context, {
  required Widget child,
  VoidCallback? onDragDownPressed,
}) =>
    GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.pop(context);
        if (onDragDownPressed == null) return;
        onDragDownPressed();
      },
      child: child,
    );

Widget _buildFilterSheet(
  BuildContext context, {
  required Widget child,
  VoidCallback? onDragdownPressed,
}) =>
    _makeDismissible(context,
        child: child, onDragDownPressed: onDragdownPressed);
