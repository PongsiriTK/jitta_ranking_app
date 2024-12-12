import 'package:fpdart/fpdart.dart';
import '../core/failure.dart';
import '../entities/stock.dart';
import '../repositories/stock_repository.dart';

class GetStocksByRanking {
  final StockRepository repository;

  GetStocksByRanking(this.repository);

  Future<Either<Failure, List<Stock>>> call({
    required String market,
    List<String>? sectors,
    int? page,
    int? limit,
  }) async {
    return repository.getStocksByRanking(
      market: market,
      sectors: sectors,
      page: page,
      limit: limit,
    );
  }
} 