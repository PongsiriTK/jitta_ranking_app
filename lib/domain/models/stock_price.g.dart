// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockPriceImpl _$$StockPriceImplFromJson(Map<String, dynamic> json) =>
    _$StockPriceImpl(
      close: (json['close'] as num).toDouble(),
      datetime: DateTime.parse(json['datetime'] as String),
    );

Map<String, dynamic> _$$StockPriceImplToJson(_$StockPriceImpl instance) =>
    <String, dynamic>{
      'close': instance.close,
      'datetime': instance.datetime.toIso8601String(),
    };
