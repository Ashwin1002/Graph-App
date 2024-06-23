part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class FetchStocks extends HomeEvent {
  const FetchStocks();

  @override
  List<Object?> get props => [];
}

class SetActiveDayType extends HomeEvent {
  const SetActiveDayType(this.dayType);

  final DayType dayType;

  @override
  List<Object?> get props => [dayType];
}
