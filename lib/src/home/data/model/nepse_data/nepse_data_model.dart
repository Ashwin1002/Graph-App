import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_market/src/home/data/model/market/market_model.dart';
import 'package:stock_market/src/home/data/model/stock/stock_model.dart';

part 'nepse_data_model.freezed.dart';
part 'nepse_data_model.g.dart';

@freezed
class NepseDataModel with _$NepseDataModel {
  const NepseDataModel._();
  const factory NepseDataModel({
    @Default(MarketModel.empty)
    @JsonKey(name: 'market_sumary')
    MarketModel marketSummary,
    @Default([]) @JsonKey(name: 'minute_data') List<StockModel> minuteData,
    @Default([]) @JsonKey(name: 'hour_data') List<StockModel> hourData,
    @Default([]) @JsonKey(name: 'day_data') List<StockModel> dayData,
    @Default([]) @JsonKey(name: 'month_data') List<StockModel> monthData,
    @Default([]) @JsonKey(name: 'yearly_data') List<StockModel> yearlyData,
  }) = _NepseDataModel;

  factory NepseDataModel.fromJson(Map<String, dynamic> json) =>
      _$NepseDataModelFromJson(json);

  bool get isEmpty => this == const NepseDataModel();

  static const NepseDataModel empty = NepseDataModel();
}
