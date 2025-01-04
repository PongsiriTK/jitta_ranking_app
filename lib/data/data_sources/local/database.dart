import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

@DriftDatabase(tables: [
  Stocks,
  StockDetails,
  Sectors,
  Settings,
])
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
      onUpgrade: (Migrator m, int from, int to) async {
        // Handle future migrations
      },
    );
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'jitta_stocks.db'));
    return NativeDatabase(file);
  });
}

@DataClassName('StockEntity')
class Stocks extends Table {
  TextColumn get id => text()();
  IntColumn get stockId => integer()();
  IntColumn get rank => integer()();
  TextColumn get symbol => text()();
  TextColumn get exchange => text()();
  TextColumn get title => text()();
  RealColumn get jittaScore => real()();
  TextColumn get nativeName => text()();
  TextColumn get sectorId => text().references(Sectors, #id)();
  TextColumn get industry => text()();
  TextColumn get market => text().nullable()();
  BoolColumn get isFollowing => boolean().withDefault(const Constant(false))();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('StockDetailEntity')
class StockDetails extends Table {
  TextColumn get id => text().references(Stocks, #id)();
  TextColumn get summary => text().nullable()();
  TextColumn get currency => text().nullable()();
  TextColumn get currencySign => text().nullable()();
  TextColumn get priceCurrency => text().nullable()();
  TextColumn get status => text().nullable()();
  RealColumn get latestPrice => real()();
  DateTimeColumn get priceDateTime => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('SectorEntity')
class Sectors extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('SettingEntity')
class Settings extends Table {
  TextColumn get key => text()();
  TextColumn get value => text()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {key};
} 