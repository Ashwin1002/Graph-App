import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_market/core/core.dart';

part 'stock_model.freezed.dart';
part 'stock_model.g.dart';

@freezed
class StockModel with _$StockModel {
  const StockModel._();
  const factory StockModel({
    @Default(0) double open,
    @Default(0) double high,
    @Default(0) double low,
    @Default(0) double close,
    @Default(0) int volume,
    @DateTimeJsonConverter() required DateTime date,
  }) = _StockModel;

  factory StockModel.fromJson(Map<String, dynamic> json) =>
      _$StockModelFromJson(json);

  bool get isEmpty => this == StockModel(date: DateTime.now());
}
