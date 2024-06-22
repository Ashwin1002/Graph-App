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
      buildWhen: (previous, current) =>
          previous.status != current.status ||
          previous.stocks != current.stocks,
      builder: (context, state) {
        return state.status.when(
          loading: () => const CustomLoadingWidget(),
          success: () => StockLineChart(stocks: state.stocks),
          failure: () => CustomErrorWidget(message: state.message),
        );
      },
    );
  }
}
