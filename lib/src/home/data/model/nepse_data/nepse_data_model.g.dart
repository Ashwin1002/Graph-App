// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nepse_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NepseDataModelImpl _$$NepseDataModelImplFromJson(Map<String, dynamic> json) =>
    _$NepseDataModelImpl(
      marketSummary: json['market_sumary'] == null
          ? MarketModel.empty
          : MarketModel.fromJson(json['market_sumary'] as Map<String, dynamic>),
      minuteData: (json['minute_data'] as List<dynamic>?)
              ?.map((e) => StockModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      hourData: (json['hour_data'] as List<dynamic>?)
              ?.map((e) => StockModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dayData: (json['day_data'] as List<dynamic>?)
              ?.map((e) => StockModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      monthData: (json['month_data'] as List<dynamic>?)
              ?.map((e) => StockModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      yearlyData: (json['yearly_data'] as List<dynamic>?)
              ?.map((e) => StockModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NepseDataModelImplToJson(
        _$NepseDataModelImpl instance) =>
    <String, dynamic>{
      'market_sumary': instance.marketSummary,
      'minute_data': instance.minuteData,
      'hour_data': instance.hourData,
      'day_data': instance.dayData,
      'month_data': instance.monthData,
      'yearly_data': instance.yearlyData,
    };
