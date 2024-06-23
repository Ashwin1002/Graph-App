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
              onZooming: (zoomingArgs) {
                print(zoomingArgs);
              },
              primaryXAxis: const DateTimeAxis(
                isVisible: false,
              ),
              primaryYAxis: const NumericAxis(
                isVisible: false,
              ),
              onTrackballPositionChanging: (trackballArgs) {
                // print('${trackballArgs.chartPointInfo.chartPoint}');
              },
              trackballBehavior: TrackballBehavior(
                  enable: true,
                  activationMode: ActivationMode.singleTap,
                  tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
                  tooltipAlignment: ChartAlignment.near,
                  tooltipSettings: InteractiveTooltip(
                    canShowMarker: false,
                    textStyle: context.textStyle.bodyMedium?.copyWith(
                      color: context.theme.backgroundSecondary,
                    ),
                  )
                  // builder: (context, trackballDetails) {
                  //   return Container(
                  //     width: 70,
                  //     decoration: const BoxDecoration(
                  //       color: Color.fromRGBO(66, 244, 164, 1),
                  //     ),
                  //     child: Text(
                  //       '${trackballDetails.groupingModeInfo?.points.first.x}',
                  //     ),
                  //   );
                  // },
                  ),
              series: <CartesianSeries>[
                // Renders line chart
                LineSeries<StockModel, DateTime>(
                  dataSource: stocks,
                  xValueMapper: (StockModel data, _) => data.date,
                  yValueMapper: (StockModel data, _) => data.index,
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
