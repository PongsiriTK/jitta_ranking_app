import 'package:freezed_annotation/freezed_annotation.dart';
import 'stock.dart';
import 'sector.dart';

part 'stock_list_response.freezed.dart';
part 'stock_list_response.g.dart';

@freezed
class StockListResponse with _$StockListResponse {
  const factory StockListResponse({
    required int count,
    required List<Stock> data,
    required List<Sector> sectors,
  }) = _StockListResponse;

  factory StockListResponse.fromJson(Map<String, dynamic> json) => _$StockListResponseFromJson(json);
} 