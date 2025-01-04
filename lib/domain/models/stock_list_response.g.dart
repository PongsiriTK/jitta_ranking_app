// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockListResponseImpl _$$StockListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StockListResponseImpl(
      count: (json['count'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => Stock.fromJson(e as Map<String, dynamic>))
          .toList(),
      sectors: (json['sectors'] as List<dynamic>)
          .map((e) => Sector.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StockListResponseImplToJson(
        _$StockListResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'data': instance.data,
      'sectors': instance.sectors,
    };
