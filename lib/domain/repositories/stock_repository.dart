import 'package:fpdart/fpdart.dart';
import '../entities/stock.dart';
import '../entities/sector.dart';
import '../core/failure.dart';

abstract class StockRepository {
  Future<Either<Failure, List<Stock>>> getStocksByRanking({
    required String market,
    List<String>? sectors,
    int? page,
    int? limit,
  });

  Future<Either<Failure, Stock>> getStockById(String id);
  
  Future<Either<Failure, List<Sector>>> getSectors();
  
  Future<Either<Failure, List<Stock>>> getCachedStocks();
  
  Future<Either<Failure, List<Sector>>> getCachedSectors();
  
  Future<Either<Failure, void>> cacheStocks(List<Stock> stocks);
  
  Future<Either<Failure, void>> cacheSectors(List<Sector> sectors);
  
  Future<Either<Failure, void>> clearCache();
}
