import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:stock_market/core/core.dart';
import 'package:stock_market/src/home/data/model/market/market_model.dart';

class StockHeading extends StatelessWidget {
  const StockHeading({
    super.key,
    required this.market,
  });

  final MarketModel market;

  @override
  Widget build(BuildContext context) {
    final formattedNepse =
        NumberFormat('#,###').format(double.parse(market.todayNepse));
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                formattedNepse,
                style: context.textStyle.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  color: context.theme.contentPrimary,
                ),
              ),
              Row(
                children: [
                  Text(
                    '2.1 Ar',
                    style: context.textStyle.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.theme.contentPrimary,
                    ),
                  ),
                  8.h.horizontalSpace,
                  Image.asset(
                    AppImages.growUp,
                    width: 24,
                    height: 24,
                    color: context.theme.positive,
                  ),
                  6.h.horizontalSpace,
                  Text(
                    '${market.change} (${market.percentChange}%)',
                    style: context.textStyle.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.theme.positive,
                    ),
                  ),
                ],
              ),
              5.v.verticalSpace,
              Text(
                '${'as_of'.localize()} May 09, 2024 03:00 PM',
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
                      'nepse'.localize(),
                      style: context.textStyle.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.theme.contentPrimary,
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
              10.v.verticalSpace,
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
                        color: context.theme.contentPrimary,
                      ),
                      text: '${'market'.localize()} ',
                      children: [
                        TextSpan(
                          text: 'open'.localize(),
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
                '${'closes_in'.localize()} 3 hrs 9 min',
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
