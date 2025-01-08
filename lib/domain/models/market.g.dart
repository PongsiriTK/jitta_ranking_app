// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketImpl _$$MarketImplFromJson(Map<String, dynamic> json) => _$MarketImpl(
      code: json['code'] as String,
      name: json['name'] as String,
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$$MarketImplToJson(_$MarketImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'id': instance.id,
    };
