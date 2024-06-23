import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_market/core/core.dart';
import 'package:stock_market/src/home/data/model/market/market_model.dart';
import 'package:stock_market/src/home/data/model/stock/stock_model.dart';
import 'package:stock_market/src/home/domain/usecases/get_stocks_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetStocksUsecase _stocksUsecase;

  HomeBloc()
      : _stocksUsecase = sl<GetStocksUsecase>(),
        super(HomeState.initial()) {
    _subscribeToEvents();
  }

  void _subscribeToEvents() {
    on<FetchStocks>(_fetchStocks);
    on<SetActiveDayType>(_setActiveDayType);
  }

  FutureOr<void> _fetchStocks(
      FetchStocks event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: LoadingStatus.loading));

    final response = await _stocksUsecase.call();

    response.fold(
      (l) => emit(
        state.copyWith(
          status: LoadingStatus.failure,
          message: l,
        ),
      ),
      (r) => emit(
        state.copyWith(
          status: LoadingStatus.success,
          marketModel: r.data.marketSummary,
          dayStocks: r.data.dayData,
          minuteStocks: r.data.minuteData,
          hourStocks: r.data.hourData,
          monthStocks: r.data.monthData,
          yearlyStocks: r.data.yearlyData,
        ),
      ),
    );
  }

  void _setActiveDayType(SetActiveDayType event, Emitter<HomeState> emit) {
    emit(state.copyWith(activeStockType: event.type));
  }
}
