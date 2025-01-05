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
  StockHistoricalData,
  StockSignColumns,
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
  TextColumn get currency => text()();
  TextColumn get currencySign => text()();
  TextColumn get priceCurrency => text()();
  TextColumn get status => text()();
  RealColumn get latestPrice => real()();
  DateTimeColumn get priceDateTime => dateTime()();
  
  // Loss chance
  RealColumn get lossChanceLast => real()();
  DateTimeColumn get lossChanceUpdatedAt => dateTime()();
  
  // Market comparison
  IntColumn get marketRank => integer()();
  IntColumn get marketMember => integer()();
  
  // Company info
  DateTimeColumn get ipoDate => dateTime().nullable()();
  TextColumn get companyUrl => text().nullable()();
  
  // Jitta price diff
  TextColumn get priceDiffId => text()();
  RealColumn get priceDiffValue => real()();
  TextColumn get priceDiffType => text()();
  RealColumn get priceDiffPercent => real()();
  
  // Jitta monthly price
  TextColumn get monthlyPriceId => text()();
  RealColumn get monthlyPriceValue => real()();
  IntColumn get monthlyPriceYear => integer()();
  IntColumn get monthlyPriceMonth => integer()();
  IntColumn get monthlyPriceTotal => integer()();
  
  // Jitta score
  TextColumn get scoreId => text()();
  RealColumn get scoreValue => real()();
  
  // Jitta line
  IntColumn get lineTotal => integer()();
  
  // Jitta factors
  RealColumn get factorGrowthValue => real()();
  TextColumn get factorGrowthName => text()();
  TextColumn get factorGrowthLevel => text()();
  
  RealColumn get factorRecentValue => real()();
  TextColumn get factorRecentName => text()();
  TextColumn get factorRecentLevel => text()();
  
  RealColumn get factorFinancialValue => real()();
  TextColumn get factorFinancialName => text()();
  TextColumn get factorFinancialLevel => text()();
  
  RealColumn get factorReturnValue => real()();
  TextColumn get factorReturnName => text()();
  TextColumn get factorReturnLevel => text()();
  
  RealColumn get factorManagementValue => real()();
  TextColumn get factorManagementName => text()();
  TextColumn get factorManagementLevel => text()();
  
  // Jitta sign
  TextColumn get signTitle => text()();
  TextColumn get signType => text()();
  TextColumn get signName => text()();
  TextColumn get signValue => text()();
  TextColumn get signDisplayTitle => text()();
  TextColumn get signDisplayValue => text().nullable()();
  TextColumn get signDisplayColumnHead => text().nullable()();
  TextColumn get signDisplayFooter => text().nullable()();
  
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

// Additional table for historical data
@DataClassName('StockHistoricalDataEntity')
class StockHistoricalData extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get stockId => text().references(Stocks, #id)();
  TextColumn get dataType => text()(); // 'price_diff', 'monthly_price', 'score', 'line'
  TextColumn get itemId => text()();
  RealColumn get value => real()();
  RealColumn get percent => real().nullable()(); // For price diff
  TextColumn get type => text().nullable()(); // For price diff
  IntColumn get year => integer().nullable()(); // For monthly data
  IntColumn get month => integer().nullable()(); // For monthly data
  IntColumn get quarter => integer().nullable()(); // For score
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

// Additional table for sign columns
@DataClassName('StockSignColumnEntity')
class StockSignColumns extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get stockId => text().references(Stocks, #id)();
  TextColumn get name => text()();
  TextColumn get data => text()();
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