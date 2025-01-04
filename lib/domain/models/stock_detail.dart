import 'package:freezed_annotation/freezed_annotation.dart';
import 'stock.dart';
import 'stock_price.dart';
import 'jitta_score.dart';

part 'stock_detail.freezed.dart';
part 'stock_detail.g.dart';

@freezed
class StockDetail with _$StockDetail {
  const factory StockDetail({
    required Stock stock,
    required StockPrice latestPrice,
    required JittaScore jittaScore,
    required List<StockPrice> priceHistory,
    required Map<String, double> factorScores,
    DateTime? ipoDate,
    String? companyUrl,
    int? marketRank,
    int? marketTotalMembers,
  }) = _StockDetail;

  factory StockDetail.fromJson(Map<String, dynamic> json) => _$StockDetailFromJson(json);
} 