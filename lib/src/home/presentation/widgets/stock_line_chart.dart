import 'package:flutter/material.dart';
import 'package:stock_market/core/core.dart';
import 'package:stock_market/src/home/data/model/stock/stock_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StockLineChart extends StatelessWidget {
  const StockLineChart({
    super.key,
    required this.stocks,
  });

  final List<StockModel> stocks;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 300.0,
            child: SfCartesianChart(
              primaryXAxis: const DateTimeAxis(
                isVisible: false,
              ),
              primaryYAxis: const NumericAxis(
                isVisible: false,
              ),
              series: <CartesianSeries>[
                // Renders line chart
                LineSeries<StockModel, DateTime>(
                  dataSource: stocks,
                  xValueMapper: (StockModel data, _) => data.date,
                  yValueMapper: (StockModel data, _) => data.close,
                  color: context.theme.positive,
                ),
              ],
            ),
          ),
          CustomDivider(
            color: context.theme.contentSecondary!.withOpacity(.2),
            height: 1.5,
          ),
        ],
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.height = 1,
    this.color = AppColors.contentSecondaryLight,
  });
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 4.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}
