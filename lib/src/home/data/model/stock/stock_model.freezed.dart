// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockModel _$StockModelFromJson(Map<String, dynamic> json) {
  return _StockModel.fromJson(json);
}

/// @nodoc
mixin _$StockModel {
  double get point => throw _privateConstructorUsedError;
  @DateTimeJsonConverter()
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockModelCopyWith<StockModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockModelCopyWith<$Res> {
  factory $StockModelCopyWith(
          StockModel value, $Res Function(StockModel) then) =
      _$StockModelCopyWithImpl<$Res, StockModel>;
  @useResult
  $Res call({double point, @DateTimeJsonConverter() DateTime date});
}

/// @nodoc
class _$StockModelCopyWithImpl<$Res, $Val extends StockModel>
    implements $StockModelCopyWith<$Res> {
  _$StockModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockModelImplCopyWith<$Res>
    implements $StockModelCopyWith<$Res> {
  factory _$$StockModelImplCopyWith(
          _$StockModelImpl value, $Res Function(_$StockModelImpl) then) =
      __$$StockModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double point, @DateTimeJsonConverter() DateTime date});
}

/// @nodoc
class __$$StockModelImplCopyWithImpl<$Res>
    extends _$StockModelCopyWithImpl<$Res, _$StockModelImpl>
    implements _$$StockModelImplCopyWith<$Res> {
  __$$StockModelImplCopyWithImpl(
      _$StockModelImpl _value, $Res Function(_$StockModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
    Object? date = null,
  }) {
    return _then(_$StockModelImpl(
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockModelImpl extends _StockModel {
  const _$StockModelImpl(
      {this.point = 0, @DateTimeJsonConverter() required this.date})
      : super._();

  factory _$StockModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockModelImplFromJson(json);

  @override
  @JsonKey()
  final double point;
  @override
  @DateTimeJsonConverter()
  final DateTime date;

  @override
  String toString() {
    return 'StockModel(point: $point, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockModelImpl &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, point, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockModelImplCopyWith<_$StockModelImpl> get copyWith =>
      __$$StockModelImplCopyWithImpl<_$StockModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockModelImplToJson(
      this,
    );
  }
}

abstract class _StockModel extends StockModel {
  const factory _StockModel(
          {final double point,
          @DateTimeJsonConverter() required final DateTime date}) =
      _$StockModelImpl;
  const _StockModel._() : super._();

  factory _StockModel.fromJson(Map<String, dynamic> json) =
      _$StockModelImpl.fromJson;

  @override
  double get point;
  @override
  @DateTimeJsonConverter()
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$StockModelImplCopyWith<_$StockModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
