import 'package:drift/drift.dart';
import 'sector_table.dart';

@DataClassName('StockTableData')
class StockTable extends Table {
  TextColumn get id => text()();
  IntColumn get stockId => integer()();
  IntColumn get rank => integer()();
  TextColumn get symbol => text()();
  TextColumn get exchange => text()();
  TextColumn get title => text()();
  RealColumn get jittaScore => real()();
  TextColumn get nativeName => text().nullable()();
  TextColumn get sectorId => text().references(SectorTable, #id)();
  TextColumn get industry => text().nullable()();
  TextColumn get market => text()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
} 