// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockImpl _$$StockImplFromJson(Map<String, dynamic> json) => _$StockImpl(
      id: json['id'] as String,
      stockId: (json['stockId'] as num).toInt(),
      rank: (json['rank'] as num).toInt(),
      symbol: json['symbol'] as String,
      exchange: json['exchange'] as String,
      title: json['title'] as String,
      jittaScore: (json['jittaScore'] as num).toDouble(),
      nativeName: json['nativeName'] as String,
      sector: Sector.fromJson(json['sector'] as Map<String, dynamic>),
      industry: json['industry'] as String,
      summary: json['summary'] as String?,
      isFollowing: json['isFollowing'] as bool? ?? false,
      market: json['market'] as String?,
      currency: json['currency'] as String?,
      currencySign: json['currencySign'] as String?,
      priceCurrency: json['priceCurrency'] as String?,
      status: json['status'] as String?,
      updatedFinancialComplete: json['updatedFinancialComplete'] == null
          ? null
          : DateTime.parse(json['updatedFinancialComplete'] as String),
    );

Map<String, dynamic> _$$StockImplToJson(_$StockImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stockId': instance.stockId,
      'rank': instance.rank,
      'symbol': instance.symbol,
      'exchange': instance.exchange,
      'title': instance.title,
      'jittaScore': instance.jittaScore,
      'nativeName': instance.nativeName,
      'sector': instance.sector,
      'industry': instance.industry,
      'summary': instance.summary,
      'isFollowing': instance.isFollowing,
      'market': instance.market,
      'currency': instance.currency,
      'currencySign': instance.currencySign,
      'priceCurrency': instance.priceCurrency,
      'status': instance.status,
      'updatedFinancialComplete':
          instance.updatedFinancialComplete?.toIso8601String(),
    };
