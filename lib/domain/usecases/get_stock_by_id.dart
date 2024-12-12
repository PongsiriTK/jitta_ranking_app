import 'package:fpdart/fpdart.dart';
import '../core/failure.dart';
import '../entities/stock.dart';
import '../repositories/stock_repository.dart';

class GetStockById {
  final StockRepository repository;

  GetStockById(this.repository);

  Future<Either<Failure, Stock>> call(String id) async {
    return repository.getStockById(id);
  }
} 