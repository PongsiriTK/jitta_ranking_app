import '../../core/utils/typedef.dart';
import '../models/models.dart';

abstract class StockRepository {
  /// Get list of stocks with ranking
  ResultFuture<StockListResponse> getStockList({
    required String market,
    List<String>? sectors,
    int? page,
    int? limit,
  });

  /// Get stock details by ID
  ResultFuture<StockDetail> getStockDetail({
    required String id,
    int? stockId,
  });

  /// Get list of sectors
  ResultFuture<List<Sector>> getSectors();

  /// Toggle stock following status
  ResultVoid toggleStockFollowing(String stockId);

  /// Get cached stock list
  ResultFuture<StockListResponse> getCachedStockList();

  /// Get cached stock detail
  ResultFuture<StockDetail> getCachedStockDetail(String stockId);
} 