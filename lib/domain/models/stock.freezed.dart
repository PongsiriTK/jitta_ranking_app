// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Stock _$StockFromJson(Map<String, dynamic> json) {
  return _Stock.fromJson(json);
}

/// @nodoc
mixin _$Stock {
  String get id => throw _privateConstructorUsedError;
  int get stockId => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get exchange => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get jittaScore => throw _privateConstructorUsedError;
  String get nativeName => throw _privateConstructorUsedError;
  Sector get sector => throw _privateConstructorUsedError;
  String get industry => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  bool get isFollowing => throw _privateConstructorUsedError;
  String? get market => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get currencySign => throw _privateConstructorUsedError;
  String? get priceCurrency => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get updatedFinancialComplete => throw _privateConstructorUsedError;

  /// Serializes this Stock to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockCopyWith<Stock> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockCopyWith<$Res> {
  factory $StockCopyWith(Stock value, $Res Function(Stock) then) =
      _$StockCopyWithImpl<$Res, Stock>;
  @useResult
  $Res call(
      {String id,
      int stockId,
      int rank,
      String symbol,
      String exchange,
      String title,
      double jittaScore,
      String nativeName,
      Sector sector,
      String industry,
      String? summary,
      bool isFollowing,
      String? market,
      String? currency,
      String? currencySign,
      String? priceCurrency,
      String? status,
      DateTime? updatedFinancialComplete});

  $SectorCopyWith<$Res> get sector;
}

