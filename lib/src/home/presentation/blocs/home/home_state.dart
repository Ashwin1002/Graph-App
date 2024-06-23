part of 'home_bloc.dart';

final class HomeState extends Equatable {
  const HomeState({
    this.status = LoadingStatus.initial,
    this.message = '',
    this.activeStockType = StockType.minutes,
    this.marketModel = MarketModel.empty,
    this.dayStocks = const [],
    this.hourStocks = const [],
    this.minuteStocks = const [],
    this.monthStocks = const [],
    this.yearlyStocks = const [],
  });

  /// get stocks from server
  final LoadingStatus status;
  final String message;
  final MarketModel marketModel;
  final List<StockModel> minuteStocks;
  final List<StockModel> hourStocks;
  final List<StockModel> dayStocks;
  final List<StockModel> monthStocks;
  final List<StockModel> yearlyStocks;

  /// get active day type
  final StockType activeStockType;

  factory HomeState.initial() => const HomeState(
        message: '',
        status: LoadingStatus.initial,
        activeStockType: StockType.minutes,
        dayStocks: [],
        hourStocks: [],
        marketModel: MarketModel.empty,
        minuteStocks: [],
        monthStocks: [],
        yearlyStocks: [],
      );

  @override
  List<Object> get props {
    return [
      status,
      message,
      marketModel,
      minuteStocks,
      hourStocks,
      dayStocks,
      monthStocks,
      yearlyStocks,
      activeStockType,
    ];
  }

  HomeState copyWith({
    LoadingStatus? status,
    String? message,
    MarketModel? marketModel,
    List<StockModel>? minuteStocks,
    List<StockModel>? hourStocks,
    List<StockModel>? dayStocks,
    List<StockModel>? monthStocks,
    List<StockModel>? yearlyStocks,
    StockType? activeStockType,
  }) {
    return HomeState(
      status: status ?? this.status,
      message: message ?? this.message,
      marketModel: marketModel ?? this.marketModel,
      minuteStocks: minuteStocks ?? this.minuteStocks,
      hourStocks: hourStocks ?? this.hourStocks,
      dayStocks: dayStocks ?? this.dayStocks,
      monthStocks: monthStocks ?? this.monthStocks,
      yearlyStocks: yearlyStocks ?? this.yearlyStocks,
      activeStockType: activeStockType ?? this.activeStockType,
    );
  }
}
