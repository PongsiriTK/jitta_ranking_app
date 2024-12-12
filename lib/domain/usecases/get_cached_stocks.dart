import 'package:fpdart/fpdart.dart';
import '../core/failure.dart';
import '../entities/stock.dart';
import '../repositories/stock_repository.dart';

class GetCachedStocks {
  final StockRepository repository;

  GetCachedStocks(this.repository);

  Future<Either<Failure, List<Stock>>> call() async {
    return repository.getCachedStocks();
  }
} 