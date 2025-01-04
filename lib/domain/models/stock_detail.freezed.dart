// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockDetail _$StockDetailFromJson(Map<String, dynamic> json) {
  return _StockDetail.fromJson(json);
}

/// @nodoc
mixin _$StockDetail {
  Stock get stock => throw _privateConstructorUsedError;
  StockPrice get latestPrice => throw _privateConstructorUsedError;
  JittaScore get jittaScore => throw _privateConstructorUsedError;
  List<StockPrice> get priceHistory => throw _privateConstructorUsedError;
  Map<String, double> get factorScores => throw _privateConstructorUsedError;
  DateTime? get ipoDate => throw _privateConstructorUsedError;
  String? get companyUrl => throw _privateConstructorUsedError;
  int? get marketRank => throw _privateConstructorUsedError;
  int? get marketTotalMembers => throw _privateConstructorUsedError;

  /// Serializes this StockDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockDetailCopyWith<StockDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockDetailCopyWith<$Res> {
  factory $StockDetailCopyWith(
          StockDetail value, $Res Function(StockDetail) then) =
      _$StockDetailCopyWithImpl<$Res, StockDetail>;
  @useResult
  $Res call(
      {Stock stock,
      StockPrice latestPrice,
      JittaScore jittaScore,
      List<StockPrice> priceHistory,
      Map<String, double> factorScores,
      DateTime? ipoDate,
      String? companyUrl,
      int? marketRank,
      int? marketTotalMembers});

  $StockCopyWith<$Res> get stock;
  $StockPriceCopyWith<$Res> get latestPrice;
  $JittaScoreCopyWith<$Res> get jittaScore;
}

