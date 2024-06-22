part of 'home_bloc.dart';

final class HomeState extends Equatable {
  const HomeState({
    this.status = LoadingStatus.initial,
    this.message = '',
    this.stocks = const [],
  });

  final LoadingStatus status;
  final String message;
  final List<StockModel> stocks;

  factory HomeState.initial() => const HomeState(
        message: '',
        status: LoadingStatus.initial,
        stocks: [],
      );

  @override
  List<Object> get props => [status, message, stocks];

  HomeState copyWith({
    LoadingStatus? status,
    String? message,
    List<StockModel>? stocks,
  }) {
    return HomeState(
      status: status ?? this.status,
      message: message ?? this.message,
      stocks: stocks ?? this.stocks,
    );
  }
}
