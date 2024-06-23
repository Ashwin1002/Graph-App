// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketModelImpl _$$MarketModelImplFromJson(Map<String, dynamic> json) =>
    _$MarketModelImpl(
      todayNepse: json['today_nepse'] as String? ?? '',
      change: (json['change'] as num?)?.toDouble() ?? 0,
      percentChange: (json['percent_change'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$MarketModelImplToJson(_$MarketModelImpl instance) =>
    <String, dynamic>{
      'today_nepse': instance.todayNepse,
      'change': instance.change,
      'percent_change': instance.percentChange,
    };
