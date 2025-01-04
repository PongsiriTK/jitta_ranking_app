import '../../domain/models/models.dart';

abstract class RemoteDataSource {
  /// Get list of stocks with ranking from GraphQL API
  Future<StockListResponse> getStockList({
    required String market,
    List<String>? sectors,
    int? page,
    int? limit,
  });

  /// Get stock details from GraphQL API
  Future<StockDetail> getStockDetail({
    required String id,
    int? stockId,
  });

  /// Get list of sectors from GraphQL API
  Future<List<Sector>> getSectors();

  /// Toggle stock following status
  Future<void> toggleStockFollowing(String stockId);
}

