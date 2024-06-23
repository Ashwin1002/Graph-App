import 'package:flutter/material.dart';
import 'package:stock_market/core/core.dart';

class StockHeading extends StatelessWidget {
  const StockHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1,966.23',
                style: context.textStyle.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              Row(
                children: [
                  Text(
                    '2.1 Ar',
                    style: context.textStyle.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.48,
                    ),
                  ),
                  10.h.horizontalSpace,
                  Icon(
                    Icons.line_axis,
                    color: context.theme.positive!,
                  ),
                  8.h.horizontalSpace,
                  Text(
                    '5.63 (0.29%)',
                    style: context.textStyle.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: context.theme.positive,
                    ),
                  ),
                ],
              ),
              5.v.verticalSpace,
              Text(
                'As of May 09, 2024 03:00 PM',
                style: context.textStyle.labelMedium?.copyWith(
                  color: context.theme.contentSecondary,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(8.adaptSize) +
                    EdgeInsets.only(left: 12.h, right: 8.h),
                decoration: CustomDecoration.containerDecoration(
                  context,
                  color: context.theme.backgroundSecondary,
                  borderRadius: BorderRadius.all(
                    AppScales.extraLargeRadius,
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      'NEPSE',
                      style: context.textStyle.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    5.h.horizontalSpace,
                    Icon(
                      Icons.arrow_drop_down,
                      color: context.theme.contentPrimary,
                    )
                  ],
                ),
              ),
              5.v.verticalSpace,
              Row(
                children: [
                  Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    decoration: CustomDecoration.containerDecoration(
                      context,
                      color: context.theme.positive,
                      shape: BoxShape.circle,
                    ),
                  ),
                  5.h.horizontalSpace,
                  RichText(
                    text: TextSpan(
                      style: context.textStyle.labelMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        letterSpacing: .48,
                      ),
                      text: 'Market ',
                      children: [
                        TextSpan(
                          text: 'OPEN',
                          style: context.textStyle.labelMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: context.theme.positive,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              5.v.verticalSpace,
              Text(
                'Closes in 3 hrs 9 min',
                style: context.textStyle.labelMedium?.copyWith(
                  color: context.theme.contentSecondary,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
