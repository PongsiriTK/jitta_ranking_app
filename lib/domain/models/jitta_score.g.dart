// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jitta_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JittaScoreImpl _$$JittaScoreImplFromJson(Map<String, dynamic> json) =>
    _$JittaScoreImpl(
      id: json['id'] as String,
      value: (json['value'] as num).toDouble(),
      quarter: json['quarter'] as String?,
      year: (json['year'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$JittaScoreImplToJson(_$JittaScoreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'quarter': instance.quarter,
      'year': instance.year,
    };
