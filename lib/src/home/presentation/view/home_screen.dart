import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_market/core/core.dart';
import 'package:stock_market/src/home/presentation/blocs/home/home_bloc.dart';
import 'package:stock_market/src/home/presentation/widgets/widgets.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc()..add(const FetchStocks()),
      child: const HomeScreenView(),
    );
  }
}

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  // TooltipBehavior? _tooltipBehavior;
  @override
  void initState() {
    // _tooltipBehavior =
    //     TooltipBehavior(enable: true, header: '', canShowMarker: false);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (p, c) =>
          p.status != c.status ||
          p.activeStockType != c.activeStockType ||
          p.dayStocks != c.dayStocks ||
          p.monthStocks != c.monthStocks ||
          p.hourStocks != c.hourStocks ||
          p.minuteStocks != c.minuteStocks ||
          p.yearlyStocks != c.yearlyStocks,
      builder: (context, state) {
        return state.status.when(
          loading: () => const CustomLoadingWidget(),
          success: () => _buildStockChartView(state),
          failure: () => CustomErrorWidget(message: state.message),
        );
      },
    );
  }

  Widget _buildStockChartView(HomeState state) {
    var stocks = state.activeStockType.isMinutes
        ? state.minuteStocks
        : state.activeStockType.isHours
            ? state.hourStocks
            : state.activeStockType.isdays
                ? state.dayStocks
                : state.activeStockType.isMonths
                    ? state.monthStocks
                    : state.yearlyStocks;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StockHeading(market: state.marketModel),
        StockLineChart(
          stocks: stocks,
        ),
        BlocBuilder<HomeBloc, HomeState>(
          buildWhen: (previous, current) =>
              previous.activeStockType != current.activeStockType,
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Wrap(
                runSpacing: 8.v,
                spacing: 8.h,
                children: List.generate(
                  StockType.values.length,
                  (index) {
                    var dayType = StockType.values[index];
                    return CustomRadioCard(
                      dayType: dayType,
                      isActive: state.activeStockType == dayType,
                      onTap: () {
                        context.read<HomeBloc>().add(SetActiveDayType(dayType));
                      },
                    );
                  },
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
