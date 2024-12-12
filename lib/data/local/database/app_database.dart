import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'tables/stock_table.dart';
import 'tables/sector_table.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [StockTable, SectorTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
    );
  }

  // Stock Methods
  Future<List<StockTableData>> getAllStocks() => select(stockTable).get();

  Future<StockTableData?> getStockById(String id) =>
      (select(stockTable)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<void> insertStock(StockTableCompanion stock) =>
      into(stockTable).insert(stock, mode: InsertMode.replace);

  Future<void> insertStocks(List<StockTableCompanion> stocks) async {
    await batch((batch) {
      batch.insertAll(stockTable, stocks, mode: InsertMode.replace);
    });
  }

  Future<void> deleteAllStocks() => delete(stockTable).go();

  Future<void> deleteStockById(String id) =>
      (delete(stockTable)..where((t) => t.id.equals(id))).go();

  // Sector Methods
  Future<List<SectorTableData>> getAllSectors() => select(sectorTable).get();

  Future<SectorTableData?> getSectorById(String id) =>
      (select(sectorTable)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<void> insertSector(SectorTableCompanion sector) =>
      into(sectorTable).insert(sector, mode: InsertMode.replace);

  Future<void> insertSectors(List<SectorTableCompanion> sectors) async {
    await batch((batch) {
      batch.insertAll(sectorTable, sectors, mode: InsertMode.replace);
    });
  }

  Future<void> deleteAllSectors() => delete(sectorTable).go();

  // Cache Management
  Future<DateTime?> getLastUpdated(String id) async {
    final stock = await getStockById(id);
    return stock?.updatedAt;
  }

  Future<bool> isCacheValid(String id, {Duration maxAge = const Duration(minutes: 15)}) async {
    final lastUpdated = await getLastUpdated(id);
    if (lastUpdated == null) return false;
    
    final age = DateTime.now().difference(lastUpdated);
    return age <= maxAge;
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'jitta_ranking.db'));
    return NativeDatabase.createInBackground(file);
  });
}
