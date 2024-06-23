part of 'home_bloc.dart';

final class HomeState extends Equatable {
  const HomeState({
    this.status = LoadingStatus.initial,
    this.message = '',
    this.stocks = const [],
    this.activeDayType = DayType.oneDay,
    this.filteredStocks = const [],
  });

  /// get stocks from server
  final LoadingStatus status;
  final String message;
  final List<StockModel> stocks;
  final List<StockModel> filteredStocks;

  /// get active day type
  final DayType activeDayType;

  factory HomeState.initial() => const HomeState(
        message: '',
        status: LoadingStatus.initial,
        stocks: [],
        activeDayType: DayType.oneDay,
        filteredStocks: [],
      );

  @override
  List<Object> get props => [
        status,
        message,
        stocks,
        activeDayType,
        filteredStocks,
      ];

  HomeState copyWith({
    LoadingStatus? status,
    String? message,
    List<StockModel>? stocks,
    List<StockModel>? filteredStocks,
    DayType? activeDayType,
  }) {
    return HomeState(
      status: status ?? this.status,
      message: message ?? this.message,
      stocks: stocks ?? this.stocks,
      activeDayType: activeDayType ?? this.activeDayType,
      filteredStocks: filteredStocks ?? this.filteredStocks,
    );
  }
}
