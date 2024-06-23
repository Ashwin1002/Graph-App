// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nepse_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NepseDataModel _$NepseDataModelFromJson(Map<String, dynamic> json) {
  return _NepseDataModel.fromJson(json);
}

/// @nodoc
mixin _$NepseDataModel {
  @JsonKey(name: 'market_sumary')
  MarketModel get marketSummary => throw _privateConstructorUsedError;
  @JsonKey(name: 'minute_data')
  List<StockModel> get minuteData => throw _privateConstructorUsedError;
  @JsonKey(name: 'hour_data')
  List<StockModel> get hourData => throw _privateConstructorUsedError;
  @JsonKey(name: 'day_data')
  List<StockModel> get dayData => throw _privateConstructorUsedError;
  @JsonKey(name: 'month_data')
  List<StockModel> get monthData => throw _privateConstructorUsedError;
  @JsonKey(name: 'yearly_data')
  List<StockModel> get yearlyData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NepseDataModelCopyWith<NepseDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NepseDataModelCopyWith<$Res> {
  factory $NepseDataModelCopyWith(
          NepseDataModel value, $Res Function(NepseDataModel) then) =
      _$NepseDataModelCopyWithImpl<$Res, NepseDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'market_sumary') MarketModel marketSummary,
      @JsonKey(name: 'minute_data') List<StockModel> minuteData,
      @JsonKey(name: 'hour_data') List<StockModel> hourData,
      @JsonKey(name: 'day_data') List<StockModel> dayData,
      @JsonKey(name: 'month_data') List<StockModel> monthData,
      @JsonKey(name: 'yearly_data') List<StockModel> yearlyData});

  $MarketModelCopyWith<$Res> get marketSummary;
}

