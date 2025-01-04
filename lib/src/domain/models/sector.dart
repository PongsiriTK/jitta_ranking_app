import 'package:freezed_annotation/freezed_annotation.dart';

part 'sector.freezed.dart';
part 'sector.g.dart';

@freezed
class Sector with _$Sector {
  const factory Sector({
    required String id,
    required String name,
  }) = _Sector;

  factory Sector.fromJson(Map<String, dynamic> json) => _$SectorFromJson(json);
} 