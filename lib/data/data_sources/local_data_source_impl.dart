import 'dart:convert';
import 'package:drift/drift.dart';
import '../../domain/models/models.dart';
import 'local_data_source.dart';
import 'local/database.dart';

class LocalDataSourceImpl implements LocalDataSource {
  final AppDatabase database;
  static const cacheValidityDuration = Duration(minutes: 30);

  LocalDataSourceImpl({required this.database});

  @override
  Future<void> cacheStockList(StockListResponse response) async {
    await database.transaction(() async {
      // Cache sectors
      await cacheSectors(response.sectors);

      // Cache stocks
      for (final stock in response.data) {
        await database.into(database.stocks).insertOnConflictUpdate(
              StocksCompanion.insert(
                id: stock.id,
                stockId: stock.stockId,
                rank: stock.rank,
                symbol: stock.symbol,
                exchange: stock.exchange,
                title: stock.title,
                jittaScore: stock.jittaScore,
                nativeName: stock.nativeName,
                sectorId: stock.sector.id,
                industry: stock.industry,
                market: Value(stock.market),
                isFollowing: Value(stock.isFollowing),
                updatedAt: DateTime.now(),
              ),
            );
      }
    });
  }

  @override
  Future<StockListResponse> getCachedStockList() async {
    final stocks = await (database.select(database.stocks)
          ..orderBy([(t) => OrderingTerm(expression: t.rank)]))
        .join([
      innerJoin(
        database.sectors,
        database.sectors.id.equalsExp(database.stocks.sectorId),
      ),
    ]).get();

    final sectors = await database.select(database.sectors).get();

    return StockListResponse(
      count: stocks.length,
      data: stocks
          .map(
            (row) => Stock(
              id: row.readTable(database.stocks).id,
              stockId: row.readTable(database.stocks).stockId,
              rank: row.readTable(database.stocks).rank,
              symbol: row.readTable(database.stocks).symbol,
              exchange: row.readTable(database.stocks).exchange,
              title: row.readTable(database.stocks).title,
              jittaScore: row.readTable(database.stocks).jittaScore,
              nativeName: row.readTable(database.stocks).nativeName,
              sector: Sector(
                id: row.readTable(database.sectors).id,
                name: row.readTable(database.sectors).name,
              ),
              industry: row.readTable(database.stocks).industry,
              market: row.readTable(database.stocks).market,
              isFollowing: row.readTable(database.stocks).isFollowing,
            ),
          )
          .toList(),
      sectors: sectors
          .map((s) => Sector(id: s.id, name: s.name))
          .toList(),
    );
  }

  @override
  Future<void> cacheStockDetail(StockDetail stockDetail) async {
    await database.transaction(() async {
      // Cache basic stock info
      await database.into(database.stocks).insertOnConflictUpdate(
            StocksCompanion.insert(
              id: stockDetail.stock.id,
              stockId: stockDetail.stock.stockId,
              rank: stockDetail.stock.rank,
              symbol: stockDetail.stock.symbol,
              exchange: stockDetail.stock.exchange,
              title: stockDetail.stock.title,
              jittaScore: stockDetail.stock.jittaScore,
              nativeName: stockDetail.stock.nativeName,
              sectorId: stockDetail.stock.sector.id,
              industry: stockDetail.stock.industry,
              market: Value(stockDetail.stock.market),
              isFollowing: Value(stockDetail.stock.isFollowing),
              updatedAt: DateTime.now(),
            ),
          );

      // Cache stock details
      await database.into(database.stockDetails).insertOnConflictUpdate(
            StockDetailsCompanion.insert(
              id: stockDetail.stock.id,
              summary: Value(stockDetail.stock.summary),
              currency: Value(stockDetail.stock.currency),
              currencySign: Value(stockDetail.stock.currencySign),
              priceCurrency: Value(stockDetail.stock.priceCurrency),
              status: Value(stockDetail.stock.status),
              latestPrice: stockDetail.latestPrice.close,
              priceDateTime: stockDetail.latestPrice.datetime,
              updatedAt: DateTime.now(),
            ),
          );
    });
  }

