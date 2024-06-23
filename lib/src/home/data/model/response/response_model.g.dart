// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseModelImpl _$$ResponseModelImplFromJson(Map<String, dynamic> json) =>
    _$ResponseModelImpl(
      responseCode: json['response_code'] as String? ?? '',
      responseMessage: json['response_message'] as String? ?? '',
      data: NepseDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseModelImplToJson(_$ResponseModelImpl instance) =>
    <String, dynamic>{
      'response_code': instance.responseCode,
      'response_message': instance.responseMessage,
      'data': instance.data,
    };