/// @nodoc
class _$StockDetailCopyWithImpl<$Res, $Val extends StockDetail>
    implements $StockDetailCopyWith<$Res> {
  _$StockDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stock = null,
    Object? latestPrice = null,
    Object? jittaScore = null,
    Object? priceHistory = null,
    Object? factorScores = null,
    Object? ipoDate = freezed,
    Object? companyUrl = freezed,
    Object? marketRank = freezed,
    Object? marketTotalMembers = freezed,
  }) {
    return _then(_value.copyWith(
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as Stock,
      latestPrice: null == latestPrice
          ? _value.latestPrice
          : latestPrice // ignore: cast_nullable_to_non_nullable
              as StockPrice,
      jittaScore: null == jittaScore
          ? _value.jittaScore
          : jittaScore // ignore: cast_nullable_to_non_nullable
              as JittaScore,
      priceHistory: null == priceHistory
          ? _value.priceHistory
          : priceHistory // ignore: cast_nullable_to_non_nullable
              as List<StockPrice>,
      factorScores: null == factorScores
          ? _value.factorScores
          : factorScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      ipoDate: freezed == ipoDate
          ? _value.ipoDate
          : ipoDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      companyUrl: freezed == companyUrl
          ? _value.companyUrl
          : companyUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      marketRank: freezed == marketRank
          ? _value.marketRank
          : marketRank // ignore: cast_nullable_to_non_nullable
              as int?,
      marketTotalMembers: freezed == marketTotalMembers
          ? _value.marketTotalMembers
          : marketTotalMembers // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StockCopyWith<$Res> get stock {
    return $StockCopyWith<$Res>(_value.stock, (value) {
      return _then(_value.copyWith(stock: value) as $Val);
    });
  }

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StockPriceCopyWith<$Res> get latestPrice {
    return $StockPriceCopyWith<$Res>(_value.latestPrice, (value) {
      return _then(_value.copyWith(latestPrice: value) as $Val);
    });
  }

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JittaScoreCopyWith<$Res> get jittaScore {
    return $JittaScoreCopyWith<$Res>(_value.jittaScore, (value) {
      return _then(_value.copyWith(jittaScore: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StockDetailImplCopyWith<$Res>
    implements $StockDetailCopyWith<$Res> {
  factory _$$StockDetailImplCopyWith(
          _$StockDetailImpl value, $Res Function(_$StockDetailImpl) then) =
      __$$StockDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Stock stock,
      StockPrice latestPrice,
      JittaScore jittaScore,
      List<StockPrice> priceHistory,
      Map<String, double> factorScores,
      DateTime? ipoDate,
      String? companyUrl,
      int? marketRank,
      int? marketTotalMembers});

  @override
  $StockCopyWith<$Res> get stock;
  @override
  $StockPriceCopyWith<$Res> get latestPrice;
  @override
  $JittaScoreCopyWith<$Res> get jittaScore;
}

/// @nodoc
class __$$StockDetailImplCopyWithImpl<$Res>
    extends _$StockDetailCopyWithImpl<$Res, _$StockDetailImpl>
    implements _$$StockDetailImplCopyWith<$Res> {
  __$$StockDetailImplCopyWithImpl(
      _$StockDetailImpl _value, $Res Function(_$StockDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stock = null,
    Object? latestPrice = null,
    Object? jittaScore = null,
    Object? priceHistory = null,
    Object? factorScores = null,
    Object? ipoDate = freezed,
    Object? companyUrl = freezed,
    Object? marketRank = freezed,
    Object? marketTotalMembers = freezed,
  }) {
    return _then(_$StockDetailImpl(
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as Stock,
      latestPrice: null == latestPrice
          ? _value.latestPrice
          : latestPrice // ignore: cast_nullable_to_non_nullable
              as StockPrice,
      jittaScore: null == jittaScore
          ? _value.jittaScore
          : jittaScore // ignore: cast_nullable_to_non_nullable
              as JittaScore,
      priceHistory: null == priceHistory
          ? _value._priceHistory
          : priceHistory // ignore: cast_nullable_to_non_nullable
              as List<StockPrice>,
      factorScores: null == factorScores
          ? _value._factorScores
          : factorScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      ipoDate: freezed == ipoDate
          ? _value.ipoDate
          : ipoDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      companyUrl: freezed == companyUrl
          ? _value.companyUrl
          : companyUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      marketRank: freezed == marketRank
          ? _value.marketRank
          : marketRank // ignore: cast_nullable_to_non_nullable
              as int?,
      marketTotalMembers: freezed == marketTotalMembers
          ? _value.marketTotalMembers
          : marketTotalMembers // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockDetailImpl implements _StockDetail {
  const _$StockDetailImpl(
      {required this.stock,
      required this.latestPrice,
      required this.jittaScore,
      required final List<StockPrice> priceHistory,
      required final Map<String, double> factorScores,
      this.ipoDate,
      this.companyUrl,
      this.marketRank,
      this.marketTotalMembers})
      : _priceHistory = priceHistory,
        _factorScores = factorScores;

  factory _$StockDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockDetailImplFromJson(json);

  @override
  final Stock stock;
  @override
  final StockPrice latestPrice;
  @override
  final JittaScore jittaScore;
  final List<StockPrice> _priceHistory;
  @override
  List<StockPrice> get priceHistory {
    if (_priceHistory is EqualUnmodifiableListView) return _priceHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_priceHistory);
  }

  final Map<String, double> _factorScores;
  @override
  Map<String, double> get factorScores {
    if (_factorScores is EqualUnmodifiableMapView) return _factorScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_factorScores);
  }

  @override
  final DateTime? ipoDate;
  @override
  final String? companyUrl;
  @override
  final int? marketRank;
  @override
  final int? marketTotalMembers;

  @override
  String toString() {
    return 'StockDetail(stock: $stock, latestPrice: $latestPrice, jittaScore: $jittaScore, priceHistory: $priceHistory, factorScores: $factorScores, ipoDate: $ipoDate, companyUrl: $companyUrl, marketRank: $marketRank, marketTotalMembers: $marketTotalMembers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockDetailImpl &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.latestPrice, latestPrice) ||
                other.latestPrice == latestPrice) &&
            (identical(other.jittaScore, jittaScore) ||
                other.jittaScore == jittaScore) &&
            const DeepCollectionEquality()
                .equals(other._priceHistory, _priceHistory) &&
            const DeepCollectionEquality()
                .equals(other._factorScores, _factorScores) &&
            (identical(other.ipoDate, ipoDate) || other.ipoDate == ipoDate) &&
            (identical(other.companyUrl, companyUrl) ||
                other.companyUrl == companyUrl) &&
            (identical(other.marketRank, marketRank) ||
                other.marketRank == marketRank) &&
            (identical(other.marketTotalMembers, marketTotalMembers) ||
                other.marketTotalMembers == marketTotalMembers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      stock,
      latestPrice,
      jittaScore,
      const DeepCollectionEquality().hash(_priceHistory),
      const DeepCollectionEquality().hash(_factorScores),
      ipoDate,
      companyUrl,
      marketRank,
      marketTotalMembers);

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockDetailImplCopyWith<_$StockDetailImpl> get copyWith =>
      __$$StockDetailImplCopyWithImpl<_$StockDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockDetailImplToJson(
      this,
    );
  }
}

abstract class _StockDetail implements StockDetail {
  const factory _StockDetail(
      {required final Stock stock,
      required final StockPrice latestPrice,
      required final JittaScore jittaScore,
      required final List<StockPrice> priceHistory,
      required final Map<String, double> factorScores,
      final DateTime? ipoDate,
      final String? companyUrl,
      final int? marketRank,
      final int? marketTotalMembers}) = _$StockDetailImpl;

  factory _StockDetail.fromJson(Map<String, dynamic> json) =
      _$StockDetailImpl.fromJson;

  @override
  Stock get stock;
  @override
  StockPrice get latestPrice;
  @override
  JittaScore get jittaScore;
  @override
  List<StockPrice> get priceHistory;
  @override
  Map<String, double> get factorScores;
  @override
  DateTime? get ipoDate;
  @override
  String? get companyUrl;
  @override
  int? get marketRank;
  @override
  int? get marketTotalMembers;

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockDetailImplCopyWith<_$StockDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
