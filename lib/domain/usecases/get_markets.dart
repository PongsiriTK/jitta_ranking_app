import 'package:injectable/injectable.dart';
import '../../core/usecase/usecase.dart';
import '../../core/utils/typedef.dart';
import '../models/market.dart';
import '../repositories/stock_repository.dart';

@injectable
class GetMarkets implements UseCase<List<Market>, NoParams> {
  final StockRepository repository;

  const GetMarkets(this.repository);

  @override
  ResultFuture<List<Market>> call(NoParams params) async {
    return repository.getMarkets();
  }
} 