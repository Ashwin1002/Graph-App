import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_model.freezed.dart';
part 'market_model.g.dart';

@freezed
class MarketModel with _$MarketModel {
  const MarketModel._();
  const factory MarketModel({
    @Default('') @JsonKey(name: 'today_nepse') String todayNepse,
    @Default(0) double change,
    @Default(0) @JsonKey(name: 'percent_change') double percentChange,
  }) = _MarketModel;

  factory MarketModel.fromJson(Map<String, dynamic> json) =>
      _$MarketModelFromJson(json);

  bool get isEmpty => this == const MarketModel();

  static const MarketModel empty = MarketModel();
}
