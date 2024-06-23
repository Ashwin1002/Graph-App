// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarketModel _$MarketModelFromJson(Map<String, dynamic> json) {
  return _MarketModel.fromJson(json);
}

/// @nodoc
mixin _$MarketModel {
  @JsonKey(name: 'today_nepse')
  String get todayNepse => throw _privateConstructorUsedError;
  double get change => throw _privateConstructorUsedError;
  @JsonKey(name: 'percent_change')
  double get percentChange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketModelCopyWith<MarketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketModelCopyWith<$Res> {
  factory $MarketModelCopyWith(
          MarketModel value, $Res Function(MarketModel) then) =
      _$MarketModelCopyWithImpl<$Res, MarketModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'today_nepse') String todayNepse,
      double change,
      @JsonKey(name: 'percent_change') double percentChange});
}

/// @nodoc
class _$MarketModelCopyWithImpl<$Res, $Val extends MarketModel>
    implements $MarketModelCopyWith<$Res> {
  _$MarketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayNepse = null,
    Object? change = null,
    Object? percentChange = null,
  }) {
    return _then(_value.copyWith(
      todayNepse: null == todayNepse
          ? _value.todayNepse
          : todayNepse // ignore: cast_nullable_to_non_nullable
              as String,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange: null == percentChange
          ? _value.percentChange
          : percentChange // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketModelImplCopyWith<$Res>
    implements $MarketModelCopyWith<$Res> {
  factory _$$MarketModelImplCopyWith(
          _$MarketModelImpl value, $Res Function(_$MarketModelImpl) then) =
      __$$MarketModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'today_nepse') String todayNepse,
      double change,
      @JsonKey(name: 'percent_change') double percentChange});
}

/// @nodoc
class __$$MarketModelImplCopyWithImpl<$Res>
    extends _$MarketModelCopyWithImpl<$Res, _$MarketModelImpl>
    implements _$$MarketModelImplCopyWith<$Res> {
  __$$MarketModelImplCopyWithImpl(
      _$MarketModelImpl _value, $Res Function(_$MarketModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayNepse = null,
    Object? change = null,
    Object? percentChange = null,
  }) {
    return _then(_$MarketModelImpl(
      todayNepse: null == todayNepse
          ? _value.todayNepse
          : todayNepse // ignore: cast_nullable_to_non_nullable
              as String,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange: null == percentChange
          ? _value.percentChange
          : percentChange // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketModelImpl extends _MarketModel {
  const _$MarketModelImpl(
      {@JsonKey(name: 'today_nepse') this.todayNepse = '',
      this.change = 0,
      @JsonKey(name: 'percent_change') this.percentChange = 0})
      : super._();

  factory _$MarketModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketModelImplFromJson(json);

  @override
  @JsonKey(name: 'today_nepse')
  final String todayNepse;
  @override
  @JsonKey()
  final double change;
  @override
  @JsonKey(name: 'percent_change')
  final double percentChange;

  @override
  String toString() {
    return 'MarketModel(todayNepse: $todayNepse, change: $change, percentChange: $percentChange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketModelImpl &&
            (identical(other.todayNepse, todayNepse) ||
                other.todayNepse == todayNepse) &&
            (identical(other.change, change) || other.change == change) &&
            (identical(other.percentChange, percentChange) ||
                other.percentChange == percentChange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, todayNepse, change, percentChange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketModelImplCopyWith<_$MarketModelImpl> get copyWith =>
      __$$MarketModelImplCopyWithImpl<_$MarketModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketModelImplToJson(
      this,
    );
  }
}

abstract class _MarketModel extends MarketModel {
  const factory _MarketModel(
          {@JsonKey(name: 'today_nepse') final String todayNepse,
          final double change,
          @JsonKey(name: 'percent_change') final double percentChange}) =
      _$MarketModelImpl;
  const _MarketModel._() : super._();

  factory _MarketModel.fromJson(Map<String, dynamic> json) =
      _$MarketModelImpl.fromJson;

  @override
  @JsonKey(name: 'today_nepse')
  String get todayNepse;
  @override
  double get change;
  @override
  @JsonKey(name: 'percent_change')
  double get percentChange;
  @override
  @JsonKey(ignore: true)
  _$$MarketModelImplCopyWith<_$MarketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
