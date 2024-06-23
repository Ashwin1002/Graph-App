import 'package:flutter/material.dart';
import 'package:stock_market/core/core.dart';

class BottomSheetAnchor extends StatelessWidget {
  const BottomSheetAnchor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 4.5.v,
            width: 45.h,
            decoration: CustomDecoration.containerDecoration(
              context,
              color: context.theme.contentPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
