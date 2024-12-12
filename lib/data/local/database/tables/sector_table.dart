import 'package:drift/drift.dart';

@DataClassName('SectorTableData')
class SectorTable extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
} 