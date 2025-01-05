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
  String get id => throw _privateConstructorUsedError;
  int get stockId => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  Sector get sector => throw _privateConstructorUsedError;
  String get market => throw _privateConstructorUsedError;
  String get industry => throw _privateConstructorUsedError;
  String get exchange => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get currencySign => throw _privateConstructorUsedError;
  String get priceCurrency => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get nativeName => throw _privateConstructorUsedError;
  bool get isFollowing => throw _privateConstructorUsedError;
  bool get updatedFinancialComplete => throw _privateConstructorUsedError;
  StockPrice get latestPrice => throw _privateConstructorUsedError;
  LossChance get lossChance => throw _privateConstructorUsedError;
  MarketComparison get marketComparison => throw _privateConstructorUsedError;
  CompanyInfo get company => throw _privateConstructorUsedError;
  JittaInfo get jitta => throw _privateConstructorUsedError;

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
      {String id,
      int stockId,
      String symbol,
      String title,
      String? summary,
      Sector sector,
      String market,
      String industry,
      String exchange,
      String currency,
      String currencySign,
      String priceCurrency,
      String status,
      String nativeName,
      bool isFollowing,
      bool updatedFinancialComplete,
      StockPrice latestPrice,
      LossChance lossChance,
      MarketComparison marketComparison,
      CompanyInfo company,
      JittaInfo jitta});

  $SectorCopyWith<$Res> get sector;
  $StockPriceCopyWith<$Res> get latestPrice;
  $LossChanceCopyWith<$Res> get lossChance;
  $MarketComparisonCopyWith<$Res> get marketComparison;
  $CompanyInfoCopyWith<$Res> get company;
  $JittaInfoCopyWith<$Res> get jitta;
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
    Object? id = null,
    Object? stockId = null,
    Object? symbol = null,
    Object? title = null,
    Object? summary = freezed,
    Object? sector = null,
    Object? market = null,
    Object? industry = null,
    Object? exchange = null,
    Object? currency = null,
    Object? currencySign = null,
    Object? priceCurrency = null,
    Object? status = null,
    Object? nativeName = null,
    Object? isFollowing = null,
    Object? updatedFinancialComplete = null,
    Object? latestPrice = null,
    Object? lossChance = null,
    Object? marketComparison = null,
    Object? company = null,
    Object? jitta = null,
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
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as Sector,
      market: null == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      industry: null == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      currencySign: null == currencySign
          ? _value.currencySign
          : currencySign // ignore: cast_nullable_to_non_nullable
              as String,
      priceCurrency: null == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      nativeName: null == nativeName
          ? _value.nativeName
          : nativeName // ignore: cast_nullable_to_non_nullable
              as String,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedFinancialComplete: null == updatedFinancialComplete
          ? _value.updatedFinancialComplete
          : updatedFinancialComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      latestPrice: null == latestPrice
          ? _value.latestPrice
          : latestPrice // ignore: cast_nullable_to_non_nullable
              as StockPrice,
      lossChance: null == lossChance
          ? _value.lossChance
          : lossChance // ignore: cast_nullable_to_non_nullable
              as LossChance,
      marketComparison: null == marketComparison
          ? _value.marketComparison
          : marketComparison // ignore: cast_nullable_to_non_nullable
              as MarketComparison,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyInfo,
      jitta: null == jitta
          ? _value.jitta
          : jitta // ignore: cast_nullable_to_non_nullable
              as JittaInfo,
    ) as $Val);
  }

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectorCopyWith<$Res> get sector {
    return $SectorCopyWith<$Res>(_value.sector, (value) {
      return _then(_value.copyWith(sector: value) as $Val);
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
  $LossChanceCopyWith<$Res> get lossChance {
    return $LossChanceCopyWith<$Res>(_value.lossChance, (value) {
      return _then(_value.copyWith(lossChance: value) as $Val);
    });
  }

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MarketComparisonCopyWith<$Res> get marketComparison {
    return $MarketComparisonCopyWith<$Res>(_value.marketComparison, (value) {
      return _then(_value.copyWith(marketComparison: value) as $Val);
    });
  }

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyInfoCopyWith<$Res> get company {
    return $CompanyInfoCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JittaInfoCopyWith<$Res> get jitta {
    return $JittaInfoCopyWith<$Res>(_value.jitta, (value) {
      return _then(_value.copyWith(jitta: value) as $Val);
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
      {String id,
      int stockId,
      String symbol,
      String title,
      String? summary,
      Sector sector,
      String market,
      String industry,
      String exchange,
      String currency,
      String currencySign,
      String priceCurrency,
      String status,
      String nativeName,
      bool isFollowing,
      bool updatedFinancialComplete,
      StockPrice latestPrice,
      LossChance lossChance,
      MarketComparison marketComparison,
      CompanyInfo company,
      JittaInfo jitta});

  @override
  $SectorCopyWith<$Res> get sector;
  @override
  $StockPriceCopyWith<$Res> get latestPrice;
  @override
  $LossChanceCopyWith<$Res> get lossChance;
  @override
  $MarketComparisonCopyWith<$Res> get marketComparison;
  @override
  $CompanyInfoCopyWith<$Res> get company;
  @override
  $JittaInfoCopyWith<$Res> get jitta;
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
    Object? id = null,
    Object? stockId = null,
    Object? symbol = null,
    Object? title = null,
    Object? summary = freezed,
    Object? sector = null,
    Object? market = null,
    Object? industry = null,
    Object? exchange = null,
    Object? currency = null,
    Object? currencySign = null,
    Object? priceCurrency = null,
    Object? status = null,
    Object? nativeName = null,
    Object? isFollowing = null,
    Object? updatedFinancialComplete = null,
    Object? latestPrice = null,
    Object? lossChance = null,
    Object? marketComparison = null,
    Object? company = null,
    Object? jitta = null,
  }) {
    return _then(_$StockDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stockId: null == stockId
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as int,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as Sector,
      market: null == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      industry: null == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      currencySign: null == currencySign
          ? _value.currencySign
          : currencySign // ignore: cast_nullable_to_non_nullable
              as String,
      priceCurrency: null == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      nativeName: null == nativeName
          ? _value.nativeName
          : nativeName // ignore: cast_nullable_to_non_nullable
              as String,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedFinancialComplete: null == updatedFinancialComplete
          ? _value.updatedFinancialComplete
          : updatedFinancialComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      latestPrice: null == latestPrice
          ? _value.latestPrice
          : latestPrice // ignore: cast_nullable_to_non_nullable
              as StockPrice,
      lossChance: null == lossChance
          ? _value.lossChance
          : lossChance // ignore: cast_nullable_to_non_nullable
              as LossChance,
      marketComparison: null == marketComparison
          ? _value.marketComparison
          : marketComparison // ignore: cast_nullable_to_non_nullable
              as MarketComparison,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyInfo,
      jitta: null == jitta
          ? _value.jitta
          : jitta // ignore: cast_nullable_to_non_nullable
              as JittaInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockDetailImpl implements _StockDetail {
  const _$StockDetailImpl(
      {required this.id,
      required this.stockId,
      required this.symbol,
      required this.title,
      this.summary,
      required this.sector,
      required this.market,
      required this.industry,
      required this.exchange,
      required this.currency,
      required this.currencySign,
      required this.priceCurrency,
      required this.status,
      required this.nativeName,
      required this.isFollowing,
      required this.updatedFinancialComplete,
      required this.latestPrice,
      required this.lossChance,
      required this.marketComparison,
      required this.company,
      required this.jitta});

  factory _$StockDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockDetailImplFromJson(json);

  @override
  final String id;
  @override
  final int stockId;
  @override
  final String symbol;
  @override
  final String title;
  @override
  final String? summary;
  @override
  final Sector sector;
  @override
  final String market;
  @override
  final String industry;
  @override
  final String exchange;
  @override
  final String currency;
  @override
  final String currencySign;
  @override
  final String priceCurrency;
  @override
  final String status;
  @override
  final String nativeName;
  @override
  final bool isFollowing;
  @override
  final bool updatedFinancialComplete;
  @override
  final StockPrice latestPrice;
  @override
  final LossChance lossChance;
  @override
  final MarketComparison marketComparison;
  @override
  final CompanyInfo company;
  @override
  final JittaInfo jitta;

  @override
  String toString() {
    return 'StockDetail(id: $id, stockId: $stockId, symbol: $symbol, title: $title, summary: $summary, sector: $sector, market: $market, industry: $industry, exchange: $exchange, currency: $currency, currencySign: $currencySign, priceCurrency: $priceCurrency, status: $status, nativeName: $nativeName, isFollowing: $isFollowing, updatedFinancialComplete: $updatedFinancialComplete, latestPrice: $latestPrice, lossChance: $lossChance, marketComparison: $marketComparison, company: $company, jitta: $jitta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stockId, stockId) || other.stockId == stockId) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.sector, sector) || other.sector == sector) &&
            (identical(other.market, market) || other.market == market) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.exchange, exchange) ||
                other.exchange == exchange) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.currencySign, currencySign) ||
                other.currencySign == currencySign) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.nativeName, nativeName) ||
                other.nativeName == nativeName) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            (identical(
                    other.updatedFinancialComplete, updatedFinancialComplete) ||
                other.updatedFinancialComplete == updatedFinancialComplete) &&
            (identical(other.latestPrice, latestPrice) ||
                other.latestPrice == latestPrice) &&
            (identical(other.lossChance, lossChance) ||
                other.lossChance == lossChance) &&
            (identical(other.marketComparison, marketComparison) ||
                other.marketComparison == marketComparison) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.jitta, jitta) || other.jitta == jitta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        stockId,
        symbol,
        title,
        summary,
        sector,
        market,
        industry,
        exchange,
        currency,
        currencySign,
        priceCurrency,
        status,
        nativeName,
        isFollowing,
        updatedFinancialComplete,
        latestPrice,
        lossChance,
        marketComparison,
        company,
        jitta
      ]);

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
      {required final String id,
      required final int stockId,
      required final String symbol,
      required final String title,
      final String? summary,
      required final Sector sector,
      required final String market,
      required final String industry,
      required final String exchange,
      required final String currency,
      required final String currencySign,
      required final String priceCurrency,
      required final String status,
      required final String nativeName,
      required final bool isFollowing,
      required final bool updatedFinancialComplete,
      required final StockPrice latestPrice,
      required final LossChance lossChance,
      required final MarketComparison marketComparison,
      required final CompanyInfo company,
      required final JittaInfo jitta}) = _$StockDetailImpl;

  factory _StockDetail.fromJson(Map<String, dynamic> json) =
      _$StockDetailImpl.fromJson;

  @override
  String get id;
  @override
  int get stockId;
  @override
  String get symbol;
  @override
  String get title;
  @override
  String? get summary;
  @override
  Sector get sector;
  @override
  String get market;
  @override
  String get industry;
  @override
  String get exchange;
  @override
  String get currency;
  @override
  String get currencySign;
  @override
  String get priceCurrency;
  @override
  String get status;
  @override
  String get nativeName;
  @override
  bool get isFollowing;
  @override
  bool get updatedFinancialComplete;
  @override
  StockPrice get latestPrice;
  @override
  LossChance get lossChance;
  @override
  MarketComparison get marketComparison;
  @override
  CompanyInfo get company;
  @override
  JittaInfo get jitta;

  /// Create a copy of StockDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockDetailImplCopyWith<_$StockDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LossChance _$LossChanceFromJson(Map<String, dynamic> json) {
  return _LossChance.fromJson(json);
}

