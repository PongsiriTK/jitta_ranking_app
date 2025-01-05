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
  Future<void> cacheStockDetail(StockDetail detail) async {
    await database.transaction(() async {
      // Cache main stock detail
      await database.into(database.stockDetails).insertOnConflictUpdate(
            StockDetailsCompanion.insert(
              id: detail.id,
              summary: Value(detail.summary),
              currency: detail.currency,
              currencySign: detail.currencySign,
              priceCurrency: detail.priceCurrency,
              status: detail.status,
              latestPrice: detail.latestPrice.close,
              priceDateTime: detail.latestPrice.datetime,
              lossChanceLast: detail.lossChance.last,
              lossChanceUpdatedAt: detail.lossChance.updatedAt,
              marketRank: detail.marketComparison.rank,
              marketMember: detail.marketComparison.member,
              ipoDate: Value(detail.company.ipoDate),
              companyUrl: Value(detail.company.url),
              priceDiffId: detail.jitta.priceDiff.last.id,
              priceDiffValue: detail.jitta.priceDiff.last.value,
              priceDiffType: detail.jitta.priceDiff.last.type,
              priceDiffPercent: detail.jitta.priceDiff.last.percent,
              monthlyPriceId: detail.jitta.monthlyPrice.last.id,
              monthlyPriceValue: detail.jitta.monthlyPrice.last.value,
              monthlyPriceYear: detail.jitta.monthlyPrice.last.year,
              monthlyPriceMonth: detail.jitta.monthlyPrice.last.month,
              monthlyPriceTotal: detail.jitta.monthlyPrice.total,
              scoreId: detail.jitta.score.last.id,
              scoreValue: detail.jitta.score.last.value,
              lineTotal: detail.jitta.line.total,
              factorGrowthValue: detail.jitta.factor.value.growth.value,
              factorGrowthName: detail.jitta.factor.value.growth.name,
              factorGrowthLevel: detail.jitta.factor.value.growth.level,
              factorRecentValue: detail.jitta.factor.value.recent.value,
              factorRecentName: detail.jitta.factor.value.recent.name,
              factorRecentLevel: detail.jitta.factor.value.recent.level,
              factorFinancialValue: detail.jitta.factor.value.financial.value,
              factorFinancialName: detail.jitta.factor.value.financial.name,
              factorFinancialLevel: detail.jitta.factor.value.financial.level,
              factorReturnValue: detail.jitta.factor.value.return_.value,
              factorReturnName: detail.jitta.factor.value.return_.name,
              factorReturnLevel: detail.jitta.factor.value.return_.level,
              factorManagementValue: detail.jitta.factor.value.management.value,
              factorManagementName: detail.jitta.factor.value.management.name,
              factorManagementLevel: detail.jitta.factor.value.management.level,
              signTitle: detail.jitta.sign.last.title,
              signType: detail.jitta.sign.last.type,
              signName: detail.jitta.sign.last.name,
              signValue: detail.jitta.sign.last.value,
              signDisplayTitle: detail.jitta.sign.last.display.title,
              signDisplayValue: Value(detail.jitta.sign.last.display.value),
              signDisplayColumnHead: Value(detail.jitta.sign.last.display.columnHead),
              signDisplayFooter: Value(detail.jitta.sign.last.display.footer),
              updatedAt: DateTime.now(),
            ),
          );

      // Cache historical data
      await _cacheHistoricalData(detail);

      // Cache sign columns
      await _cacheSignColumns(detail);
    });
  }

  Future<void> _cacheHistoricalData(StockDetail detail) async {
    // Clear existing historical data
    await (database.delete(database.stockHistoricalData)
          ..where((tbl) => tbl.stockId.equals(detail.id)))
        .go();

    // Cache price diff history
    for (final item in detail.jitta.priceDiff.values) {
      await database.into(database.stockHistoricalData).insert(
            StockHistoricalDataCompanion.insert(
              stockId: detail.id,
              dataType: 'price_diff',
              itemId: item.id,
              value: item.value,
              percent: Value(item.percent),
              type: Value(item.type),
              updatedAt: DateTime.now(),
            ),
          );
    }

    // Cache monthly price history
    for (final item in detail.jitta.monthlyPrice.values) {
      await database.into(database.stockHistoricalData).insert(
            StockHistoricalDataCompanion.insert(
              stockId: detail.id,
              dataType: 'monthly_price',
              itemId: item.id,
              value: item.value,
              year: Value(item.year),
              month: Value(item.month),
              updatedAt: DateTime.now(),
            ),
          );
    }

    // Cache score history
    for (final item in detail.jitta.score.values) {
      await database.into(database.stockHistoricalData).insert(
            StockHistoricalDataCompanion.insert(
              stockId: detail.id,
              dataType: 'score',
              itemId: item.id,
              value: item.value,
              updatedAt: DateTime.now(),
            ),
          );
    }

    // Cache line history
    for (final item in detail.jitta.line.values) {
      await database.into(database.stockHistoricalData).insert(
            StockHistoricalDataCompanion.insert(
              stockId: detail.id,
              dataType: 'line',
              itemId: item.id,
              value: item.value,
              year: Value(item.year),
              month: Value(item.month),
              updatedAt: DateTime.now(),
            ),
          );
    }
  }

  Future<void> _cacheSignColumns(StockDetail detail) async {
    // Clear existing sign columns
    await (database.delete(database.stockSignColumns)
          ..where((tbl) => tbl.stockId.equals(detail.id)))
        .go();

    // Cache new sign columns
    if (detail.jitta.sign.last.display.columns != null) {
      for (final column in detail.jitta.sign.last.display.columns!) {
        await database.into(database.stockSignColumns).insert(
              StockSignColumnsCompanion.insert(
                stockId: detail.id,
                name: column.name,
                data: column.data,
                updatedAt: DateTime.now(),
              ),
            );
      }
    }
  }

  @override
  Future<StockDetail?> getCachedStockDetail(String id) async {
    final detailResult = await (database.select(database.stockDetails)
          ..where((t) => t.id.equals(id)))
        .getSingleOrNull();

    if (detailResult == null) {
      return null;
    }

    final stock = await (database.select(database.stocks)
          ..where((t) => t.id.equals(id)))
        .join([
      innerJoin(
        database.sectors,
        database.sectors.id.equalsExp(database.stocks.sectorId),
      ),
    ]).getSingle();

    final historicalData = await (database.select(database.stockHistoricalData)
          ..where((t) => t.stockId.equals(id)))
        .get();

    final signColumns = await (database.select(database.stockSignColumns)
          ..where((t) => t.stockId.equals(id)))
        .get();

    return StockDetail(
      id: detailResult.id,
      stockId: stock.readTable(database.stocks).stockId,
      symbol: stock.readTable(database.stocks).symbol,
      title: stock.readTable(database.stocks).title,
      summary: detailResult.summary,
      sector: Sector(
        id: stock.readTable(database.sectors).id,
        name: stock.readTable(database.sectors).name,
      ),
      market: stock.readTable(database.stocks).market!,
      industry: stock.readTable(database.stocks).industry,
      exchange: stock.readTable(database.stocks).exchange,
      currency: detailResult.currency,
      currencySign: detailResult.currencySign,
      priceCurrency: detailResult.priceCurrency,
      status: detailResult.status,
      nativeName: stock.readTable(database.stocks).nativeName,
      isFollowing: stock.readTable(database.stocks).isFollowing,
      updatedFinancialComplete: true,
      latestPrice: StockPrice(
        close: detailResult.latestPrice,
        datetime: detailResult.priceDateTime,
      ),
      lossChance: LossChance(
        last: detailResult.lossChanceLast,
        updatedAt: detailResult.lossChanceUpdatedAt,
      ),
      marketComparison: MarketComparison(
        rank: detailResult.marketRank,
        member: detailResult.marketMember,
      ),
      company: CompanyInfo(
        ipoDate: detailResult.ipoDate,
        url: detailResult.companyUrl,
      ),
      jitta: JittaInfo(
        priceDiff: _buildPriceDiff(detailResult, historicalData),
        monthlyPrice: _buildMonthlyPrice(detailResult, historicalData),
        score: _buildJittaScore(detailResult, historicalData),
        line: _buildJittaLine(detailResult, historicalData),
        factor: JittaFactor(
          value: FactorValue(
            growth: FactorItem(
              value: detailResult.factorGrowthValue,
              name: detailResult.factorGrowthName,
              level: detailResult.factorGrowthLevel,
            ),
            recent: FactorItem(
              value: detailResult.factorRecentValue,
              name: detailResult.factorRecentName,
              level: detailResult.factorRecentLevel,
            ),
            financial: FactorItem(
              value: detailResult.factorFinancialValue,
              name: detailResult.factorFinancialName,
              level: detailResult.factorFinancialLevel,
            ),
            return_: FactorItem(
              value: detailResult.factorReturnValue,
              name: detailResult.factorReturnName,
              level: detailResult.factorReturnLevel,
            ),
            management: FactorItem(
              value: detailResult.factorManagementValue,
              name: detailResult.factorManagementName,
              level: detailResult.factorManagementLevel,
            ),
          ),
        ),
        sign: JittaSign(
          last: SignItem(
            title: detailResult.signTitle,
            type: detailResult.signType,
            name: detailResult.signName,
            value: detailResult.signValue,
            display: SignDisplay(
              title: detailResult.signDisplayTitle,
              value: detailResult.signDisplayValue,
              columnHead: detailResult.signDisplayColumnHead,
              columns: signColumns
                  .map((e) => SignColumn(
                        name: e.name,
                        data: e.data,
                      ))
                  .toList(),
              footer: detailResult.signDisplayFooter,
            ),
          ),
        ),
      ),
    );
  }

  PriceDiff _buildPriceDiff(
    StockDetailEntity detail,
    List<StockHistoricalDataEntity> historicalData,
  ) {
    final values = historicalData
        .where((e) => e.dataType == 'price_diff')
        .map((e) => PriceDiffItem(
              id: e.itemId,
              value: e.value,
              type: e.type!,
              percent: e.percent!,
            ))
        .toList();

    return PriceDiff(
      last: PriceDiffItem(
        id: detail.priceDiffId,
        value: detail.priceDiffValue,
        type: detail.priceDiffType,
        percent: detail.priceDiffPercent,
      ),
      values: values,
    );
  }

  MonthlyPrice _buildMonthlyPrice(
    StockDetailEntity detail,
    List<StockHistoricalDataEntity> historicalData,
  ) {
    final values = historicalData
        .where((e) => e.dataType == 'monthly_price')
        .map((e) => MonthlyPriceItem(
              id: e.itemId,
              value: e.value,
              year: e.year!,
              month: e.month!,
            ))
        .toList();

    return MonthlyPrice(
      last: MonthlyPriceItem(
        id: detail.monthlyPriceId,
        value: detail.monthlyPriceValue,
        year: detail.monthlyPriceYear,
        month: detail.monthlyPriceMonth,
      ),
      total: detail.monthlyPriceTotal,
      values: values,
    );
  }

  JittaScore _buildJittaScore(
    StockDetailEntity detail,
    List<StockHistoricalDataEntity> historicalData,
  ) {
    final values = historicalData
        .where((e) => e.dataType == 'score')
        .map((e) => ScoreItem(
              id: e.itemId,
              value: e.value,
              quarter: e.quarter?.toString(),
              year: e.quarter,
            ))
        .toList();

    return JittaScore(
      last: ScoreItem(
        id: detail.scoreId,
        value: detail.scoreValue,
      ),
      values: values,
    );
  }

  JittaLine _buildJittaLine(
    StockDetailEntity detail,
    List<StockHistoricalDataEntity> historicalData,
  ) {
    final values = historicalData
        .where((e) => e.dataType == 'line')
        .map((e) => MonthlyPriceItem(
              id: e.itemId,
              value: e.value,
              year: e.year!,
              month: e.month!,
            ))
        .toList();

    return JittaLine(
      total: detail.lineTotal,
      values: values,
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

  @override
  Future<void> clearSettings() async {
    await database.transaction(() async {
      await (database.delete(database.settings)
            ..where((t) => t.key.isIn(['selected_market', 'selected_sectors', 'theme_mode'])))
          .go();
    });
  }
} 