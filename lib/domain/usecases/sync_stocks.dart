import 'package:fpdart/fpdart.dart';
import '../core/failure.dart';
import '../entities/stock.dart';
import '../repositories/stock_repository.dart';

class SyncStocks {
  final StockRepository repository;

  SyncStocks(this.repository);

  Future<Either<Failure, List<Stock>>> call({
    required String market,
    List<String>? sectors,
    int? page,
    int? limit,
  }) async {
    final result = await repository.getStocksByRanking(
      market: market,
      sectors: sectors,
      page: page,
      limit: limit,
    );

    if (result.isLeft()) {
      return result;
    }

    final stocks = result.getRight().toNullable()!;
    final cacheResult = await repository.cacheStocks(stocks);

    return cacheResult.fold(
      (failure) => Left(failure),
      (_) => Right(stocks),
    );
  }
} 
 