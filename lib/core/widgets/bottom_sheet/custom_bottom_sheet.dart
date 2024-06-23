// double sheetHeight = 0;

import 'package:flutter/material.dart';
import 'package:stock_market/core/core.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
    required this.title,
    required this.children,
    this.onButtonPressed,
    this.topPadding,
    this.leftPadding,
  });

  final String title;
  final List<Widget> children;
  final VoidCallback? onButtonPressed;

  final double? topPadding;
  final double? leftPadding;

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   final renderBox = context.findRenderObject() as RenderBox;

    //   final componentPosition = renderBox.localToGlobal(Offset.zero);

    //   sheetHeight = context.deviceHeight - componentPosition.dy;
    // });

    return Container(
      padding: EdgeInsets.only(
        bottom: context.viewInsets.bottom,
      ),
      // height: sheetHeight,
      decoration: CustomDecoration.containerDecoration(
        context,
        color: context.theme.backgroundPrimary,
        borderRadius: BorderRadius.vertical(
          top: AppScales.largeRadius,
        ),
      ),
      constraints: BoxConstraints(
        maxHeight: context.deviceHeight * .8,
        minHeight: 0,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const BottomSheetAnchor(),
            BottomSheetHeader(
              title: title,
              topPadding: topPadding,
            ),
            Flexible(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                    left: leftPadding ?? 16.h, right: 16.h, bottom: 16.v),
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: children,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
