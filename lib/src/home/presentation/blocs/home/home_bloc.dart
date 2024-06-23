import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_market/core/core.dart';
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
          stocks: List<StockModel>.from(state.stocks)..addAll(r),
          filteredStocks: List<StockModel>.from(state.stocks)..addAll(r),
        ),
      ),
    );
  }

  void _setActiveDayType(SetActiveDayType event, Emitter<HomeState> emit) {
    var startDate = event.dayType.getDays()?.start;
    var endDate = event.dayType.getDays()?.end;

    print('start date => $startDate');

    print('end date => $endDate');

    emit(
      state.copyWith(
        activeDayType: event.dayType,
        filteredStocks: event.dayType.isMax
            ? state.stocks
            : List<StockModel>.from(state.stocks)
                .where(
                  (element) =>
                      element.date.isAfter(startDate!) &&
                      element.date.isBefore(endDate!),
                )
                .toList(),
      ),
    );

    print('filtered stocks lenght => ${state.filteredStocks.length}');
  }
}
