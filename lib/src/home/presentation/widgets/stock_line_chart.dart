import 'package:flutter/material.dart';
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
      child: SfCartesianChart(
        primaryXAxis: const DateTimeAxis(),
        primaryYAxis: const NumericAxis(
          isVisible: true,
          minimum: 1800,
        ),
        series: <CartesianSeries>[
          // Renders line chart
          LineSeries<StockModel, DateTime>(
            dataSource: stocks,
            xValueMapper: (StockModel data, _) => data.date,
            yValueMapper: (StockModel data, _) => data.point,
          ),
        ],
      ),
    );
  }
}
