import 'package:flutter/material.dart';
import 'package:stock_market/core/core.dart';

class CustomRadioCard extends StatelessWidget {
  const CustomRadioCard({
    super.key,
    this.isActive = false,
    required this.dayType,
    this.onTap,
  });

  final bool isActive;
  final StockType dayType;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 18.h),
        decoration: CustomDecoration.containerDecoration(
          context,
          color: !isActive
              ? AppColors.transparent
              : context.theme.backgroundSuccess,
          borderRadius: BorderRadius.all(AppScales.extraLargeRadius),
        ),
        child: Text(
          dayType.name,
          style: context.textStyle.bodySmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
