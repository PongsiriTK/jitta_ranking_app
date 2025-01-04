import '../../core/usecase/usecase.dart';
import '../../core/utils/typedef.dart';
import '../models/models.dart';
import '../repositories/stock_repository.dart';

class GetSectors implements UseCase<List<Sector>, NoParams> {
  final StockRepository repository;

  const GetSectors(this.repository);

  @override
  ResultFuture<List<Sector>> call(NoParams params) async {
    return repository.getSectors();
  }
} 