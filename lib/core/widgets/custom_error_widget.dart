import 'package:flutter/material.dart';
import 'package:stock_market/core/core.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          message,
          style: context.textStyle.bodyMedium?.copyWith(
            color: context.theme.contentPrimary,
          ),
        ),
      ),
    );
  }
}
