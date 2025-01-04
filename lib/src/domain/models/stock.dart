import 'package:freezed_annotation/freezed_annotation.dart';
import 'sector.dart';

part 'stock.freezed.dart';
part 'stock.g.dart';

@freezed
class Stock with _$Stock {
  const factory Stock({
    required String id,
    required int stockId,
    required int rank,
    required String symbol,
    required String exchange,
    required String title,
    required double jittaScore,
    required String nativeName,
    required Sector sector,
    required String industry,
    String? summary,
    @Default(false) bool isFollowing,
    String? market,
    String? currency,
    String? currencySign,
    String? priceCurrency,
    String? status,
    DateTime? updatedFinancialComplete,
  }) = _Stock;

  factory Stock.fromJson(Map<String, dynamic> json) => _$StockFromJson(json);
} 