// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockListResponse _$StockListResponseFromJson(Map<String, dynamic> json) {
  return _StockListResponse.fromJson(json);
}

/// @nodoc
mixin _$StockListResponse {
  int get count => throw _privateConstructorUsedError;
  List<Stock> get data => throw _privateConstructorUsedError;
  List<Sector> get sectors => throw _privateConstructorUsedError;

  /// Serializes this StockListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StockListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockListResponseCopyWith<StockListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockListResponseCopyWith<$Res> {
  factory $StockListResponseCopyWith(
          StockListResponse value, $Res Function(StockListResponse) then) =
      _$StockListResponseCopyWithImpl<$Res, StockListResponse>;
  @useResult
  $Res call({int count, List<Stock> data, List<Sector> sectors});
}

/// @nodoc
class _$StockListResponseCopyWithImpl<$Res, $Val extends StockListResponse>
    implements $StockListResponseCopyWith<$Res> {
  _$StockListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? data = null,
    Object? sectors = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
      sectors: null == sectors
          ? _value.sectors
          : sectors // ignore: cast_nullable_to_non_nullable
              as List<Sector>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockListResponseImplCopyWith<$Res>
    implements $StockListResponseCopyWith<$Res> {
  factory _$$StockListResponseImplCopyWith(_$StockListResponseImpl value,
          $Res Function(_$StockListResponseImpl) then) =
      __$$StockListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<Stock> data, List<Sector> sectors});
}

/// @nodoc
class __$$StockListResponseImplCopyWithImpl<$Res>
    extends _$StockListResponseCopyWithImpl<$Res, _$StockListResponseImpl>
    implements _$$StockListResponseImplCopyWith<$Res> {
  __$$StockListResponseImplCopyWithImpl(_$StockListResponseImpl _value,
      $Res Function(_$StockListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? data = null,
    Object? sectors = null,
  }) {
    return _then(_$StockListResponseImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
      sectors: null == sectors
          ? _value._sectors
          : sectors // ignore: cast_nullable_to_non_nullable
              as List<Sector>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockListResponseImpl implements _StockListResponse {
  const _$StockListResponseImpl(
      {required this.count,
      required final List<Stock> data,
      required final List<Sector> sectors})
      : _data = data,
        _sectors = sectors;

  factory _$StockListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockListResponseImplFromJson(json);

  @override
  final int count;
  final List<Stock> _data;
  @override
  List<Stock> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  final List<Sector> _sectors;
  @override
  List<Sector> get sectors {
    if (_sectors is EqualUnmodifiableListView) return _sectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sectors);
  }

  @override
  String toString() {
    return 'StockListResponse(count: $count, data: $data, sectors: $sectors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockListResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._sectors, _sectors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      count,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_sectors));

  /// Create a copy of StockListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockListResponseImplCopyWith<_$StockListResponseImpl> get copyWith =>
      __$$StockListResponseImplCopyWithImpl<_$StockListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockListResponseImplToJson(
      this,
    );
  }
}

abstract class _StockListResponse implements StockListResponse {
  const factory _StockListResponse(
      {required final int count,
      required final List<Stock> data,
      required final List<Sector> sectors}) = _$StockListResponseImpl;

  factory _StockListResponse.fromJson(Map<String, dynamic> json) =
      _$StockListResponseImpl.fromJson;

  @override
  int get count;
  @override
  List<Stock> get data;
  @override
  List<Sector> get sectors;

  /// Create a copy of StockListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockListResponseImplCopyWith<_$StockListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
