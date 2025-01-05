import 'package:dartz/dartz.dart';
import '../../core/error/failures.dart';
import '../../core/utils/typedef.dart';
import '../../domain/models/models.dart';
import '../../domain/repositories/stock_repository.dart';
import '../datasources/local_data_source.dart';
import '../datasources/remote_data_source.dart';

class StockRepositoryImpl implements StockRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  StockRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, StockListResponse>> getStockList({
    required String market,
    List<String>? sectors,
    int? page,
    int? limit,
  }) async {
    try {
      // Try to get from remote
      final result = await remoteDataSource.getStockList(
        market: market,
        sectors: sectors,
        page: page,
        limit: limit,
      );
      
      // Cache the result
      await localDataSource.cacheStockList(result);
      
      return Right(result);
    } catch (e) {
      // On error, try to get from cache
      try {
        final cachedResult = await localDataSource.getCachedStockList();
        return Right(cachedResult);
      } catch (e) {
        return Left(CacheFailure(
          message: 'Failed to get stock list: ${e.toString()}',
        ));
      }
    }
  }

  @override
  Future<Either<Failure, StockDetail>> getStockDetail({
    required String id,
    int? stockId,
  }) async {
    try {
      // Try to get from remote
      final result = await remoteDataSource.getStockDetail(
        id: id,
        stockId: stockId,
      );
      
      // Cache the result
      await localDataSource.cacheStockDetail(result);
      
      return Right(result);
    } catch (e) {
      // On error, try to get from cache
      try {
        final cachedResult = await localDataSource.getCachedStockDetail(id);
        if (cachedResult == null) {
          return Left(CacheFailure(
            message: 'Stock detail not found in cache',
          ));
        }
        return Right(cachedResult);
      } catch (e) {
        return Left(CacheFailure(
          message: 'Failed to get stock detail: ${e.toString()}',
        ));
      }
    }
  }

  @override
  Future<Either<Failure, List<Sector>>> getSectors() async {
    try {
      // Try to get from remote
      final result = await remoteDataSource.getSectors();
      
      // Cache the result
      await localDataSource.cacheSectors(result);
      
      return Right(result);
    } catch (e) {
      // On error, try to get from cache
      try {
        final cachedResult = await localDataSource.getCachedSectors();
        return Right(cachedResult);
      } catch (e) {
        return Left(CacheFailure(
          message: 'Failed to get sectors: ${e.toString()}',
        ));
      }
    }
  }

  @override
  Future<Either<Failure, void>> toggleStockFollowing(String stockId) async {
    try {
      await remoteDataSource.toggleStockFollowing(stockId);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(
        message: 'Failed to toggle stock following: ${e.toString()}',
      ));
    }
  }

  @override
  Future<Either<Failure, StockListResponse>> getCachedStockList() async {
    try {
      final result = await localDataSource.getCachedStockList();
      return Right(result);
    } catch (e) {
      return Left(CacheFailure(
        message: 'Failed to get cached stock list: ${e.toString()}',
      ));
    }
  }

  @override
  Future<Either<Failure, StockDetail>> getCachedStockDetail(String stockId) async {
    try {
      final result = await localDataSource.getCachedStockDetail(stockId);
      if (result == null) {
        return Left(CacheFailure(
          message: 'Stock detail not found in cache',
        ));
      }
      return Right(result);
    } catch (e) {
      return Left(CacheFailure(
        message: 'Failed to get cached stock detail: ${e.toString()}',
      ));
    }
  }
} 