/// @nodoc
mixin _$LossChance {
  double get last => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this LossChance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LossChance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LossChanceCopyWith<LossChance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LossChanceCopyWith<$Res> {
  factory $LossChanceCopyWith(
          LossChance value, $Res Function(LossChance) then) =
      _$LossChanceCopyWithImpl<$Res, LossChance>;
  @useResult
  $Res call({double last, DateTime updatedAt});
}

/// @nodoc
class _$LossChanceCopyWithImpl<$Res, $Val extends LossChance>
    implements $LossChanceCopyWith<$Res> {
  _$LossChanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LossChance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as double,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LossChanceImplCopyWith<$Res>
    implements $LossChanceCopyWith<$Res> {
  factory _$$LossChanceImplCopyWith(
          _$LossChanceImpl value, $Res Function(_$LossChanceImpl) then) =
      __$$LossChanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double last, DateTime updatedAt});
}

/// @nodoc
class __$$LossChanceImplCopyWithImpl<$Res>
    extends _$LossChanceCopyWithImpl<$Res, _$LossChanceImpl>
    implements _$$LossChanceImplCopyWith<$Res> {
  __$$LossChanceImplCopyWithImpl(
      _$LossChanceImpl _value, $Res Function(_$LossChanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of LossChance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last = null,
    Object? updatedAt = null,
  }) {
    return _then(_$LossChanceImpl(
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as double,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LossChanceImpl implements _LossChance {
  const _$LossChanceImpl({required this.last, required this.updatedAt});

  factory _$LossChanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$LossChanceImplFromJson(json);

  @override
  final double last;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'LossChance(last: $last, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LossChanceImpl &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, last, updatedAt);

  /// Create a copy of LossChance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LossChanceImplCopyWith<_$LossChanceImpl> get copyWith =>
      __$$LossChanceImplCopyWithImpl<_$LossChanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LossChanceImplToJson(
      this,
    );
  }
}

abstract class _LossChance implements LossChance {
  const factory _LossChance(
      {required final double last,
      required final DateTime updatedAt}) = _$LossChanceImpl;

  factory _LossChance.fromJson(Map<String, dynamic> json) =
      _$LossChanceImpl.fromJson;

  @override
  double get last;
  @override
  DateTime get updatedAt;

  /// Create a copy of LossChance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LossChanceImplCopyWith<_$LossChanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketComparison _$MarketComparisonFromJson(Map<String, dynamic> json) {
  return _MarketComparison.fromJson(json);
}

/// @nodoc
mixin _$MarketComparison {
  int get rank => throw _privateConstructorUsedError;
  int get member => throw _privateConstructorUsedError;

  /// Serializes this MarketComparison to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketComparison
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketComparisonCopyWith<MarketComparison> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketComparisonCopyWith<$Res> {
  factory $MarketComparisonCopyWith(
          MarketComparison value, $Res Function(MarketComparison) then) =
      _$MarketComparisonCopyWithImpl<$Res, MarketComparison>;
  @useResult
  $Res call({int rank, int member});
}

/// @nodoc
class _$MarketComparisonCopyWithImpl<$Res, $Val extends MarketComparison>
    implements $MarketComparisonCopyWith<$Res> {
  _$MarketComparisonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketComparison
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? member = null,
  }) {
    return _then(_value.copyWith(
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketComparisonImplCopyWith<$Res>
    implements $MarketComparisonCopyWith<$Res> {
  factory _$$MarketComparisonImplCopyWith(_$MarketComparisonImpl value,
          $Res Function(_$MarketComparisonImpl) then) =
      __$$MarketComparisonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rank, int member});
}

/// @nodoc
class __$$MarketComparisonImplCopyWithImpl<$Res>
    extends _$MarketComparisonCopyWithImpl<$Res, _$MarketComparisonImpl>
    implements _$$MarketComparisonImplCopyWith<$Res> {
  __$$MarketComparisonImplCopyWithImpl(_$MarketComparisonImpl _value,
      $Res Function(_$MarketComparisonImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketComparison
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? member = null,
  }) {
    return _then(_$MarketComparisonImpl(
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketComparisonImpl implements _MarketComparison {
  const _$MarketComparisonImpl({required this.rank, required this.member});

  factory _$MarketComparisonImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketComparisonImplFromJson(json);

  @override
  final int rank;
  @override
  final int member;

  @override
  String toString() {
    return 'MarketComparison(rank: $rank, member: $member)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketComparisonImpl &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.member, member) || other.member == member));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rank, member);

  /// Create a copy of MarketComparison
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketComparisonImplCopyWith<_$MarketComparisonImpl> get copyWith =>
      __$$MarketComparisonImplCopyWithImpl<_$MarketComparisonImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketComparisonImplToJson(
      this,
    );
  }
}

abstract class _MarketComparison implements MarketComparison {
  const factory _MarketComparison(
      {required final int rank,
      required final int member}) = _$MarketComparisonImpl;

  factory _MarketComparison.fromJson(Map<String, dynamic> json) =
      _$MarketComparisonImpl.fromJson;

  @override
  int get rank;
  @override
  int get member;

  /// Create a copy of MarketComparison
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketComparisonImplCopyWith<_$MarketComparisonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompanyInfo _$CompanyInfoFromJson(Map<String, dynamic> json) {
  return _CompanyInfo.fromJson(json);
}

/// @nodoc
mixin _$CompanyInfo {
  DateTime? get ipoDate => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this CompanyInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanyInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyInfoCopyWith<CompanyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyInfoCopyWith<$Res> {
  factory $CompanyInfoCopyWith(
          CompanyInfo value, $Res Function(CompanyInfo) then) =
      _$CompanyInfoCopyWithImpl<$Res, CompanyInfo>;
  @useResult
  $Res call({DateTime? ipoDate, String? url});
}

/// @nodoc
class _$CompanyInfoCopyWithImpl<$Res, $Val extends CompanyInfo>
    implements $CompanyInfoCopyWith<$Res> {
  _$CompanyInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ipoDate = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      ipoDate: freezed == ipoDate
          ? _value.ipoDate
          : ipoDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyInfoImplCopyWith<$Res>
    implements $CompanyInfoCopyWith<$Res> {
  factory _$$CompanyInfoImplCopyWith(
          _$CompanyInfoImpl value, $Res Function(_$CompanyInfoImpl) then) =
      __$$CompanyInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? ipoDate, String? url});
}

/// @nodoc
class __$$CompanyInfoImplCopyWithImpl<$Res>
    extends _$CompanyInfoCopyWithImpl<$Res, _$CompanyInfoImpl>
    implements _$$CompanyInfoImplCopyWith<$Res> {
  __$$CompanyInfoImplCopyWithImpl(
      _$CompanyInfoImpl _value, $Res Function(_$CompanyInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ipoDate = freezed,
    Object? url = freezed,
  }) {
    return _then(_$CompanyInfoImpl(
      ipoDate: freezed == ipoDate
          ? _value.ipoDate
          : ipoDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyInfoImpl implements _CompanyInfo {
  const _$CompanyInfoImpl({this.ipoDate, this.url});

  factory _$CompanyInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyInfoImplFromJson(json);

  @override
  final DateTime? ipoDate;
  @override
  final String? url;

  @override
  String toString() {
    return 'CompanyInfo(ipoDate: $ipoDate, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyInfoImpl &&
            (identical(other.ipoDate, ipoDate) || other.ipoDate == ipoDate) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ipoDate, url);

  /// Create a copy of CompanyInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyInfoImplCopyWith<_$CompanyInfoImpl> get copyWith =>
      __$$CompanyInfoImplCopyWithImpl<_$CompanyInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyInfoImplToJson(
      this,
    );
  }
}

abstract class _CompanyInfo implements CompanyInfo {
  const factory _CompanyInfo({final DateTime? ipoDate, final String? url}) =
      _$CompanyInfoImpl;

  factory _CompanyInfo.fromJson(Map<String, dynamic> json) =
      _$CompanyInfoImpl.fromJson;

  @override
  DateTime? get ipoDate;
  @override
  String? get url;

  /// Create a copy of CompanyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyInfoImplCopyWith<_$CompanyInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JittaInfo _$JittaInfoFromJson(Map<String, dynamic> json) {
  return _JittaInfo.fromJson(json);
}

/// @nodoc
mixin _$JittaInfo {
  PriceDiff get priceDiff => throw _privateConstructorUsedError;
  MonthlyPrice get monthlyPrice => throw _privateConstructorUsedError;
  JittaScore get score => throw _privateConstructorUsedError;
  JittaLine get line => throw _privateConstructorUsedError;
  JittaFactor get factor => throw _privateConstructorUsedError;
  JittaSign get sign => throw _privateConstructorUsedError;

  /// Serializes this JittaInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JittaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JittaInfoCopyWith<JittaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JittaInfoCopyWith<$Res> {
  factory $JittaInfoCopyWith(JittaInfo value, $Res Function(JittaInfo) then) =
      _$JittaInfoCopyWithImpl<$Res, JittaInfo>;
  @useResult
  $Res call(
      {PriceDiff priceDiff,
      MonthlyPrice monthlyPrice,
      JittaScore score,
      JittaLine line,
      JittaFactor factor,
      JittaSign sign});

  $PriceDiffCopyWith<$Res> get priceDiff;
  $MonthlyPriceCopyWith<$Res> get monthlyPrice;
  $JittaScoreCopyWith<$Res> get score;
  $JittaLineCopyWith<$Res> get line;
  $JittaFactorCopyWith<$Res> get factor;
  $JittaSignCopyWith<$Res> get sign;
}

/// @nodoc
class _$JittaInfoCopyWithImpl<$Res, $Val extends JittaInfo>
    implements $JittaInfoCopyWith<$Res> {
  _$JittaInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JittaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceDiff = null,
    Object? monthlyPrice = null,
    Object? score = null,
    Object? line = null,
    Object? factor = null,
    Object? sign = null,
  }) {
    return _then(_value.copyWith(
      priceDiff: null == priceDiff
          ? _value.priceDiff
          : priceDiff // ignore: cast_nullable_to_non_nullable
              as PriceDiff,
      monthlyPrice: null == monthlyPrice
          ? _value.monthlyPrice
          : monthlyPrice // ignore: cast_nullable_to_non_nullable
              as MonthlyPrice,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as JittaScore,
      line: null == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as JittaLine,
      factor: null == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as JittaFactor,
      sign: null == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as JittaSign,
    ) as $Val);
  }

  /// Create a copy of JittaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceDiffCopyWith<$Res> get priceDiff {
    return $PriceDiffCopyWith<$Res>(_value.priceDiff, (value) {
      return _then(_value.copyWith(priceDiff: value) as $Val);
    });
  }

  /// Create a copy of JittaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonthlyPriceCopyWith<$Res> get monthlyPrice {
    return $MonthlyPriceCopyWith<$Res>(_value.monthlyPrice, (value) {
      return _then(_value.copyWith(monthlyPrice: value) as $Val);
    });
  }

  /// Create a copy of JittaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JittaScoreCopyWith<$Res> get score {
    return $JittaScoreCopyWith<$Res>(_value.score, (value) {
      return _then(_value.copyWith(score: value) as $Val);
    });
  }

  /// Create a copy of JittaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JittaLineCopyWith<$Res> get line {
    return $JittaLineCopyWith<$Res>(_value.line, (value) {
      return _then(_value.copyWith(line: value) as $Val);
    });
  }

  /// Create a copy of JittaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JittaFactorCopyWith<$Res> get factor {
    return $JittaFactorCopyWith<$Res>(_value.factor, (value) {
      return _then(_value.copyWith(factor: value) as $Val);
    });
  }

  /// Create a copy of JittaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JittaSignCopyWith<$Res> get sign {
    return $JittaSignCopyWith<$Res>(_value.sign, (value) {
      return _then(_value.copyWith(sign: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JittaInfoImplCopyWith<$Res>
    implements $JittaInfoCopyWith<$Res> {
  factory _$$JittaInfoImplCopyWith(
          _$JittaInfoImpl value, $Res Function(_$JittaInfoImpl) then) =
      __$$JittaInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PriceDiff priceDiff,
      MonthlyPrice monthlyPrice,
      JittaScore score,
      JittaLine line,
      JittaFactor factor,
      JittaSign sign});

  @override
  $PriceDiffCopyWith<$Res> get priceDiff;
  @override
  $MonthlyPriceCopyWith<$Res> get monthlyPrice;
  @override
  $JittaScoreCopyWith<$Res> get score;
  @override
  $JittaLineCopyWith<$Res> get line;
  @override
  $JittaFactorCopyWith<$Res> get factor;
  @override
  $JittaSignCopyWith<$Res> get sign;
}

/// @nodoc
class __$$JittaInfoImplCopyWithImpl<$Res>
    extends _$JittaInfoCopyWithImpl<$Res, _$JittaInfoImpl>
    implements _$$JittaInfoImplCopyWith<$Res> {
  __$$JittaInfoImplCopyWithImpl(
      _$JittaInfoImpl _value, $Res Function(_$JittaInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of JittaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceDiff = null,
    Object? monthlyPrice = null,
    Object? score = null,
    Object? line = null,
    Object? factor = null,
    Object? sign = null,
  }) {
    return _then(_$JittaInfoImpl(
      priceDiff: null == priceDiff
          ? _value.priceDiff
          : priceDiff // ignore: cast_nullable_to_non_nullable
              as PriceDiff,
      monthlyPrice: null == monthlyPrice
          ? _value.monthlyPrice
          : monthlyPrice // ignore: cast_nullable_to_non_nullable
              as MonthlyPrice,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as JittaScore,
      line: null == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as JittaLine,
      factor: null == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as JittaFactor,
      sign: null == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as JittaSign,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JittaInfoImpl implements _JittaInfo {
  const _$JittaInfoImpl(
      {required this.priceDiff,
      required this.monthlyPrice,
      required this.score,
      required this.line,
      required this.factor,
      required this.sign});

  factory _$JittaInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JittaInfoImplFromJson(json);

  @override
  final PriceDiff priceDiff;
  @override
  final MonthlyPrice monthlyPrice;
  @override
  final JittaScore score;
  @override
  final JittaLine line;
  @override
  final JittaFactor factor;
  @override
  final JittaSign sign;

  @override
  String toString() {
    return 'JittaInfo(priceDiff: $priceDiff, monthlyPrice: $monthlyPrice, score: $score, line: $line, factor: $factor, sign: $sign)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JittaInfoImpl &&
            (identical(other.priceDiff, priceDiff) ||
                other.priceDiff == priceDiff) &&
            (identical(other.monthlyPrice, monthlyPrice) ||
                other.monthlyPrice == monthlyPrice) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.factor, factor) || other.factor == factor) &&
            (identical(other.sign, sign) || other.sign == sign));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, priceDiff, monthlyPrice, score, line, factor, sign);

  /// Create a copy of JittaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JittaInfoImplCopyWith<_$JittaInfoImpl> get copyWith =>
      __$$JittaInfoImplCopyWithImpl<_$JittaInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JittaInfoImplToJson(
      this,
    );
  }
}

abstract class _JittaInfo implements JittaInfo {
  const factory _JittaInfo(
      {required final PriceDiff priceDiff,
      required final MonthlyPrice monthlyPrice,
      required final JittaScore score,
      required final JittaLine line,
      required final JittaFactor factor,
      required final JittaSign sign}) = _$JittaInfoImpl;

  factory _JittaInfo.fromJson(Map<String, dynamic> json) =
      _$JittaInfoImpl.fromJson;

  @override
  PriceDiff get priceDiff;
  @override
  MonthlyPrice get monthlyPrice;
  @override
  JittaScore get score;
  @override
  JittaLine get line;
  @override
  JittaFactor get factor;
  @override
  JittaSign get sign;

  /// Create a copy of JittaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JittaInfoImplCopyWith<_$JittaInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceDiff _$PriceDiffFromJson(Map<String, dynamic> json) {
  return _PriceDiff.fromJson(json);
}

/// @nodoc
mixin _$PriceDiff {
  PriceDiffItem get last => throw _privateConstructorUsedError;
  List<PriceDiffItem> get values => throw _privateConstructorUsedError;

  /// Serializes this PriceDiff to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriceDiff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceDiffCopyWith<PriceDiff> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceDiffCopyWith<$Res> {
  factory $PriceDiffCopyWith(PriceDiff value, $Res Function(PriceDiff) then) =
      _$PriceDiffCopyWithImpl<$Res, PriceDiff>;
  @useResult
  $Res call({PriceDiffItem last, List<PriceDiffItem> values});

  $PriceDiffItemCopyWith<$Res> get last;
}

/// @nodoc
class _$PriceDiffCopyWithImpl<$Res, $Val extends PriceDiff>
    implements $PriceDiffCopyWith<$Res> {
  _$PriceDiffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriceDiff
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
              as PriceDiffItem,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<PriceDiffItem>,
    ) as $Val);
  }

  /// Create a copy of PriceDiff
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceDiffItemCopyWith<$Res> get last {
    return $PriceDiffItemCopyWith<$Res>(_value.last, (value) {
      return _then(_value.copyWith(last: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PriceDiffImplCopyWith<$Res>
    implements $PriceDiffCopyWith<$Res> {
  factory _$$PriceDiffImplCopyWith(
          _$PriceDiffImpl value, $Res Function(_$PriceDiffImpl) then) =
      __$$PriceDiffImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PriceDiffItem last, List<PriceDiffItem> values});

  @override
  $PriceDiffItemCopyWith<$Res> get last;
}

/// @nodoc
class __$$PriceDiffImplCopyWithImpl<$Res>
    extends _$PriceDiffCopyWithImpl<$Res, _$PriceDiffImpl>
    implements _$$PriceDiffImplCopyWith<$Res> {
  __$$PriceDiffImplCopyWithImpl(
      _$PriceDiffImpl _value, $Res Function(_$PriceDiffImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriceDiff
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last = null,
    Object? values = null,
  }) {
    return _then(_$PriceDiffImpl(
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as PriceDiffItem,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<PriceDiffItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceDiffImpl implements _PriceDiff {
  const _$PriceDiffImpl(
      {required this.last, required final List<PriceDiffItem> values})
      : _values = values;

  factory _$PriceDiffImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceDiffImplFromJson(json);

  @override
  final PriceDiffItem last;
  final List<PriceDiffItem> _values;
  @override
  List<PriceDiffItem> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'PriceDiff(last: $last, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceDiffImpl &&
            (identical(other.last, last) || other.last == last) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, last, const DeepCollectionEquality().hash(_values));

  /// Create a copy of PriceDiff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceDiffImplCopyWith<_$PriceDiffImpl> get copyWith =>
      __$$PriceDiffImplCopyWithImpl<_$PriceDiffImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceDiffImplToJson(
      this,
    );
  }
}

abstract class _PriceDiff implements PriceDiff {
  const factory _PriceDiff(
      {required final PriceDiffItem last,
      required final List<PriceDiffItem> values}) = _$PriceDiffImpl;

  factory _PriceDiff.fromJson(Map<String, dynamic> json) =
      _$PriceDiffImpl.fromJson;

  @override
  PriceDiffItem get last;
  @override
  List<PriceDiffItem> get values;

  /// Create a copy of PriceDiff
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceDiffImplCopyWith<_$PriceDiffImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceDiffItem _$PriceDiffItemFromJson(Map<String, dynamic> json) {
  return _PriceDiffItem.fromJson(json);
}

/// @nodoc
mixin _$PriceDiffItem {
  String get id => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get percent => throw _privateConstructorUsedError;

  /// Serializes this PriceDiffItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriceDiffItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceDiffItemCopyWith<PriceDiffItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceDiffItemCopyWith<$Res> {
  factory $PriceDiffItemCopyWith(
          PriceDiffItem value, $Res Function(PriceDiffItem) then) =
      _$PriceDiffItemCopyWithImpl<$Res, PriceDiffItem>;
  @useResult
  $Res call({String id, double value, String type, double percent});
}

/// @nodoc
class _$PriceDiffItemCopyWithImpl<$Res, $Val extends PriceDiffItem>
    implements $PriceDiffItemCopyWith<$Res> {
  _$PriceDiffItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriceDiffItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? type = null,
    Object? percent = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceDiffItemImplCopyWith<$Res>
    implements $PriceDiffItemCopyWith<$Res> {
  factory _$$PriceDiffItemImplCopyWith(
          _$PriceDiffItemImpl value, $Res Function(_$PriceDiffItemImpl) then) =
      __$$PriceDiffItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, double value, String type, double percent});
}

/// @nodoc
class __$$PriceDiffItemImplCopyWithImpl<$Res>
    extends _$PriceDiffItemCopyWithImpl<$Res, _$PriceDiffItemImpl>
    implements _$$PriceDiffItemImplCopyWith<$Res> {
  __$$PriceDiffItemImplCopyWithImpl(
      _$PriceDiffItemImpl _value, $Res Function(_$PriceDiffItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriceDiffItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? type = null,
    Object? percent = null,
  }) {
    return _then(_$PriceDiffItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceDiffItemImpl implements _PriceDiffItem {
  const _$PriceDiffItemImpl(
      {required this.id,
      required this.value,
      required this.type,
      required this.percent});

  factory _$PriceDiffItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceDiffItemImplFromJson(json);

  @override
  final String id;
  @override
  final double value;
  @override
  final String type;
  @override
  final double percent;

  @override
  String toString() {
    return 'PriceDiffItem(id: $id, value: $value, type: $type, percent: $percent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceDiffItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.percent, percent) || other.percent == percent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, value, type, percent);

  /// Create a copy of PriceDiffItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceDiffItemImplCopyWith<_$PriceDiffItemImpl> get copyWith =>
      __$$PriceDiffItemImplCopyWithImpl<_$PriceDiffItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceDiffItemImplToJson(
      this,
    );
  }
}

abstract class _PriceDiffItem implements PriceDiffItem {
  const factory _PriceDiffItem(
      {required final String id,
      required final double value,
      required final String type,
      required final double percent}) = _$PriceDiffItemImpl;

  factory _PriceDiffItem.fromJson(Map<String, dynamic> json) =
      _$PriceDiffItemImpl.fromJson;

  @override
  String get id;
  @override
  double get value;
  @override
  String get type;
  @override
  double get percent;

  /// Create a copy of PriceDiffItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceDiffItemImplCopyWith<_$PriceDiffItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MonthlyPrice _$MonthlyPriceFromJson(Map<String, dynamic> json) {
  return _MonthlyPrice.fromJson(json);
}

/// @nodoc
mixin _$MonthlyPrice {
  MonthlyPriceItem get last => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  List<MonthlyPriceItem> get values => throw _privateConstructorUsedError;

  /// Serializes this MonthlyPrice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyPriceCopyWith<MonthlyPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyPriceCopyWith<$Res> {
  factory $MonthlyPriceCopyWith(
          MonthlyPrice value, $Res Function(MonthlyPrice) then) =
      _$MonthlyPriceCopyWithImpl<$Res, MonthlyPrice>;
  @useResult
  $Res call({MonthlyPriceItem last, int total, List<MonthlyPriceItem> values});

  $MonthlyPriceItemCopyWith<$Res> get last;
}

/// @nodoc
class _$MonthlyPriceCopyWithImpl<$Res, $Val extends MonthlyPrice>
    implements $MonthlyPriceCopyWith<$Res> {
  _$MonthlyPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last = null,
    Object? total = null,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as MonthlyPriceItem,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<MonthlyPriceItem>,
    ) as $Val);
  }

  /// Create a copy of MonthlyPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonthlyPriceItemCopyWith<$Res> get last {
    return $MonthlyPriceItemCopyWith<$Res>(_value.last, (value) {
      return _then(_value.copyWith(last: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MonthlyPriceImplCopyWith<$Res>
    implements $MonthlyPriceCopyWith<$Res> {
  factory _$$MonthlyPriceImplCopyWith(
          _$MonthlyPriceImpl value, $Res Function(_$MonthlyPriceImpl) then) =
      __$$MonthlyPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MonthlyPriceItem last, int total, List<MonthlyPriceItem> values});

  @override
  $MonthlyPriceItemCopyWith<$Res> get last;
}

/// @nodoc
class __$$MonthlyPriceImplCopyWithImpl<$Res>
    extends _$MonthlyPriceCopyWithImpl<$Res, _$MonthlyPriceImpl>
    implements _$$MonthlyPriceImplCopyWith<$Res> {
  __$$MonthlyPriceImplCopyWithImpl(
      _$MonthlyPriceImpl _value, $Res Function(_$MonthlyPriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthlyPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last = null,
    Object? total = null,
    Object? values = null,
  }) {
    return _then(_$MonthlyPriceImpl(
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as MonthlyPriceItem,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<MonthlyPriceItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthlyPriceImpl implements _MonthlyPrice {
  const _$MonthlyPriceImpl(
      {required this.last,
      required this.total,
      required final List<MonthlyPriceItem> values})
      : _values = values;

  factory _$MonthlyPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthlyPriceImplFromJson(json);

  @override
  final MonthlyPriceItem last;
  @override
  final int total;
  final List<MonthlyPriceItem> _values;
  @override
  List<MonthlyPriceItem> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'MonthlyPrice(last: $last, total: $total, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyPriceImpl &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, last, total, const DeepCollectionEquality().hash(_values));

  /// Create a copy of MonthlyPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyPriceImplCopyWith<_$MonthlyPriceImpl> get copyWith =>
      __$$MonthlyPriceImplCopyWithImpl<_$MonthlyPriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyPriceImplToJson(
      this,
    );
  }
}

abstract class _MonthlyPrice implements MonthlyPrice {
  const factory _MonthlyPrice(
      {required final MonthlyPriceItem last,
      required final int total,
      required final List<MonthlyPriceItem> values}) = _$MonthlyPriceImpl;

  factory _MonthlyPrice.fromJson(Map<String, dynamic> json) =
      _$MonthlyPriceImpl.fromJson;

  @override
  MonthlyPriceItem get last;
  @override
  int get total;
  @override
  List<MonthlyPriceItem> get values;

  /// Create a copy of MonthlyPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyPriceImplCopyWith<_$MonthlyPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MonthlyPriceItem _$MonthlyPriceItemFromJson(Map<String, dynamic> json) {
  return _MonthlyPriceItem.fromJson(json);
}

/// @nodoc
mixin _$MonthlyPriceItem {
  String get id => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;

  /// Serializes this MonthlyPriceItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyPriceItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyPriceItemCopyWith<MonthlyPriceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyPriceItemCopyWith<$Res> {
  factory $MonthlyPriceItemCopyWith(
          MonthlyPriceItem value, $Res Function(MonthlyPriceItem) then) =
      _$MonthlyPriceItemCopyWithImpl<$Res, MonthlyPriceItem>;
  @useResult
  $Res call({String id, double value, int year, int month});
}

/// @nodoc
class _$MonthlyPriceItemCopyWithImpl<$Res, $Val extends MonthlyPriceItem>
    implements $MonthlyPriceItemCopyWith<$Res> {
  _$MonthlyPriceItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyPriceItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? year = null,
    Object? month = null,
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
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthlyPriceItemImplCopyWith<$Res>
    implements $MonthlyPriceItemCopyWith<$Res> {
  factory _$$MonthlyPriceItemImplCopyWith(_$MonthlyPriceItemImpl value,
          $Res Function(_$MonthlyPriceItemImpl) then) =
      __$$MonthlyPriceItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, double value, int year, int month});
}

/// @nodoc
class __$$MonthlyPriceItemImplCopyWithImpl<$Res>
    extends _$MonthlyPriceItemCopyWithImpl<$Res, _$MonthlyPriceItemImpl>
    implements _$$MonthlyPriceItemImplCopyWith<$Res> {
  __$$MonthlyPriceItemImplCopyWithImpl(_$MonthlyPriceItemImpl _value,
      $Res Function(_$MonthlyPriceItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthlyPriceItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? year = null,
    Object? month = null,
  }) {
    return _then(_$MonthlyPriceItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthlyPriceItemImpl implements _MonthlyPriceItem {
  const _$MonthlyPriceItemImpl(
      {required this.id,
      required this.value,
      required this.year,
      required this.month});

  factory _$MonthlyPriceItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthlyPriceItemImplFromJson(json);

  @override
  final String id;
  @override
  final double value;
  @override
  final int year;
  @override
  final int month;

  @override
  String toString() {
    return 'MonthlyPriceItem(id: $id, value: $value, year: $year, month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyPriceItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, value, year, month);

  /// Create a copy of MonthlyPriceItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyPriceItemImplCopyWith<_$MonthlyPriceItemImpl> get copyWith =>
      __$$MonthlyPriceItemImplCopyWithImpl<_$MonthlyPriceItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyPriceItemImplToJson(
      this,
    );
  }
}

abstract class _MonthlyPriceItem implements MonthlyPriceItem {
  const factory _MonthlyPriceItem(
      {required final String id,
      required final double value,
      required final int year,
      required final int month}) = _$MonthlyPriceItemImpl;

  factory _MonthlyPriceItem.fromJson(Map<String, dynamic> json) =
      _$MonthlyPriceItemImpl.fromJson;

  @override
  String get id;
  @override
  double get value;
  @override
  int get year;
  @override
  int get month;

  /// Create a copy of MonthlyPriceItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyPriceItemImplCopyWith<_$MonthlyPriceItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JittaLine _$JittaLineFromJson(Map<String, dynamic> json) {
  return _JittaLine.fromJson(json);
}

/// @nodoc
mixin _$JittaLine {
  int get total => throw _privateConstructorUsedError;
  List<MonthlyPriceItem> get values => throw _privateConstructorUsedError;

  /// Serializes this JittaLine to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JittaLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JittaLineCopyWith<JittaLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JittaLineCopyWith<$Res> {
  factory $JittaLineCopyWith(JittaLine value, $Res Function(JittaLine) then) =
      _$JittaLineCopyWithImpl<$Res, JittaLine>;
  @useResult
  $Res call({int total, List<MonthlyPriceItem> values});
}

/// @nodoc
class _$JittaLineCopyWithImpl<$Res, $Val extends JittaLine>
    implements $JittaLineCopyWith<$Res> {
  _$JittaLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JittaLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<MonthlyPriceItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JittaLineImplCopyWith<$Res>
    implements $JittaLineCopyWith<$Res> {
  factory _$$JittaLineImplCopyWith(
          _$JittaLineImpl value, $Res Function(_$JittaLineImpl) then) =
      __$$JittaLineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, List<MonthlyPriceItem> values});
}

/// @nodoc
class __$$JittaLineImplCopyWithImpl<$Res>
    extends _$JittaLineCopyWithImpl<$Res, _$JittaLineImpl>
    implements _$$JittaLineImplCopyWith<$Res> {
  __$$JittaLineImplCopyWithImpl(
      _$JittaLineImpl _value, $Res Function(_$JittaLineImpl) _then)
      : super(_value, _then);

  /// Create a copy of JittaLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? values = null,
  }) {
    return _then(_$JittaLineImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<MonthlyPriceItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JittaLineImpl implements _JittaLine {
  const _$JittaLineImpl(
      {required this.total, required final List<MonthlyPriceItem> values})
      : _values = values;

  factory _$JittaLineImpl.fromJson(Map<String, dynamic> json) =>
      _$$JittaLineImplFromJson(json);

  @override
  final int total;
  final List<MonthlyPriceItem> _values;
  @override
  List<MonthlyPriceItem> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'JittaLine(total: $total, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JittaLineImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(_values));

  /// Create a copy of JittaLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JittaLineImplCopyWith<_$JittaLineImpl> get copyWith =>
      __$$JittaLineImplCopyWithImpl<_$JittaLineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JittaLineImplToJson(
      this,
    );
  }
}

abstract class _JittaLine implements JittaLine {
  const factory _JittaLine(
      {required final int total,
      required final List<MonthlyPriceItem> values}) = _$JittaLineImpl;

  factory _JittaLine.fromJson(Map<String, dynamic> json) =
      _$JittaLineImpl.fromJson;

  @override
  int get total;
  @override
  List<MonthlyPriceItem> get values;

  /// Create a copy of JittaLine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JittaLineImplCopyWith<_$JittaLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JittaFactor _$JittaFactorFromJson(Map<String, dynamic> json) {
  return _JittaFactor.fromJson(json);
}

/// @nodoc
mixin _$JittaFactor {
  FactorValue get value => throw _privateConstructorUsedError;

  /// Serializes this JittaFactor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JittaFactor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JittaFactorCopyWith<JittaFactor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JittaFactorCopyWith<$Res> {
  factory $JittaFactorCopyWith(
          JittaFactor value, $Res Function(JittaFactor) then) =
      _$JittaFactorCopyWithImpl<$Res, JittaFactor>;
  @useResult
  $Res call({FactorValue value});

  $FactorValueCopyWith<$Res> get value;
}

/// @nodoc
class _$JittaFactorCopyWithImpl<$Res, $Val extends JittaFactor>
    implements $JittaFactorCopyWith<$Res> {
  _$JittaFactorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JittaFactor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FactorValue,
    ) as $Val);
  }

  /// Create a copy of JittaFactor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FactorValueCopyWith<$Res> get value {
    return $FactorValueCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JittaFactorImplCopyWith<$Res>
    implements $JittaFactorCopyWith<$Res> {
  factory _$$JittaFactorImplCopyWith(
          _$JittaFactorImpl value, $Res Function(_$JittaFactorImpl) then) =
      __$$JittaFactorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FactorValue value});

  @override
  $FactorValueCopyWith<$Res> get value;
}

/// @nodoc
class __$$JittaFactorImplCopyWithImpl<$Res>
    extends _$JittaFactorCopyWithImpl<$Res, _$JittaFactorImpl>
    implements _$$JittaFactorImplCopyWith<$Res> {
  __$$JittaFactorImplCopyWithImpl(
      _$JittaFactorImpl _value, $Res Function(_$JittaFactorImpl) _then)
      : super(_value, _then);

  /// Create a copy of JittaFactor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$JittaFactorImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FactorValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JittaFactorImpl implements _JittaFactor {
  const _$JittaFactorImpl({required this.value});

  factory _$JittaFactorImpl.fromJson(Map<String, dynamic> json) =>
      _$$JittaFactorImplFromJson(json);

  @override
  final FactorValue value;

  @override
  String toString() {
    return 'JittaFactor(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JittaFactorImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of JittaFactor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JittaFactorImplCopyWith<_$JittaFactorImpl> get copyWith =>
      __$$JittaFactorImplCopyWithImpl<_$JittaFactorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JittaFactorImplToJson(
      this,
    );
  }
}

abstract class _JittaFactor implements JittaFactor {
  const factory _JittaFactor({required final FactorValue value}) =
      _$JittaFactorImpl;

  factory _JittaFactor.fromJson(Map<String, dynamic> json) =
      _$JittaFactorImpl.fromJson;

  @override
  FactorValue get value;

  /// Create a copy of JittaFactor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JittaFactorImplCopyWith<_$JittaFactorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FactorValue _$FactorValueFromJson(Map<String, dynamic> json) {
  return _FactorValue.fromJson(json);
}

/// @nodoc
mixin _$FactorValue {
  FactorItem get growth => throw _privateConstructorUsedError;
  FactorItem get recent => throw _privateConstructorUsedError;
  FactorItem get financial => throw _privateConstructorUsedError;
  FactorItem get return_ => throw _privateConstructorUsedError;
  FactorItem get management => throw _privateConstructorUsedError;

  /// Serializes this FactorValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FactorValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FactorValueCopyWith<FactorValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactorValueCopyWith<$Res> {
  factory $FactorValueCopyWith(
          FactorValue value, $Res Function(FactorValue) then) =
      _$FactorValueCopyWithImpl<$Res, FactorValue>;
  @useResult
  $Res call(
      {FactorItem growth,
      FactorItem recent,
      FactorItem financial,
      FactorItem return_,
      FactorItem management});

  $FactorItemCopyWith<$Res> get growth;
  $FactorItemCopyWith<$Res> get recent;
  $FactorItemCopyWith<$Res> get financial;
  $FactorItemCopyWith<$Res> get return_;
  $FactorItemCopyWith<$Res> get management;
}

/// @nodoc
class _$FactorValueCopyWithImpl<$Res, $Val extends FactorValue>
    implements $FactorValueCopyWith<$Res> {
  _$FactorValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FactorValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? growth = null,
    Object? recent = null,
    Object? financial = null,
    Object? return_ = null,
    Object? management = null,
  }) {
    return _then(_value.copyWith(
      growth: null == growth
          ? _value.growth
          : growth // ignore: cast_nullable_to_non_nullable
              as FactorItem,
      recent: null == recent
          ? _value.recent
          : recent // ignore: cast_nullable_to_non_nullable
              as FactorItem,
      financial: null == financial
          ? _value.financial
          : financial // ignore: cast_nullable_to_non_nullable
              as FactorItem,
      return_: null == return_
          ? _value.return_
          : return_ // ignore: cast_nullable_to_non_nullable
              as FactorItem,
      management: null == management
          ? _value.management
          : management // ignore: cast_nullable_to_non_nullable
              as FactorItem,
    ) as $Val);
  }

  /// Create a copy of FactorValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FactorItemCopyWith<$Res> get growth {
    return $FactorItemCopyWith<$Res>(_value.growth, (value) {
      return _then(_value.copyWith(growth: value) as $Val);
    });
  }

  /// Create a copy of FactorValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FactorItemCopyWith<$Res> get recent {
    return $FactorItemCopyWith<$Res>(_value.recent, (value) {
      return _then(_value.copyWith(recent: value) as $Val);
    });
  }

  /// Create a copy of FactorValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FactorItemCopyWith<$Res> get financial {
    return $FactorItemCopyWith<$Res>(_value.financial, (value) {
      return _then(_value.copyWith(financial: value) as $Val);
    });
  }

  /// Create a copy of FactorValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FactorItemCopyWith<$Res> get return_ {
    return $FactorItemCopyWith<$Res>(_value.return_, (value) {
      return _then(_value.copyWith(return_: value) as $Val);
    });
  }

  /// Create a copy of FactorValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FactorItemCopyWith<$Res> get management {
    return $FactorItemCopyWith<$Res>(_value.management, (value) {
      return _then(_value.copyWith(management: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FactorValueImplCopyWith<$Res>
    implements $FactorValueCopyWith<$Res> {
  factory _$$FactorValueImplCopyWith(
          _$FactorValueImpl value, $Res Function(_$FactorValueImpl) then) =
      __$$FactorValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FactorItem growth,
      FactorItem recent,
      FactorItem financial,
      FactorItem return_,
      FactorItem management});

  @override
  $FactorItemCopyWith<$Res> get growth;
  @override
  $FactorItemCopyWith<$Res> get recent;
  @override
  $FactorItemCopyWith<$Res> get financial;
  @override
  $FactorItemCopyWith<$Res> get return_;
  @override
  $FactorItemCopyWith<$Res> get management;
}

/// @nodoc
class __$$FactorValueImplCopyWithImpl<$Res>
    extends _$FactorValueCopyWithImpl<$Res, _$FactorValueImpl>
    implements _$$FactorValueImplCopyWith<$Res> {
  __$$FactorValueImplCopyWithImpl(
      _$FactorValueImpl _value, $Res Function(_$FactorValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of FactorValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? growth = null,
    Object? recent = null,
    Object? financial = null,
    Object? return_ = null,
    Object? management = null,
  }) {
    return _then(_$FactorValueImpl(
      growth: null == growth
          ? _value.growth
          : growth // ignore: cast_nullable_to_non_nullable
              as FactorItem,
      recent: null == recent
          ? _value.recent
          : recent // ignore: cast_nullable_to_non_nullable
              as FactorItem,
      financial: null == financial
          ? _value.financial
          : financial // ignore: cast_nullable_to_non_nullable
              as FactorItem,
      return_: null == return_
          ? _value.return_
          : return_ // ignore: cast_nullable_to_non_nullable
              as FactorItem,
      management: null == management
          ? _value.management
          : management // ignore: cast_nullable_to_non_nullable
              as FactorItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FactorValueImpl implements _FactorValue {
  const _$FactorValueImpl(
      {required this.growth,
      required this.recent,
      required this.financial,
      required this.return_,
      required this.management});

  factory _$FactorValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$FactorValueImplFromJson(json);

  @override
  final FactorItem growth;
  @override
  final FactorItem recent;
  @override
  final FactorItem financial;
  @override
  final FactorItem return_;
  @override
  final FactorItem management;

  @override
  String toString() {
    return 'FactorValue(growth: $growth, recent: $recent, financial: $financial, return_: $return_, management: $management)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FactorValueImpl &&
            (identical(other.growth, growth) || other.growth == growth) &&
            (identical(other.recent, recent) || other.recent == recent) &&
            (identical(other.financial, financial) ||
                other.financial == financial) &&
            (identical(other.return_, return_) || other.return_ == return_) &&
            (identical(other.management, management) ||
                other.management == management));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, growth, recent, financial, return_, management);

  /// Create a copy of FactorValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FactorValueImplCopyWith<_$FactorValueImpl> get copyWith =>
      __$$FactorValueImplCopyWithImpl<_$FactorValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FactorValueImplToJson(
      this,
    );
  }
}

abstract class _FactorValue implements FactorValue {
  const factory _FactorValue(
      {required final FactorItem growth,
      required final FactorItem recent,
      required final FactorItem financial,
      required final FactorItem return_,
      required final FactorItem management}) = _$FactorValueImpl;

  factory _FactorValue.fromJson(Map<String, dynamic> json) =
      _$FactorValueImpl.fromJson;

  @override
  FactorItem get growth;
  @override
  FactorItem get recent;
  @override
  FactorItem get financial;
  @override
  FactorItem get return_;
  @override
  FactorItem get management;

  /// Create a copy of FactorValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FactorValueImplCopyWith<_$FactorValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FactorItem _$FactorItemFromJson(Map<String, dynamic> json) {
  return _FactorItem.fromJson(json);
}

/// @nodoc
mixin _$FactorItem {
  double get value => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;

  /// Serializes this FactorItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FactorItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FactorItemCopyWith<FactorItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactorItemCopyWith<$Res> {
  factory $FactorItemCopyWith(
          FactorItem value, $Res Function(FactorItem) then) =
      _$FactorItemCopyWithImpl<$Res, FactorItem>;
  @useResult
  $Res call({double value, String name, String level});
}

/// @nodoc
class _$FactorItemCopyWithImpl<$Res, $Val extends FactorItem>
    implements $FactorItemCopyWith<$Res> {
  _$FactorItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FactorItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? name = null,
    Object? level = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FactorItemImplCopyWith<$Res>
    implements $FactorItemCopyWith<$Res> {
  factory _$$FactorItemImplCopyWith(
          _$FactorItemImpl value, $Res Function(_$FactorItemImpl) then) =
      __$$FactorItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, String name, String level});
}

/// @nodoc
class __$$FactorItemImplCopyWithImpl<$Res>
    extends _$FactorItemCopyWithImpl<$Res, _$FactorItemImpl>
    implements _$$FactorItemImplCopyWith<$Res> {
  __$$FactorItemImplCopyWithImpl(
      _$FactorItemImpl _value, $Res Function(_$FactorItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of FactorItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? name = null,
    Object? level = null,
  }) {
    return _then(_$FactorItemImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FactorItemImpl implements _FactorItem {
  const _$FactorItemImpl(
      {required this.value, required this.name, required this.level});

  factory _$FactorItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$FactorItemImplFromJson(json);

  @override
  final double value;
  @override
  final String name;
  @override
  final String level;

  @override
  String toString() {
    return 'FactorItem(value: $value, name: $name, level: $level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FactorItemImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, name, level);

  /// Create a copy of FactorItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FactorItemImplCopyWith<_$FactorItemImpl> get copyWith =>
      __$$FactorItemImplCopyWithImpl<_$FactorItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FactorItemImplToJson(
      this,
    );
  }
}

abstract class _FactorItem implements FactorItem {
  const factory _FactorItem(
      {required final double value,
      required final String name,
      required final String level}) = _$FactorItemImpl;

  factory _FactorItem.fromJson(Map<String, dynamic> json) =
      _$FactorItemImpl.fromJson;

  @override
  double get value;
  @override
  String get name;
  @override
  String get level;

  /// Create a copy of FactorItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FactorItemImplCopyWith<_$FactorItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JittaSign _$JittaSignFromJson(Map<String, dynamic> json) {
  return _JittaSign.fromJson(json);
}

/// @nodoc
mixin _$JittaSign {
  SignItem get last => throw _privateConstructorUsedError;

  /// Serializes this JittaSign to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JittaSign
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JittaSignCopyWith<JittaSign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JittaSignCopyWith<$Res> {
  factory $JittaSignCopyWith(JittaSign value, $Res Function(JittaSign) then) =
      _$JittaSignCopyWithImpl<$Res, JittaSign>;
  @useResult
  $Res call({SignItem last});

  $SignItemCopyWith<$Res> get last;
}

/// @nodoc
class _$JittaSignCopyWithImpl<$Res, $Val extends JittaSign>
    implements $JittaSignCopyWith<$Res> {
  _$JittaSignCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JittaSign
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last = null,
  }) {
    return _then(_value.copyWith(
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as SignItem,
    ) as $Val);
  }

  /// Create a copy of JittaSign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignItemCopyWith<$Res> get last {
    return $SignItemCopyWith<$Res>(_value.last, (value) {
      return _then(_value.copyWith(last: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JittaSignImplCopyWith<$Res>
    implements $JittaSignCopyWith<$Res> {
  factory _$$JittaSignImplCopyWith(
          _$JittaSignImpl value, $Res Function(_$JittaSignImpl) then) =
      __$$JittaSignImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignItem last});

  @override
  $SignItemCopyWith<$Res> get last;
}

/// @nodoc
class __$$JittaSignImplCopyWithImpl<$Res>
    extends _$JittaSignCopyWithImpl<$Res, _$JittaSignImpl>
    implements _$$JittaSignImplCopyWith<$Res> {
  __$$JittaSignImplCopyWithImpl(
      _$JittaSignImpl _value, $Res Function(_$JittaSignImpl) _then)
      : super(_value, _then);

  /// Create a copy of JittaSign
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last = null,
  }) {
    return _then(_$JittaSignImpl(
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as SignItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JittaSignImpl implements _JittaSign {
  const _$JittaSignImpl({required this.last});

  factory _$JittaSignImpl.fromJson(Map<String, dynamic> json) =>
      _$$JittaSignImplFromJson(json);

  @override
  final SignItem last;

  @override
  String toString() {
    return 'JittaSign(last: $last)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JittaSignImpl &&
            (identical(other.last, last) || other.last == last));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, last);

  /// Create a copy of JittaSign
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JittaSignImplCopyWith<_$JittaSignImpl> get copyWith =>
      __$$JittaSignImplCopyWithImpl<_$JittaSignImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JittaSignImplToJson(
      this,
    );
  }
}

abstract class _JittaSign implements JittaSign {
  const factory _JittaSign({required final SignItem last}) = _$JittaSignImpl;

  factory _JittaSign.fromJson(Map<String, dynamic> json) =
      _$JittaSignImpl.fromJson;

  @override
  SignItem get last;

  /// Create a copy of JittaSign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JittaSignImplCopyWith<_$JittaSignImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignItem _$SignItemFromJson(Map<String, dynamic> json) {
  return _SignItem.fromJson(json);
}

/// @nodoc
mixin _$SignItem {
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  SignDisplay get display => throw _privateConstructorUsedError;

  /// Serializes this SignItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignItemCopyWith<SignItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignItemCopyWith<$Res> {
  factory $SignItemCopyWith(SignItem value, $Res Function(SignItem) then) =
      _$SignItemCopyWithImpl<$Res, SignItem>;
  @useResult
  $Res call(
      {String title,
      String type,
      String name,
      String value,
      SignDisplay display});

  $SignDisplayCopyWith<$Res> get display;
}

/// @nodoc
class _$SignItemCopyWithImpl<$Res, $Val extends SignItem>
    implements $SignItemCopyWith<$Res> {
  _$SignItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? type = null,
    Object? name = null,
    Object? value = null,
    Object? display = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as SignDisplay,
    ) as $Val);
  }

  /// Create a copy of SignItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignDisplayCopyWith<$Res> get display {
    return $SignDisplayCopyWith<$Res>(_value.display, (value) {
      return _then(_value.copyWith(display: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignItemImplCopyWith<$Res>
    implements $SignItemCopyWith<$Res> {
  factory _$$SignItemImplCopyWith(
          _$SignItemImpl value, $Res Function(_$SignItemImpl) then) =
      __$$SignItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String type,
      String name,
      String value,
      SignDisplay display});

  @override
  $SignDisplayCopyWith<$Res> get display;
}

/// @nodoc
class __$$SignItemImplCopyWithImpl<$Res>
    extends _$SignItemCopyWithImpl<$Res, _$SignItemImpl>
    implements _$$SignItemImplCopyWith<$Res> {
  __$$SignItemImplCopyWithImpl(
      _$SignItemImpl _value, $Res Function(_$SignItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? type = null,
    Object? name = null,
    Object? value = null,
    Object? display = null,
  }) {
    return _then(_$SignItemImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as SignDisplay,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignItemImpl implements _SignItem {
  const _$SignItemImpl(
      {required this.title,
      required this.type,
      required this.name,
      required this.value,
      required this.display});

  factory _$SignItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignItemImplFromJson(json);

  @override
  final String title;
  @override
  final String type;
  @override
  final String name;
  @override
  final String value;
  @override
  final SignDisplay display;

  @override
  String toString() {
    return 'SignItem(title: $title, type: $type, name: $name, value: $value, display: $display)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.display, display) || other.display == display));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, type, name, value, display);

  /// Create a copy of SignItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignItemImplCopyWith<_$SignItemImpl> get copyWith =>
      __$$SignItemImplCopyWithImpl<_$SignItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignItemImplToJson(
      this,
    );
  }
}

abstract class _SignItem implements SignItem {
  const factory _SignItem(
      {required final String title,
      required final String type,
      required final String name,
      required final String value,
      required final SignDisplay display}) = _$SignItemImpl;

  factory _SignItem.fromJson(Map<String, dynamic> json) =
      _$SignItemImpl.fromJson;

  @override
  String get title;
  @override
  String get type;
  @override
  String get name;
  @override
  String get value;
  @override
  SignDisplay get display;

  /// Create a copy of SignItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignItemImplCopyWith<_$SignItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignDisplay _$SignDisplayFromJson(Map<String, dynamic> json) {
  return _SignDisplay.fromJson(json);
}

/// @nodoc
mixin _$SignDisplay {
  String get title => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get columnHead => throw _privateConstructorUsedError;
  List<SignColumn>? get columns => throw _privateConstructorUsedError;
  String? get footer => throw _privateConstructorUsedError;

  /// Serializes this SignDisplay to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignDisplay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignDisplayCopyWith<SignDisplay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignDisplayCopyWith<$Res> {
  factory $SignDisplayCopyWith(
          SignDisplay value, $Res Function(SignDisplay) then) =
      _$SignDisplayCopyWithImpl<$Res, SignDisplay>;
  @useResult
  $Res call(
      {String title,
      String? value,
      String? columnHead,
      List<SignColumn>? columns,
      String? footer});
}

/// @nodoc
class _$SignDisplayCopyWithImpl<$Res, $Val extends SignDisplay>
    implements $SignDisplayCopyWith<$Res> {
  _$SignDisplayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignDisplay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? value = freezed,
    Object? columnHead = freezed,
    Object? columns = freezed,
    Object? footer = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      columnHead: freezed == columnHead
          ? _value.columnHead
          : columnHead // ignore: cast_nullable_to_non_nullable
              as String?,
      columns: freezed == columns
          ? _value.columns
          : columns // ignore: cast_nullable_to_non_nullable
              as List<SignColumn>?,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignDisplayImplCopyWith<$Res>
    implements $SignDisplayCopyWith<$Res> {
  factory _$$SignDisplayImplCopyWith(
          _$SignDisplayImpl value, $Res Function(_$SignDisplayImpl) then) =
      __$$SignDisplayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? value,
      String? columnHead,
      List<SignColumn>? columns,
      String? footer});
}

/// @nodoc
class __$$SignDisplayImplCopyWithImpl<$Res>
    extends _$SignDisplayCopyWithImpl<$Res, _$SignDisplayImpl>
    implements _$$SignDisplayImplCopyWith<$Res> {
  __$$SignDisplayImplCopyWithImpl(
      _$SignDisplayImpl _value, $Res Function(_$SignDisplayImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignDisplay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? value = freezed,
    Object? columnHead = freezed,
    Object? columns = freezed,
    Object? footer = freezed,
  }) {
    return _then(_$SignDisplayImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      columnHead: freezed == columnHead
          ? _value.columnHead
          : columnHead // ignore: cast_nullable_to_non_nullable
              as String?,
      columns: freezed == columns
          ? _value._columns
          : columns // ignore: cast_nullable_to_non_nullable
              as List<SignColumn>?,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignDisplayImpl implements _SignDisplay {
  const _$SignDisplayImpl(
      {required this.title,
      this.value,
      this.columnHead,
      final List<SignColumn>? columns,
      this.footer})
      : _columns = columns;

  factory _$SignDisplayImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignDisplayImplFromJson(json);

  @override
  final String title;
  @override
  final String? value;
  @override
  final String? columnHead;
  final List<SignColumn>? _columns;
  @override
  List<SignColumn>? get columns {
    final value = _columns;
    if (value == null) return null;
    if (_columns is EqualUnmodifiableListView) return _columns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? footer;

  @override
  String toString() {
    return 'SignDisplay(title: $title, value: $value, columnHead: $columnHead, columns: $columns, footer: $footer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignDisplayImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.columnHead, columnHead) ||
                other.columnHead == columnHead) &&
            const DeepCollectionEquality().equals(other._columns, _columns) &&
            (identical(other.footer, footer) || other.footer == footer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, value, columnHead,
      const DeepCollectionEquality().hash(_columns), footer);

  /// Create a copy of SignDisplay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignDisplayImplCopyWith<_$SignDisplayImpl> get copyWith =>
      __$$SignDisplayImplCopyWithImpl<_$SignDisplayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignDisplayImplToJson(
      this,
    );
  }
}

abstract class _SignDisplay implements SignDisplay {
  const factory _SignDisplay(
      {required final String title,
      final String? value,
      final String? columnHead,
      final List<SignColumn>? columns,
      final String? footer}) = _$SignDisplayImpl;

  factory _SignDisplay.fromJson(Map<String, dynamic> json) =
      _$SignDisplayImpl.fromJson;

  @override
  String get title;
  @override
  String? get value;
  @override
  String? get columnHead;
  @override
  List<SignColumn>? get columns;
  @override
  String? get footer;

  /// Create a copy of SignDisplay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignDisplayImplCopyWith<_$SignDisplayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignColumn _$SignColumnFromJson(Map<String, dynamic> json) {
  return _SignColumn.fromJson(json);
}

/// @nodoc
mixin _$SignColumn {
  String get name => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;

  /// Serializes this SignColumn to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignColumn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignColumnCopyWith<SignColumn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignColumnCopyWith<$Res> {
  factory $SignColumnCopyWith(
          SignColumn value, $Res Function(SignColumn) then) =
      _$SignColumnCopyWithImpl<$Res, SignColumn>;
  @useResult
  $Res call({String name, String data});
}

/// @nodoc
class _$SignColumnCopyWithImpl<$Res, $Val extends SignColumn>
    implements $SignColumnCopyWith<$Res> {
  _$SignColumnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignColumn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignColumnImplCopyWith<$Res>
    implements $SignColumnCopyWith<$Res> {
  factory _$$SignColumnImplCopyWith(
          _$SignColumnImpl value, $Res Function(_$SignColumnImpl) then) =
      __$$SignColumnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String data});
}

/// @nodoc
class __$$SignColumnImplCopyWithImpl<$Res>
    extends _$SignColumnCopyWithImpl<$Res, _$SignColumnImpl>
    implements _$$SignColumnImplCopyWith<$Res> {
  __$$SignColumnImplCopyWithImpl(
      _$SignColumnImpl _value, $Res Function(_$SignColumnImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignColumn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_$SignColumnImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignColumnImpl implements _SignColumn {
  const _$SignColumnImpl({required this.name, required this.data});

  factory _$SignColumnImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignColumnImplFromJson(json);

  @override
  final String name;
  @override
  final String data;

  @override
  String toString() {
    return 'SignColumn(name: $name, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignColumnImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, data);

  /// Create a copy of SignColumn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignColumnImplCopyWith<_$SignColumnImpl> get copyWith =>
      __$$SignColumnImplCopyWithImpl<_$SignColumnImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignColumnImplToJson(
      this,
    );
  }
}

abstract class _SignColumn implements SignColumn {
  const factory _SignColumn(
      {required final String name,
      required final String data}) = _$SignColumnImpl;

  factory _SignColumn.fromJson(Map<String, dynamic> json) =
      _$SignColumnImpl.fromJson;

  @override
  String get name;
  @override
  String get data;

  /// Create a copy of SignColumn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignColumnImplCopyWith<_$SignColumnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
