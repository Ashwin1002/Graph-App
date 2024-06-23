import 'package:flutter/material.dart';
import 'package:stock_market/core/core.dart';

class BottomSheetHeader extends StatelessWidget {
  const BottomSheetHeader({
    super.key,
    required this.title,
    this.topPadding,
  });

  final String title;

  final double? topPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title.isNotEmpty) ...[
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              right: 12.h,
              bottom: 16.v,
            ),
            child: Text(
              title,
              style: context.textStyle.bodyLarge?.copyWith(
                fontWeight: FontWeight.w500,
                color: context.theme.contentPrimary,
              ),
            ),
          ),
          Divider(
            color: context.theme.borderOpaque,
            thickness: 1.5.adaptSize,
          ),
          Container(
            height: topPadding ?? 8.v,
            decoration: CustomDecoration.containerDecoration(
              context,
              borderRadius: BorderRadius.zero,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [.4, .1],
                colors: [
                  context.theme.backgroundPrimary!.withOpacity(.6),
                  context.theme.backgroundPrimary!.withOpacity(.5),
                ],
              ),
            ),
          )
        ],
      ],
    );
  }
}