/// @nodoc
class _$StockCopyWithImpl<$Res, $Val extends Stock>
    implements $StockCopyWith<$Res> {
  _$StockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stockId = null,
    Object? rank = null,
    Object? symbol = null,
    Object? exchange = null,
    Object? title = null,
    Object? jittaScore = null,
    Object? nativeName = null,
    Object? sector = null,
    Object? industry = null,
    Object? summary = freezed,
    Object? isFollowing = null,
    Object? market = freezed,
    Object? currency = freezed,
    Object? currencySign = freezed,
    Object? priceCurrency = freezed,
    Object? status = freezed,
    Object? updatedFinancialComplete = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stockId: null == stockId
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      jittaScore: null == jittaScore
          ? _value.jittaScore
          : jittaScore // ignore: cast_nullable_to_non_nullable
              as double,
      nativeName: null == nativeName
          ? _value.nativeName
          : nativeName // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as Sector,
      industry: null == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      market: freezed == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySign: freezed == currencySign
          ? _value.currencySign
          : currencySign // ignore: cast_nullable_to_non_nullable
              as String?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedFinancialComplete: freezed == updatedFinancialComplete
          ? _value.updatedFinancialComplete
          : updatedFinancialComplete // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectorCopyWith<$Res> get sector {
    return $SectorCopyWith<$Res>(_value.sector, (value) {
      return _then(_value.copyWith(sector: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StockImplCopyWith<$Res> implements $StockCopyWith<$Res> {
  factory _$$StockImplCopyWith(
          _$StockImpl value, $Res Function(_$StockImpl) then) =
      __$$StockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int stockId,
      int rank,
      String symbol,
      String exchange,
      String title,
      double jittaScore,
      String nativeName,
      Sector sector,
      String industry,
      String? summary,
      bool isFollowing,
      String? market,
      String? currency,
      String? currencySign,
      String? priceCurrency,
      String? status,
      DateTime? updatedFinancialComplete});

  @override
  $SectorCopyWith<$Res> get sector;
}

/// @nodoc
class __$$StockImplCopyWithImpl<$Res>
    extends _$StockCopyWithImpl<$Res, _$StockImpl>
    implements _$$StockImplCopyWith<$Res> {
  __$$StockImplCopyWithImpl(
      _$StockImpl _value, $Res Function(_$StockImpl) _then)
      : super(_value, _then);

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stockId = null,
    Object? rank = null,
    Object? symbol = null,
    Object? exchange = null,
    Object? title = null,
    Object? jittaScore = null,
    Object? nativeName = null,
    Object? sector = null,
    Object? industry = null,
    Object? summary = freezed,
    Object? isFollowing = null,
    Object? market = freezed,
    Object? currency = freezed,
    Object? currencySign = freezed,
    Object? priceCurrency = freezed,
    Object? status = freezed,
    Object? updatedFinancialComplete = freezed,
  }) {
    return _then(_$StockImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stockId: null == stockId
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      jittaScore: null == jittaScore
          ? _value.jittaScore
          : jittaScore // ignore: cast_nullable_to_non_nullable
              as double,
      nativeName: null == nativeName
          ? _value.nativeName
          : nativeName // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as Sector,
      industry: null == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      market: freezed == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySign: freezed == currencySign
          ? _value.currencySign
          : currencySign // ignore: cast_nullable_to_non_nullable
              as String?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedFinancialComplete: freezed == updatedFinancialComplete
          ? _value.updatedFinancialComplete
          : updatedFinancialComplete // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockImpl implements _Stock {
  const _$StockImpl(
      {required this.id,
      required this.stockId,
      required this.rank,
      required this.symbol,
      required this.exchange,
      required this.title,
      required this.jittaScore,
      required this.nativeName,
      required this.sector,
      required this.industry,
      this.summary,
      this.isFollowing = false,
      this.market,
      this.currency,
      this.currencySign,
      this.priceCurrency,
      this.status,
      this.updatedFinancialComplete});

  factory _$StockImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockImplFromJson(json);

  @override
  final String id;
  @override
  final int stockId;
  @override
  final int rank;
  @override
  final String symbol;
  @override
  final String exchange;
  @override
  final String title;
  @override
  final double jittaScore;
  @override
  final String nativeName;
  @override
  final Sector sector;
  @override
  final String industry;
  @override
  final String? summary;
  @override
  @JsonKey()
  final bool isFollowing;
  @override
  final String? market;
  @override
  final String? currency;
  @override
  final String? currencySign;
  @override
  final String? priceCurrency;
  @override
  final String? status;
  @override
  final DateTime? updatedFinancialComplete;

  @override
  String toString() {
    return 'Stock(id: $id, stockId: $stockId, rank: $rank, symbol: $symbol, exchange: $exchange, title: $title, jittaScore: $jittaScore, nativeName: $nativeName, sector: $sector, industry: $industry, summary: $summary, isFollowing: $isFollowing, market: $market, currency: $currency, currencySign: $currencySign, priceCurrency: $priceCurrency, status: $status, updatedFinancialComplete: $updatedFinancialComplete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stockId, stockId) || other.stockId == stockId) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.exchange, exchange) ||
                other.exchange == exchange) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.jittaScore, jittaScore) ||
                other.jittaScore == jittaScore) &&
            (identical(other.nativeName, nativeName) ||
                other.nativeName == nativeName) &&
            (identical(other.sector, sector) || other.sector == sector) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            (identical(other.market, market) || other.market == market) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.currencySign, currencySign) ||
                other.currencySign == currencySign) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(
                    other.updatedFinancialComplete, updatedFinancialComplete) ||
                other.updatedFinancialComplete == updatedFinancialComplete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      stockId,
      rank,
      symbol,
      exchange,
      title,
      jittaScore,
      nativeName,
      sector,
      industry,
      summary,
      isFollowing,
      market,
      currency,
      currencySign,
      priceCurrency,
      status,
      updatedFinancialComplete);

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockImplCopyWith<_$StockImpl> get copyWith =>
      __$$StockImplCopyWithImpl<_$StockImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockImplToJson(
      this,
    );
  }
}

abstract class _Stock implements Stock {
  const factory _Stock(
      {required final String id,
      required final int stockId,
      required final int rank,
      required final String symbol,
      required final String exchange,
      required final String title,
      required final double jittaScore,
      required final String nativeName,
      required final Sector sector,
      required final String industry,
      final String? summary,
      final bool isFollowing,
      final String? market,
      final String? currency,
      final String? currencySign,
      final String? priceCurrency,
      final String? status,
      final DateTime? updatedFinancialComplete}) = _$StockImpl;

  factory _Stock.fromJson(Map<String, dynamic> json) = _$StockImpl.fromJson;

  @override
  String get id;
  @override
  int get stockId;
  @override
  int get rank;
  @override
  String get symbol;
  @override
  String get exchange;
  @override
  String get title;
  @override
  double get jittaScore;
  @override
  String get nativeName;
  @override
  Sector get sector;
  @override
  String get industry;
  @override
  String? get summary;
  @override
  bool get isFollowing;
  @override
  String? get market;
  @override
  String? get currency;
  @override
  String? get currencySign;
  @override
  String? get priceCurrency;
  @override
  String? get status;
  @override
  DateTime? get updatedFinancialComplete;

  /// Create a copy of Stock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockImplCopyWith<_$StockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