  @override
  Future<StockDetail> getCachedStockDetail(String stockId) async {
    final result = await (database.select(database.stocks)
          ..where((t) => t.id.equals(stockId)))
        .join([
      innerJoin(
        database.sectors,
        database.sectors.id.equalsExp(database.stocks.sectorId),
      ),
      innerJoin(
        database.stockDetails,
        database.stockDetails.id.equalsExp(database.stocks.id),
      ),
    ]).getSingle();

    final stock = result.readTable(database.stocks);
    final sector = result.readTable(database.sectors);
    final detail = result.readTable(database.stockDetails);

    return StockDetail(
      stock: Stock(
        id: stock.id,
        stockId: stock.stockId,
        rank: stock.rank,
        symbol: stock.symbol,
        exchange: stock.exchange,
        title: stock.title,
        jittaScore: stock.jittaScore,
        nativeName: stock.nativeName,
        sector: Sector(id: sector.id, name: sector.name),
        industry: stock.industry,
        market: stock.market,
        isFollowing: stock.isFollowing,
        summary: detail.summary,
        currency: detail.currency,
        currencySign: detail.currencySign,
        priceCurrency: detail.priceCurrency,
        status: detail.status,
      ),
      latestPrice: StockPrice(
        close: detail.latestPrice,
        datetime: detail.priceDateTime,
      ),
      jittaScore: JittaScore(
        id: '${stock.id}_${detail.updatedAt.millisecondsSinceEpoch}',
        value: stock.jittaScore,
      ),
      priceHistory: [], // Price history is not cached
      factorScores: {}, // Factor scores are not cached
    );
  }

  @override
  Future<void> cacheSectors(List<Sector> sectors) async {
    await database.batch((batch) {
      batch.insertAll(
        database.sectors,
        sectors.map(
          (s) => SectorsCompanion.insert(
            id: s.id,
            name: s.name,
            updatedAt: DateTime.now(),
          ),
        ),
        mode: InsertMode.insertOrReplace,
      );
    });
  }

  @override
  Future<List<Sector>> getCachedSectors() async {
    final sectors = await database.select(database.sectors).get();
    return sectors.map((s) => Sector(id: s.id, name: s.name)).toList();
  }

  @override
  Future<void> clearCache() async {
    await database.transaction(() async {
      await database.delete(database.stocks).go();
      await database.delete(database.stockDetails).go();
      await database.delete(database.sectors).go();
    });
  }

  @override
  Future<DateTime?> getLastCacheTime() async {
    final stock = await database.select(database.stocks).get();
    if (stock.isEmpty) return null;
    return stock.map((s) => s.updatedAt).reduce((a, b) => a.isAfter(b) ? a : b);
  }

  @override
  Future<bool> isCacheValid() async {
    final lastUpdate = await getLastCacheTime();
    if (lastUpdate == null) return false;
    return DateTime.now().difference(lastUpdate) < cacheValidityDuration;
  }

  @override
  Future<void> saveSelectedMarket(String market) async {
    await database.into(database.settings).insertOnConflictUpdate(
          SettingsCompanion.insert(
            key: 'selected_market',
            value: market,
            updatedAt: DateTime.now(),
          ),
        );
  }

  @override
  Future<String> getSelectedMarket() async {
    final setting = await (database.select(database.settings)
          ..where((t) => t.key.equals('selected_market')))
        .getSingleOrNull();
    return setting?.value ?? 'US'; // Default market
  }

  @override
  Future<void> saveSelectedSectors(List<String> sectors) async {
    await database.into(database.settings).insertOnConflictUpdate(
          SettingsCompanion.insert(
            key: 'selected_sectors',
            value: jsonEncode(sectors),
            updatedAt: DateTime.now(),
          ),
        );
  }

  @override
  Future<List<String>> getSelectedSectors() async {
    final setting = await (database.select(database.settings)
          ..where((t) => t.key.equals('selected_sectors')))
        .getSingleOrNull();
    if (setting == null) return [];
    return List<String>.from(jsonDecode(setting.value));
  }

  @override
  Future<void> saveThemeMode(bool isDark) async {
    await database.into(database.settings).insertOnConflictUpdate(
          SettingsCompanion.insert(
            key: 'is_dark_mode',
            value: isDark.toString(),
            updatedAt: DateTime.now(),
          ),
        );
  }

  @override
  Future<bool> isDarkMode() async {
    final setting = await (database.select(database.settings)
          ..where((t) => t.key.equals('is_dark_mode')))
        .getSingleOrNull();
    return setting?.value == 'true';
  }
} 