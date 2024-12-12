import 'package:fpdart/fpdart.dart';
import '../core/failure.dart';
import '../entities/stock.dart';
import '../repositories/stock_repository.dart';

class CacheStocks {
  final StockRepository repository;

  CacheStocks(this.repository);

  Future<Either<Failure, void>> call(List<Stock> stocks) async {
    return repository.cacheStocks(stocks);
  }
} 