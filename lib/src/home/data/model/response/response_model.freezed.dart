// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseModel _$ResponseModelFromJson(Map<String, dynamic> json) {
  return _ResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseModel {
  @JsonKey(name: 'response_code')
  String get responseCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'response_message')
  String get responseMessage => throw _privateConstructorUsedError;
  NepseDataModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseModelCopyWith<ResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<$Res> {
  factory $ResponseModelCopyWith(
          ResponseModel value, $Res Function(ResponseModel) then) =
      _$ResponseModelCopyWithImpl<$Res, ResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'response_code') String responseCode,
      @JsonKey(name: 'response_message') String responseMessage,
      NepseDataModel data});

  $NepseDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$ResponseModelCopyWithImpl<$Res, $Val extends ResponseModel>
    implements $ResponseModelCopyWith<$Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCode = null,
    Object? responseMessage = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      responseCode: null == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String,
      responseMessage: null == responseMessage
          ? _value.responseMessage
          : responseMessage // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NepseDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NepseDataModelCopyWith<$Res> get data {
    return $NepseDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseModelImplCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory _$$ResponseModelImplCopyWith(
          _$ResponseModelImpl value, $Res Function(_$ResponseModelImpl) then) =
      __$$ResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'response_code') String responseCode,
      @JsonKey(name: 'response_message') String responseMessage,
      NepseDataModel data});

  @override
  $NepseDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$ResponseModelImplCopyWithImpl<$Res>
    extends _$ResponseModelCopyWithImpl<$Res, _$ResponseModelImpl>
    implements _$$ResponseModelImplCopyWith<$Res> {
  __$$ResponseModelImplCopyWithImpl(
      _$ResponseModelImpl _value, $Res Function(_$ResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCode = null,
    Object? responseMessage = null,
    Object? data = null,
  }) {
    return _then(_$ResponseModelImpl(
      responseCode: null == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String,
      responseMessage: null == responseMessage
          ? _value.responseMessage
          : responseMessage // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NepseDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseModelImpl extends _ResponseModel {
  const _$ResponseModelImpl(
      {@JsonKey(name: 'response_code') this.responseCode = '',
      @JsonKey(name: 'response_message') this.responseMessage = '',
      required this.data})
      : super._();

  factory _$ResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'response_code')
  final String responseCode;
  @override
  @JsonKey(name: 'response_message')
  final String responseMessage;
  @override
  final NepseDataModel data;

  @override
  String toString() {
    return 'ResponseModel(responseCode: $responseCode, responseMessage: $responseMessage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseModelImpl &&
            (identical(other.responseCode, responseCode) ||
                other.responseCode == responseCode) &&
            (identical(other.responseMessage, responseMessage) ||
                other.responseMessage == responseMessage) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, responseCode, responseMessage, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseModelImplCopyWith<_$ResponseModelImpl> get copyWith =>
      __$$ResponseModelImplCopyWithImpl<_$ResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseModel extends ResponseModel {
  const factory _ResponseModel(
      {@JsonKey(name: 'response_code') final String responseCode,
      @JsonKey(name: 'response_message') final String responseMessage,
      required final NepseDataModel data}) = _$ResponseModelImpl;
  const _ResponseModel._() : super._();

  factory _ResponseModel.fromJson(Map<String, dynamic> json) =
      _$ResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'response_code')
  String get responseCode;
  @override
  @JsonKey(name: 'response_message')
  String get responseMessage;
  @override
  NepseDataModel get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseModelImplCopyWith<_$ResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
