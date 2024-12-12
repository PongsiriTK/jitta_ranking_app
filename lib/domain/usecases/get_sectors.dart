import 'package:fpdart/fpdart.dart';
import '../core/failure.dart';
import '../entities/sector.dart';
import '../repositories/stock_repository.dart';

class GetSectors {
  final StockRepository repository;

  GetSectors(this.repository);

  Future<Either<Failure, List<Sector>>> call() async {
    return repository.getSectors();
  }
} 