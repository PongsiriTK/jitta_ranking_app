import 'package:equatable/equatable.dart';
import '../../core/usecase/usecase.dart';
import '../../core/utils/typedef.dart';
import '../models/models.dart';
import '../repositories/stock_repository.dart';

class GetStockDetail implements UseCase<StockDetail, GetStockDetailParams> {
  final StockRepository repository;

  const GetStockDetail(this.repository);

  @override
  ResultFuture<StockDetail> call(GetStockDetailParams params) async {
    return repository.getStockDetail(
      id: params.id,
      stockId: params.stockId,
    );
  }
}

class GetStockDetailParams extends Equatable {
  final String id;
  final int? stockId;

  const GetStockDetailParams({
    required this.id,
    this.stockId,
  });

  @override
  List<Object?> get props => [id, stockId];
} 