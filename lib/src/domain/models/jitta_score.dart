import 'package:freezed_annotation/freezed_annotation.dart';

part 'jitta_score.freezed.dart';
part 'jitta_score.g.dart';

@freezed
class JittaScore with _$JittaScore {
  const factory JittaScore({
    required String id,
    required double value,
    String? quarter,
    int? year,
  }) = _JittaScore;

  factory JittaScore.fromJson(Map<String, dynamic> json) => _$JittaScoreFromJson(json);
} 