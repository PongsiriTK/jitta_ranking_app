// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jitta_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JittaScoreImpl _$$JittaScoreImplFromJson(Map<String, dynamic> json) =>
    _$JittaScoreImpl(
      last: ScoreItem.fromJson(json['last'] as Map<String, dynamic>),
      values: (json['values'] as List<dynamic>)
          .map((e) => ScoreItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$JittaScoreImplToJson(_$JittaScoreImpl instance) =>
    <String, dynamic>{
      'last': instance.last,
      'values': instance.values,
    };

_$ScoreItemImpl _$$ScoreItemImplFromJson(Map<String, dynamic> json) =>
    _$ScoreItemImpl(
      id: json['id'] as String,
      value: (json['value'] as num).toDouble(),
      quarter: json['quarter'] as String?,
      year: (json['year'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ScoreItemImplToJson(_$ScoreItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'quarter': instance.quarter,
      'year': instance.year,
    };
