import 'package:freezed_annotation/freezed_annotation.dart';

part 'jitta_score.freezed.dart';
part 'jitta_score.g.dart';

@freezed
class JittaScore with _$JittaScore {
  const factory JittaScore({
    required ScoreItem last,
    required List<ScoreItem> values,
  }) = _JittaScore;

  factory JittaScore.fromJson(Map<String, dynamic> json) => _$JittaScoreFromJson(json);
}

@freezed
class ScoreItem with _$ScoreItem {
  const factory ScoreItem({
    required String id,
    required double value,
    String? quarter,
    int? year,
  }) = _ScoreItem;

  factory ScoreItem.fromJson(Map<String, dynamic> json) => _$ScoreItemFromJson(json);
} 