import 'package:equatable/equatable.dart';
import '../../core/usecase/usecase.dart';
import '../../core/utils/typedef.dart';
import '../models/models.dart';
import '../repositories/stock_repository.dart';

class GetStockList implements UseCase<StockListResponse, GetStockListParams> {
  final StockRepository repository;

  const GetStockList(this.repository);

  @override
  ResultFuture<StockListResponse> call(GetStockListParams params) async {
    return repository.getStockList(
      market: params.market,
      sectors: params.sectors,
      page: params.page,
      limit: params.limit,
    );
  }
}

class GetStockListParams extends Equatable {
  final String market;
  final List<String>? sectors;
  final int? page;
  final int? limit;

  const GetStockListParams({
    required this.market,
    this.sectors,
    this.page,
    this.limit,
  });

  @override
  List<Object?> get props => [market, sectors, page, limit];
} 