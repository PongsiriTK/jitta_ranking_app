import 'package:drift/drift.dart';
import 'package:jitta_ranking_app/data/local/database/app_database.dart';
import 'package:jitta_ranking_app/domain/entities/sector.dart';

class SectorMapper {
  static Sector fromGraphQL(Map<String, dynamic> json) {
    return Sector(
      id: json['id'] as String,
      name: json['name'] as String,
      updatedAt: DateTime.now(),
    );
  }

  static SectorTableCompanion toTableCompanion(Sector sector) {
    return SectorTableCompanion.insert(
      id: sector.id,
      name: sector.name,
      updatedAt: sector.updatedAt,
    );
  }

  static Sector fromTableData(SectorTableData data) {
    return Sector(
      id: data.id,
      name: data.name,
      updatedAt: data.updatedAt,
    );
  }
} 