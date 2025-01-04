// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockPrice _$StockPriceFromJson(Map<String, dynamic> json) {
  return _StockPrice.fromJson(json);
}

/// @nodoc
mixin _$StockPrice {
  double get close => throw _privateConstructorUsedError;
  DateTime get datetime => throw _privateConstructorUsedError;

  /// Serializes this StockPrice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StockPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockPriceCopyWith<StockPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockPriceCopyWith<$Res> {
  factory $StockPriceCopyWith(
          StockPrice value, $Res Function(StockPrice) then) =
      _$StockPriceCopyWithImpl<$Res, StockPrice>;
  @useResult
  $Res call({double close, DateTime datetime});
}

/// @nodoc
class _$StockPriceCopyWithImpl<$Res, $Val extends StockPrice>
    implements $StockPriceCopyWith<$Res> {
  _$StockPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? close = null,
    Object? datetime = null,
  }) {
    return _then(_value.copyWith(
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockPriceImplCopyWith<$Res>
    implements $StockPriceCopyWith<$Res> {
  factory _$$StockPriceImplCopyWith(
          _$StockPriceImpl value, $Res Function(_$StockPriceImpl) then) =
      __$$StockPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double close, DateTime datetime});
}

/// @nodoc
class __$$StockPriceImplCopyWithImpl<$Res>
    extends _$StockPriceCopyWithImpl<$Res, _$StockPriceImpl>
    implements _$$StockPriceImplCopyWith<$Res> {
  __$$StockPriceImplCopyWithImpl(
      _$StockPriceImpl _value, $Res Function(_$StockPriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? close = null,
    Object? datetime = null,
  }) {
    return _then(_$StockPriceImpl(
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockPriceImpl implements _StockPrice {
  const _$StockPriceImpl({required this.close, required this.datetime});

  factory _$StockPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockPriceImplFromJson(json);

  @override
  final double close;
  @override
  final DateTime datetime;

  @override
  String toString() {
    return 'StockPrice(close: $close, datetime: $datetime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockPriceImpl &&
            (identical(other.close, close) || other.close == close) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, close, datetime);

  /// Create a copy of StockPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockPriceImplCopyWith<_$StockPriceImpl> get copyWith =>
      __$$StockPriceImplCopyWithImpl<_$StockPriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockPriceImplToJson(
      this,
    );
  }
}

abstract class _StockPrice implements StockPrice {
  const factory _StockPrice(
      {required final double close,
      required final DateTime datetime}) = _$StockPriceImpl;

  factory _StockPrice.fromJson(Map<String, dynamic> json) =
      _$StockPriceImpl.fromJson;

  @override
  double get close;
  @override
  DateTime get datetime;

  /// Create a copy of StockPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockPriceImplCopyWith<_$StockPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