/// @nodoc
class _$NepseDataModelCopyWithImpl<$Res, $Val extends NepseDataModel>
    implements $NepseDataModelCopyWith<$Res> {
  _$NepseDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketSummary = null,
    Object? minuteData = null,
    Object? hourData = null,
    Object? dayData = null,
    Object? monthData = null,
    Object? yearlyData = null,
  }) {
    return _then(_value.copyWith(
      marketSummary: null == marketSummary
          ? _value.marketSummary
          : marketSummary // ignore: cast_nullable_to_non_nullable
              as MarketModel,
      minuteData: null == minuteData
          ? _value.minuteData
          : minuteData // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
      hourData: null == hourData
          ? _value.hourData
          : hourData // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
      dayData: null == dayData
          ? _value.dayData
          : dayData // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
      monthData: null == monthData
          ? _value.monthData
          : monthData // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
      yearlyData: null == yearlyData
          ? _value.yearlyData
          : yearlyData // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MarketModelCopyWith<$Res> get marketSummary {
    return $MarketModelCopyWith<$Res>(_value.marketSummary, (value) {
      return _then(_value.copyWith(marketSummary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NepseDataModelImplCopyWith<$Res>
    implements $NepseDataModelCopyWith<$Res> {
  factory _$$NepseDataModelImplCopyWith(_$NepseDataModelImpl value,
          $Res Function(_$NepseDataModelImpl) then) =
      __$$NepseDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'market_sumary') MarketModel marketSummary,
      @JsonKey(name: 'minute_data') List<StockModel> minuteData,
      @JsonKey(name: 'hour_data') List<StockModel> hourData,
      @JsonKey(name: 'day_data') List<StockModel> dayData,
      @JsonKey(name: 'month_data') List<StockModel> monthData,
      @JsonKey(name: 'yearly_data') List<StockModel> yearlyData});

  @override
  $MarketModelCopyWith<$Res> get marketSummary;
}

/// @nodoc
class __$$NepseDataModelImplCopyWithImpl<$Res>
    extends _$NepseDataModelCopyWithImpl<$Res, _$NepseDataModelImpl>
    implements _$$NepseDataModelImplCopyWith<$Res> {
  __$$NepseDataModelImplCopyWithImpl(
      _$NepseDataModelImpl _value, $Res Function(_$NepseDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketSummary = null,
    Object? minuteData = null,
    Object? hourData = null,
    Object? dayData = null,
    Object? monthData = null,
    Object? yearlyData = null,
  }) {
    return _then(_$NepseDataModelImpl(
      marketSummary: null == marketSummary
          ? _value.marketSummary
          : marketSummary // ignore: cast_nullable_to_non_nullable
              as MarketModel,
      minuteData: null == minuteData
          ? _value._minuteData
          : minuteData // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
      hourData: null == hourData
          ? _value._hourData
          : hourData // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
      dayData: null == dayData
          ? _value._dayData
          : dayData // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
      monthData: null == monthData
          ? _value._monthData
          : monthData // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
      yearlyData: null == yearlyData
          ? _value._yearlyData
          : yearlyData // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NepseDataModelImpl extends _NepseDataModel {
  const _$NepseDataModelImpl(
      {@JsonKey(name: 'market_sumary') this.marketSummary = MarketModel.empty,
      @JsonKey(name: 'minute_data')
      final List<StockModel> minuteData = const [],
      @JsonKey(name: 'hour_data') final List<StockModel> hourData = const [],
      @JsonKey(name: 'day_data') final List<StockModel> dayData = const [],
      @JsonKey(name: 'month_data') final List<StockModel> monthData = const [],
      @JsonKey(name: 'yearly_data')
      final List<StockModel> yearlyData = const []})
      : _minuteData = minuteData,
        _hourData = hourData,
        _dayData = dayData,
        _monthData = monthData,
        _yearlyData = yearlyData,
        super._();

  factory _$NepseDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NepseDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'market_sumary')
  final MarketModel marketSummary;
  final List<StockModel> _minuteData;
  @override
  @JsonKey(name: 'minute_data')
  List<StockModel> get minuteData {
    if (_minuteData is EqualUnmodifiableListView) return _minuteData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_minuteData);
  }

  final List<StockModel> _hourData;
  @override
  @JsonKey(name: 'hour_data')
  List<StockModel> get hourData {
    if (_hourData is EqualUnmodifiableListView) return _hourData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hourData);
  }

  final List<StockModel> _dayData;
  @override
  @JsonKey(name: 'day_data')
  List<StockModel> get dayData {
    if (_dayData is EqualUnmodifiableListView) return _dayData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dayData);
  }

  final List<StockModel> _monthData;
  @override
  @JsonKey(name: 'month_data')
  List<StockModel> get monthData {
    if (_monthData is EqualUnmodifiableListView) return _monthData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthData);
  }

  final List<StockModel> _yearlyData;
  @override
  @JsonKey(name: 'yearly_data')
  List<StockModel> get yearlyData {
    if (_yearlyData is EqualUnmodifiableListView) return _yearlyData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yearlyData);
  }

  @override
  String toString() {
    return 'NepseDataModel(marketSummary: $marketSummary, minuteData: $minuteData, hourData: $hourData, dayData: $dayData, monthData: $monthData, yearlyData: $yearlyData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NepseDataModelImpl &&
            (identical(other.marketSummary, marketSummary) ||
                other.marketSummary == marketSummary) &&
            const DeepCollectionEquality()
                .equals(other._minuteData, _minuteData) &&
            const DeepCollectionEquality().equals(other._hourData, _hourData) &&
            const DeepCollectionEquality().equals(other._dayData, _dayData) &&
            const DeepCollectionEquality()
                .equals(other._monthData, _monthData) &&
            const DeepCollectionEquality()
                .equals(other._yearlyData, _yearlyData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      marketSummary,
      const DeepCollectionEquality().hash(_minuteData),
      const DeepCollectionEquality().hash(_hourData),
      const DeepCollectionEquality().hash(_dayData),
      const DeepCollectionEquality().hash(_monthData),
      const DeepCollectionEquality().hash(_yearlyData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NepseDataModelImplCopyWith<_$NepseDataModelImpl> get copyWith =>
      __$$NepseDataModelImplCopyWithImpl<_$NepseDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NepseDataModelImplToJson(
      this,
    );
  }
}

abstract class _NepseDataModel extends NepseDataModel {
  const factory _NepseDataModel(
          {@JsonKey(name: 'market_sumary') final MarketModel marketSummary,
          @JsonKey(name: 'minute_data') final List<StockModel> minuteData,
          @JsonKey(name: 'hour_data') final List<StockModel> hourData,
          @JsonKey(name: 'day_data') final List<StockModel> dayData,
          @JsonKey(name: 'month_data') final List<StockModel> monthData,
          @JsonKey(name: 'yearly_data') final List<StockModel> yearlyData}) =
      _$NepseDataModelImpl;
  const _NepseDataModel._() : super._();

  factory _NepseDataModel.fromJson(Map<String, dynamic> json) =
      _$NepseDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'market_sumary')
  MarketModel get marketSummary;
  @override
  @JsonKey(name: 'minute_data')
  List<StockModel> get minuteData;
  @override
  @JsonKey(name: 'hour_data')
  List<StockModel> get hourData;
  @override
  @JsonKey(name: 'day_data')
  List<StockModel> get dayData;
  @override
  @JsonKey(name: 'month_data')
  List<StockModel> get monthData;
  @override
  @JsonKey(name: 'yearly_data')
  List<StockModel> get yearlyData;
  @override
  @JsonKey(ignore: true)
  _$$NepseDataModelImplCopyWith<_$NepseDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
