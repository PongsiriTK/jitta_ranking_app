import 'package:fpdart/fpdart.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jitta_ranking_app/data/local/database/app_database.dart';
import 'package:jitta_ranking_app/data/mappers/sector_mapper.dart';
import 'package:jitta_ranking_app/data/mappers/stock_mapper.dart';
import 'package:jitta_ranking_app/domain/core/failure.dart';
import 'package:jitta_ranking_app/domain/entities/sector.dart';
import 'package:jitta_ranking_app/domain/entities/stock.dart';
import 'package:jitta_ranking_app/domain/repositories/stock_repository.dart';

class StockRepositoryImpl implements StockRepository {
  final GraphQLClient _graphQLClient;
  final AppDatabase _database;
  final Duration _cacheMaxAge;

  StockRepositoryImpl(
    this._graphQLClient,
    this._database, {
    Duration? cacheMaxAge,
  }) : _cacheMaxAge = cacheMaxAge ?? const Duration(minutes: 15);

  @override
  Future<Either<Failure, List<Stock>>> getStocksByRanking({
    required String market,
    List<String>? sectors,
    int? page,
    int? limit,
  }) async {
    try {
      final result = await _graphQLClient.query(
        QueryOptions(
          document: gql(r'''
            query stockByRanking($market: String!, $sectors: [String], $page: Int, $limit: Int) {
              jittaRanking(filter: { market: $market, sectors: $sectors, page: $page, limit: $limit }) {
                count
                data {
                  id
                  stockId
                  rank
                  symbol
                  exchange
                  title
                  jittaScore
                  nativeName
                  sector {
                    id
                    name
                  }
                  industry
                  market
                }
              }
            }
          '''),
          variables: {
            'market': market,
            if (sectors != null) 'sectors': sectors,
            if (page != null) 'page': page,
            if (limit != null) 'limit': limit,
          },
        ),
      );

      if (result.hasException) {
        return Left(ServerFailure(result.exception.toString()));
      }

      final data = result.data?['jittaRanking']['data'] as List<dynamic>;
      final stocks = data.map((json) => StockMapper.fromGraphQL(json)).toList();

      return Right(stocks);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Stock>> getStockById(String id) async {
    try {
      // Check cache first
      if (await _database.isCacheValid(id, maxAge: _cacheMaxAge)) {
        final stockData = await _database.getStockById(id);
        final sectorData = await _database.getSectorById(stockData!.sectorId);

        if (stockData != null && sectorData != null) {
          final sector = SectorMapper.fromTableData(sectorData);
          final stock = StockMapper.fromTableData(stockData, sector);
          return Right(stock);
        }
      }

      // Fetch from network if cache is invalid or missing
      final result = await _graphQLClient.query(
        QueryOptions(
          document: gql(r'''
            query stockSummaryQuery($id: String!) {
              stock(id: $id) {
                id
                stockId
                symbol
                title
                exchange
                jittaScore
                nativeName
                sector {
                  id
                  name
                }
                industry
                market
                rank
              }
            }
          '''),
          variables: {'id': id},
        ),
      );

      if (result.hasException) {
        return Left(ServerFailure(result.exception.toString()));
      }

      final data = result.data?['stock'];
      if (data == null) {
        return const Left(ValidationFailure('Stock not found'));
      }

      final stock = StockMapper.fromGraphQL(data);

      // Cache the result
      await _database.insertStock(StockMapper.toTableCompanion(stock));
      await _database.insertSector(SectorMapper.toTableCompanion(stock.sector));

      return Right(stock);
    } catch (e) {
      // Try to get from cache as fallback
      try {
        final stockData = await _database.getStockById(id);
        final sectorData = await _database.getSectorById(stockData!.sectorId);

        if (stockData != null && sectorData != null) {
          final sector = SectorMapper.fromTableData(sectorData);
          final stock = StockMapper.fromTableData(stockData, sector);
          return Right(stock);
        }
      } catch (_) {
        // Ignore cache fallback errors
      }

      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Sector>>> getSectors() async {
    try {
      final result = await _graphQLClient.query(
        QueryOptions(
          document: gql(r'''
            query sectors {
              listJittaSectorType {
                id
                name
              }
            }
          '''),
        ),
      );

      if (result.hasException) {
        return Left(ServerFailure(result.exception.toString()));
      }

      final data = result.data?['listJittaSectorType'] as List<dynamic>;
      final sectors = data.map((json) => SectorMapper.fromGraphQL(json)).toList();

      return Right(sectors);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Stock>>> getCachedStocks() async {
    try {
      final stocksData = await _database.getAllStocks();
      final sectorsData = await _database.getAllSectors();

      final sectors = sectorsData.map(SectorMapper.fromTableData).toList();

      final stocks = stocksData.map((stockData) {
        final sector = sectors.firstWhere(
          (s) => s.id == stockData.sectorId,
          orElse: () => Sector(
            id: stockData.sectorId,
            name: 'Unknown',
            updatedAt: DateTime.now(),
          ),
        );
        return StockMapper.fromTableData(stockData, sector);
      }).toList();

      return Right(stocks);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Sector>>> getCachedSectors() async {
    try {
      final sectorsData = await _database.getAllSectors();
      final sectors = sectorsData.map(SectorMapper.fromTableData).toList();
      return Right(sectors);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> cacheStocks(List<Stock> stocks) async {
    try {
      final stockCompanions = stocks.map(StockMapper.toTableCompanion).toList();
      await _database.insertStocks(stockCompanions);
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> cacheSectors(List<Sector> sectors) async {
    try {
      final sectorCompanions = sectors.map(SectorMapper.toTableCompanion).toList();
      await _database.insertSectors(sectorCompanions);
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> clearCache() async {
    try {
      await _database.deleteAllStocks();
      await _database.deleteAllSectors();
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }
}
