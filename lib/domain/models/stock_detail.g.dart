// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockDetailImpl _$$StockDetailImplFromJson(Map<String, dynamic> json) =>
    _$StockDetailImpl(
      id: json['id'] as String,
      stockId: (json['stockId'] as num).toInt(),
      symbol: json['symbol'] as String,
      title: json['title'] as String,
      summary: json['summary'] as String?,
      sector: Sector.fromJson(json['sector'] as Map<String, dynamic>),
      market: json['market'] as String,
      industry: json['industry'] as String,
      exchange: json['exchange'] as String,
      currency: json['currency'] as String,
      currencySign: json['currencySign'] as String,
      priceCurrency: json['priceCurrency'] as String,
      status: json['status'] as String,
      nativeName: json['nativeName'] as String,
      isFollowing: json['isFollowing'] as bool,
      updatedFinancialComplete: json['updatedFinancialComplete'] as bool,
      latestPrice:
          StockPrice.fromJson(json['latestPrice'] as Map<String, dynamic>),
      lossChance:
          LossChance.fromJson(json['lossChance'] as Map<String, dynamic>),
      marketComparison: MarketComparison.fromJson(
          json['marketComparison'] as Map<String, dynamic>),
      company: CompanyInfo.fromJson(json['company'] as Map<String, dynamic>),
      jitta: JittaInfo.fromJson(json['jitta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StockDetailImplToJson(_$StockDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stockId': instance.stockId,
      'symbol': instance.symbol,
      'title': instance.title,
      'summary': instance.summary,
      'sector': instance.sector,
      'market': instance.market,
      'industry': instance.industry,
      'exchange': instance.exchange,
      'currency': instance.currency,
      'currencySign': instance.currencySign,
      'priceCurrency': instance.priceCurrency,
      'status': instance.status,
      'nativeName': instance.nativeName,
      'isFollowing': instance.isFollowing,
      'updatedFinancialComplete': instance.updatedFinancialComplete,
      'latestPrice': instance.latestPrice,
      'lossChance': instance.lossChance,
      'marketComparison': instance.marketComparison,
      'company': instance.company,
      'jitta': instance.jitta,
    };

_$LossChanceImpl _$$LossChanceImplFromJson(Map<String, dynamic> json) =>
    _$LossChanceImpl(
      last: (json['last'] as num).toDouble(),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$LossChanceImplToJson(_$LossChanceImpl instance) =>
    <String, dynamic>{
      'last': instance.last,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$MarketComparisonImpl _$$MarketComparisonImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketComparisonImpl(
      rank: (json['rank'] as num).toInt(),
      member: (json['member'] as num).toInt(),
    );

Map<String, dynamic> _$$MarketComparisonImplToJson(
        _$MarketComparisonImpl instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'member': instance.member,
    };

_$CompanyInfoImpl _$$CompanyInfoImplFromJson(Map<String, dynamic> json) =>
    _$CompanyInfoImpl(
      ipoDate: json['ipoDate'] == null
          ? null
          : DateTime.parse(json['ipoDate'] as String),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$CompanyInfoImplToJson(_$CompanyInfoImpl instance) =>
    <String, dynamic>{
      'ipoDate': instance.ipoDate?.toIso8601String(),
      'url': instance.url,
    };

_$JittaInfoImpl _$$JittaInfoImplFromJson(Map<String, dynamic> json) =>
    _$JittaInfoImpl(
      priceDiff: PriceDiff.fromJson(json['priceDiff'] as Map<String, dynamic>),
      monthlyPrice:
          MonthlyPrice.fromJson(json['monthlyPrice'] as Map<String, dynamic>),
      score: JittaScore.fromJson(json['score'] as Map<String, dynamic>),
      line: JittaLine.fromJson(json['line'] as Map<String, dynamic>),
      factor: JittaFactor.fromJson(json['factor'] as Map<String, dynamic>),
      sign: JittaSign.fromJson(json['sign'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$JittaInfoImplToJson(_$JittaInfoImpl instance) =>
    <String, dynamic>{
      'priceDiff': instance.priceDiff,
      'monthlyPrice': instance.monthlyPrice,
      'score': instance.score,
      'line': instance.line,
      'factor': instance.factor,
      'sign': instance.sign,
    };

_$PriceDiffImpl _$$PriceDiffImplFromJson(Map<String, dynamic> json) =>
    _$PriceDiffImpl(
      last: PriceDiffItem.fromJson(json['last'] as Map<String, dynamic>),
      values: (json['values'] as List<dynamic>)
          .map((e) => PriceDiffItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PriceDiffImplToJson(_$PriceDiffImpl instance) =>
    <String, dynamic>{
      'last': instance.last,
      'values': instance.values,
    };

_$PriceDiffItemImpl _$$PriceDiffItemImplFromJson(Map<String, dynamic> json) =>
    _$PriceDiffItemImpl(
      id: json['id'] as String,
      value: (json['value'] as num).toDouble(),
      type: json['type'] as String,
      percent: (json['percent'] as num).toDouble(),
    );

Map<String, dynamic> _$$PriceDiffItemImplToJson(_$PriceDiffItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'type': instance.type,
      'percent': instance.percent,
    };

_$MonthlyPriceImpl _$$MonthlyPriceImplFromJson(Map<String, dynamic> json) =>
    _$MonthlyPriceImpl(
      last: MonthlyPriceItem.fromJson(json['last'] as Map<String, dynamic>),
      total: (json['total'] as num).toInt(),
      values: (json['values'] as List<dynamic>)
          .map((e) => MonthlyPriceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MonthlyPriceImplToJson(_$MonthlyPriceImpl instance) =>
    <String, dynamic>{
      'last': instance.last,
      'total': instance.total,
      'values': instance.values,
    };

_$MonthlyPriceItemImpl _$$MonthlyPriceItemImplFromJson(
        Map<String, dynamic> json) =>
    _$MonthlyPriceItemImpl(
      id: json['id'] as String,
      value: (json['value'] as num).toDouble(),
      year: (json['year'] as num).toInt(),
      month: (json['month'] as num).toInt(),
    );

Map<String, dynamic> _$$MonthlyPriceItemImplToJson(
        _$MonthlyPriceItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'year': instance.year,
      'month': instance.month,
    };

_$JittaLineImpl _$$JittaLineImplFromJson(Map<String, dynamic> json) =>
    _$JittaLineImpl(
      total: (json['total'] as num).toInt(),
      values: (json['values'] as List<dynamic>)
          .map((e) => MonthlyPriceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$JittaLineImplToJson(_$JittaLineImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'values': instance.values,
    };

_$JittaFactorImpl _$$JittaFactorImplFromJson(Map<String, dynamic> json) =>
    _$JittaFactorImpl(
      value: FactorValue.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$JittaFactorImplToJson(_$JittaFactorImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$FactorValueImpl _$$FactorValueImplFromJson(Map<String, dynamic> json) =>
    _$FactorValueImpl(
      growth: FactorItem.fromJson(json['growth'] as Map<String, dynamic>),
      recent: FactorItem.fromJson(json['recent'] as Map<String, dynamic>),
      financial: FactorItem.fromJson(json['financial'] as Map<String, dynamic>),
      return_: FactorItem.fromJson(json['return_'] as Map<String, dynamic>),
      management:
          FactorItem.fromJson(json['management'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FactorValueImplToJson(_$FactorValueImpl instance) =>
    <String, dynamic>{
      'growth': instance.growth,
      'recent': instance.recent,
      'financial': instance.financial,
      'return_': instance.return_,
      'management': instance.management,
    };

_$FactorItemImpl _$$FactorItemImplFromJson(Map<String, dynamic> json) =>
    _$FactorItemImpl(
      value: (json['value'] as num).toDouble(),
      name: json['name'] as String,
      level: json['level'] as String,
    );

Map<String, dynamic> _$$FactorItemImplToJson(_$FactorItemImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'name': instance.name,
      'level': instance.level,
    };

_$JittaSignImpl _$$JittaSignImplFromJson(Map<String, dynamic> json) =>
    _$JittaSignImpl(
      last: SignItem.fromJson(json['last'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$JittaSignImplToJson(_$JittaSignImpl instance) =>
    <String, dynamic>{
      'last': instance.last,
    };

_$SignItemImpl _$$SignItemImplFromJson(Map<String, dynamic> json) =>
    _$SignItemImpl(
      title: json['title'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      value: json['value'] as String,
      display: SignDisplay.fromJson(json['display'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignItemImplToJson(_$SignItemImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'name': instance.name,
      'value': instance.value,
      'display': instance.display,
    };

_$SignDisplayImpl _$$SignDisplayImplFromJson(Map<String, dynamic> json) =>
    _$SignDisplayImpl(
      title: json['title'] as String,
      value: json['value'] as String?,
      columnHead: json['columnHead'] as String?,
      columns: (json['columns'] as List<dynamic>?)
          ?.map((e) => SignColumn.fromJson(e as Map<String, dynamic>))
          .toList(),
      footer: json['footer'] as String?,
    );

Map<String, dynamic> _$$SignDisplayImplToJson(_$SignDisplayImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'value': instance.value,
      'columnHead': instance.columnHead,
      'columns': instance.columns,
      'footer': instance.footer,
    };

_$SignColumnImpl _$$SignColumnImplFromJson(Map<String, dynamic> json) =>
    _$SignColumnImpl(
      name: json['name'] as String,
      data: json['data'] as String,
    );

Map<String, dynamic> _$$SignColumnImplToJson(_$SignColumnImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'data': instance.data,
    };
