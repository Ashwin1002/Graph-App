// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockModelImpl _$$StockModelImplFromJson(Map<String, dynamic> json) =>
    _$StockModelImpl(
      index: (json['index'] as num?)?.toDouble() ?? 0,
      change: (json['change'] as num?)?.toDouble() ?? 0,
      percentChange: (json['percent_change'] as num?)?.toDouble() ?? 0,
      date: const DateTimeJsonConverter().fromJson(json['date'] as String),
    );

Map<String, dynamic> _$$StockModelImplToJson(_$StockModelImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'change': instance.change,
      'percent_change': instance.percentChange,
      'date': const DateTimeJsonConverter().toJson(instance.date),
    };
