import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_price.freezed.dart';
part 'stock_price.g.dart';

@freezed
class StockPrice with _$StockPrice {
  const factory StockPrice({
    required double close,
    required DateTime datetime,
  }) = _StockPrice;

  factory StockPrice.fromJson(Map<String, dynamic> json) => _$StockPriceFromJson(json);
} 