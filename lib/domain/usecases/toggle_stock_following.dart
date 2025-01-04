import 'package:equatable/equatable.dart';
import '../../core/usecase/usecase.dart';
import '../../core/utils/typedef.dart';
import '../repositories/stock_repository.dart';

class ToggleStockFollowing implements UseCase<void, ToggleStockFollowingParams> {
  final StockRepository repository;

  const ToggleStockFollowing(this.repository);

  @override
  ResultFuture<void> call(ToggleStockFollowingParams params) async {
    return repository.toggleStockFollowing(params.stockId);
  }
}

class ToggleStockFollowingParams extends Equatable {
  final String stockId;

  const ToggleStockFollowingParams({required this.stockId});

  @override
  List<Object> get props => [stockId];
} 