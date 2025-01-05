// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jitta_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JittaScore _$JittaScoreFromJson(Map<String, dynamic> json) {
  return _JittaScore.fromJson(json);
}

/// @nodoc
mixin _$JittaScore {
  ScoreItem get last => throw _privateConstructorUsedError;
  List<ScoreItem> get values => throw _privateConstructorUsedError;

  /// Serializes this JittaScore to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JittaScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JittaScoreCopyWith<JittaScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JittaScoreCopyWith<$Res> {
  factory $JittaScoreCopyWith(
          JittaScore value, $Res Function(JittaScore) then) =
      _$JittaScoreCopyWithImpl<$Res, JittaScore>;
  @useResult
  $Res call({ScoreItem last, List<ScoreItem> values});

  $ScoreItemCopyWith<$Res> get last;
}

/// @nodoc
class _$JittaScoreCopyWithImpl<$Res, $Val extends JittaScore>
    implements $JittaScoreCopyWith<$Res> {
  _$JittaScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JittaScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last = null,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as ScoreItem,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ScoreItem>,
    ) as $Val);
  }

  /// Create a copy of JittaScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScoreItemCopyWith<$Res> get last {
    return $ScoreItemCopyWith<$Res>(_value.last, (value) {
      return _then(_value.copyWith(last: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JittaScoreImplCopyWith<$Res>
    implements $JittaScoreCopyWith<$Res> {
  factory _$$JittaScoreImplCopyWith(
          _$JittaScoreImpl value, $Res Function(_$JittaScoreImpl) then) =
      __$$JittaScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ScoreItem last, List<ScoreItem> values});

  @override
  $ScoreItemCopyWith<$Res> get last;
}

/// @nodoc
class __$$JittaScoreImplCopyWithImpl<$Res>
    extends _$JittaScoreCopyWithImpl<$Res, _$JittaScoreImpl>
    implements _$$JittaScoreImplCopyWith<$Res> {
  __$$JittaScoreImplCopyWithImpl(
      _$JittaScoreImpl _value, $Res Function(_$JittaScoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of JittaScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last = null,
    Object? values = null,
  }) {
    return _then(_$JittaScoreImpl(
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as ScoreItem,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ScoreItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JittaScoreImpl implements _JittaScore {
  const _$JittaScoreImpl(
      {required this.last, required final List<ScoreItem> values})
      : _values = values;

  factory _$JittaScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$JittaScoreImplFromJson(json);

  @override
  final ScoreItem last;
  final List<ScoreItem> _values;
  @override
  List<ScoreItem> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'JittaScore(last: $last, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JittaScoreImpl &&
            (identical(other.last, last) || other.last == last) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, last, const DeepCollectionEquality().hash(_values));

  /// Create a copy of JittaScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JittaScoreImplCopyWith<_$JittaScoreImpl> get copyWith =>
      __$$JittaScoreImplCopyWithImpl<_$JittaScoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JittaScoreImplToJson(
      this,
    );
  }
}

abstract class _JittaScore implements JittaScore {
  const factory _JittaScore(
      {required final ScoreItem last,
      required final List<ScoreItem> values}) = _$JittaScoreImpl;

  factory _JittaScore.fromJson(Map<String, dynamic> json) =
      _$JittaScoreImpl.fromJson;

  @override
  ScoreItem get last;
  @override
  List<ScoreItem> get values;

  /// Create a copy of JittaScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JittaScoreImplCopyWith<_$JittaScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScoreItem _$ScoreItemFromJson(Map<String, dynamic> json) {
  return _ScoreItem.fromJson(json);
}

/// @nodoc
mixin _$ScoreItem {
  String get id => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String? get quarter => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;

  /// Serializes this ScoreItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScoreItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoreItemCopyWith<ScoreItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreItemCopyWith<$Res> {
  factory $ScoreItemCopyWith(ScoreItem value, $Res Function(ScoreItem) then) =
      _$ScoreItemCopyWithImpl<$Res, ScoreItem>;
  @useResult
  $Res call({String id, double value, String? quarter, int? year});
}

/// @nodoc
class _$ScoreItemCopyWithImpl<$Res, $Val extends ScoreItem>
    implements $ScoreItemCopyWith<$Res> {
  _$ScoreItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoreItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? quarter = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      quarter: freezed == quarter
          ? _value.quarter
          : quarter // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoreItemImplCopyWith<$Res>
    implements $ScoreItemCopyWith<$Res> {
  factory _$$ScoreItemImplCopyWith(
          _$ScoreItemImpl value, $Res Function(_$ScoreItemImpl) then) =
      __$$ScoreItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, double value, String? quarter, int? year});
}

/// @nodoc
class __$$ScoreItemImplCopyWithImpl<$Res>
    extends _$ScoreItemCopyWithImpl<$Res, _$ScoreItemImpl>
    implements _$$ScoreItemImplCopyWith<$Res> {
  __$$ScoreItemImplCopyWithImpl(
      _$ScoreItemImpl _value, $Res Function(_$ScoreItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScoreItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? quarter = freezed,
    Object? year = freezed,
  }) {
    return _then(_$ScoreItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      quarter: freezed == quarter
          ? _value.quarter
          : quarter // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoreItemImpl implements _ScoreItem {
  const _$ScoreItemImpl(
      {required this.id, required this.value, this.quarter, this.year});

  factory _$ScoreItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoreItemImplFromJson(json);

  @override
  final String id;
  @override
  final double value;
  @override
  final String? quarter;
  @override
  final int? year;

  @override
  String toString() {
    return 'ScoreItem(id: $id, value: $value, quarter: $quarter, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.quarter, quarter) || other.quarter == quarter) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, value, quarter, year);

  /// Create a copy of ScoreItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreItemImplCopyWith<_$ScoreItemImpl> get copyWith =>
      __$$ScoreItemImplCopyWithImpl<_$ScoreItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoreItemImplToJson(
      this,
    );
  }
}

abstract class _ScoreItem implements ScoreItem {
  const factory _ScoreItem(
      {required final String id,
      required final double value,
      final String? quarter,
      final int? year}) = _$ScoreItemImpl;

  factory _ScoreItem.fromJson(Map<String, dynamic> json) =
      _$ScoreItemImpl.fromJson;

  @override
  String get id;
  @override
  double get value;
  @override
  String? get quarter;
  @override
  int? get year;

  /// Create a copy of ScoreItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoreItemImplCopyWith<_$ScoreItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
