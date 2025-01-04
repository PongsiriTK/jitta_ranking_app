// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockDetailImpl _$$StockDetailImplFromJson(Map<String, dynamic> json) =>
    _$StockDetailImpl(
      stock: Stock.fromJson(json['stock'] as Map<String, dynamic>),
      latestPrice:
          StockPrice.fromJson(json['latestPrice'] as Map<String, dynamic>),
      jittaScore:
          JittaScore.fromJson(json['jittaScore'] as Map<String, dynamic>),
      priceHistory: (json['priceHistory'] as List<dynamic>)
          .map((e) => StockPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
      factorScores: (json['factorScores'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      ipoDate: json['ipoDate'] == null
          ? null
          : DateTime.parse(json['ipoDate'] as String),
      companyUrl: json['companyUrl'] as String?,
      marketRank: (json['marketRank'] as num?)?.toInt(),
      marketTotalMembers: (json['marketTotalMembers'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StockDetailImplToJson(_$StockDetailImpl instance) =>
    <String, dynamic>{
      'stock': instance.stock,
      'latestPrice': instance.latestPrice,
      'jittaScore': instance.jittaScore,
      'priceHistory': instance.priceHistory,
      'factorScores': instance.factorScores,
      'ipoDate': instance.ipoDate?.toIso8601String(),
      'companyUrl': instance.companyUrl,
      'marketRank': instance.marketRank,
      'marketTotalMembers': instance.marketTotalMembers,
    };
