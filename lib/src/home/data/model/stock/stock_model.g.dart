// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockModelImpl _$$StockModelImplFromJson(Map<String, dynamic> json) =>
    _$StockModelImpl(
      point: (json['point'] as num?)?.toDouble() ?? 0,
      date: const DateTimeJsonConverter().fromJson(json['date'] as String),
    );

Map<String, dynamic> _$$StockModelImplToJson(_$StockModelImpl instance) =>
    <String, dynamic>{
      'point': instance.point,
      'date': const DateTimeJsonConverter().toJson(instance.date),
    };
