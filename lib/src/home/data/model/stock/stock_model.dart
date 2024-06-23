import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_market/core/core.dart';

part 'stock_model.freezed.dart';
part 'stock_model.g.dart';

@freezed
class StockModel with _$StockModel {
  const StockModel._();
  const factory StockModel({
    @Default(0) double index,
    @Default(0) double change,
    @Default(0) @JsonKey(name: 'percent_change') double percentChange,
    @DateTimeJsonConverter() required DateTime date,
  }) = _StockModel;

  factory StockModel.fromJson(Map<String, dynamic> json) =>
      _$StockModelFromJson(json);

  bool get isEmpty => this == StockModel(date: DateTime.now());

  static const StockModel empty = StockModel._();
}
