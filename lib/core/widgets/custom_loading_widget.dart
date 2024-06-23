import 'package:flutter/material.dart';
import 'package:stock_market/core/core.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: context.theme.positive,
        strokeCap: StrokeCap.round,
      ),
    );
  }
}
