import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jitta_ranking_app/domain/models/sector.dart';
import 'stock_price.dart';
import 'jitta_score.dart';

part 'stock_detail.freezed.dart';
part 'stock_detail.g.dart';

@freezed
class StockDetail with _$StockDetail {
  const factory StockDetail({
    required String id,
    required int stockId,
    required String symbol,
    required String title,
    String? summary,
    required Sector sector,
    required String market,
    required String industry,
    required String exchange,
    required String currency,
    required String currencySign,
    required String priceCurrency,
    required String status,
    required String nativeName,
    required bool isFollowing,
    required bool updatedFinancialComplete,
    required StockPrice latestPrice,
    required LossChance lossChance,
    required MarketComparison marketComparison,
    required CompanyInfo company,
    required JittaInfo jitta,
  }) = _StockDetail;

  factory StockDetail.fromJson(Map<String, dynamic> json) => _$StockDetailFromJson(json);
}

@freezed
class LossChance with _$LossChance {
  const factory LossChance({
    required double last,
    required DateTime updatedAt,
  }) = _LossChance;

  factory LossChance.fromJson(Map<String, dynamic> json) => _$LossChanceFromJson(json);
}

@freezed
class MarketComparison with _$MarketComparison {
  const factory MarketComparison({
    required int rank,
    required int member,
  }) = _MarketComparison;

  factory MarketComparison.fromJson(Map<String, dynamic> json) => _$MarketComparisonFromJson(json);
}

@freezed
class CompanyInfo with _$CompanyInfo {
  const factory CompanyInfo({
    DateTime? ipoDate,
    String? url,
  }) = _CompanyInfo;

  factory CompanyInfo.fromJson(Map<String, dynamic> json) => _$CompanyInfoFromJson(json);
}

@freezed
class JittaInfo with _$JittaInfo {
  const factory JittaInfo({
    required PriceDiff priceDiff,
    required MonthlyPrice monthlyPrice,
    required JittaScore score,
    required JittaLine line,
    required JittaFactor factor,
    required JittaSign sign,
  }) = _JittaInfo;

  factory JittaInfo.fromJson(Map<String, dynamic> json) => _$JittaInfoFromJson(json);
}

@freezed
class PriceDiff with _$PriceDiff {
  const factory PriceDiff({
    required PriceDiffItem last,
    required List<PriceDiffItem> values,
  }) = _PriceDiff;

  factory PriceDiff.fromJson(Map<String, dynamic> json) => _$PriceDiffFromJson(json);
}

@freezed
class PriceDiffItem with _$PriceDiffItem {
  const factory PriceDiffItem({
    required String id,
    required double value,
    required String type,
    required double percent,
  }) = _PriceDiffItem;

  factory PriceDiffItem.fromJson(Map<String, dynamic> json) => _$PriceDiffItemFromJson(json);
}

@freezed
class MonthlyPrice with _$MonthlyPrice {
  const factory MonthlyPrice({
    required MonthlyPriceItem last,
    required int total,
    required List<MonthlyPriceItem> values,
  }) = _MonthlyPrice;

  factory MonthlyPrice.fromJson(Map<String, dynamic> json) => _$MonthlyPriceFromJson(json);
}

@freezed
class MonthlyPriceItem with _$MonthlyPriceItem {
  const factory MonthlyPriceItem({
    required String id,
    required double value,
    required int year,
    required int month,
  }) = _MonthlyPriceItem;

  factory MonthlyPriceItem.fromJson(Map<String, dynamic> json) => _$MonthlyPriceItemFromJson(json);
}

@freezed
class JittaLine with _$JittaLine {
  const factory JittaLine({
    required int total,
    required List<MonthlyPriceItem> values,
  }) = _JittaLine;

  factory JittaLine.fromJson(Map<String, dynamic> json) => _$JittaLineFromJson(json);
}

@freezed
class JittaFactor with _$JittaFactor {
  const factory JittaFactor({
    required FactorValue value,
  }) = _JittaFactor;

  factory JittaFactor.fromJson(Map<String, dynamic> json) => _$JittaFactorFromJson(json);
}

@freezed
class FactorValue with _$FactorValue {
  const factory FactorValue({
    required FactorItem growth,
    required FactorItem recent,
    required FactorItem financial,
    required FactorItem return_,
    required FactorItem management,
  }) = _FactorValue;

  factory FactorValue.fromJson(Map<String, dynamic> json) => _$FactorValueFromJson(json);
}

@freezed
class FactorItem with _$FactorItem {
  const factory FactorItem({
    required double value,
    required String name,
    required String level,
  }) = _FactorItem;

  factory FactorItem.fromJson(Map<String, dynamic> json) => _$FactorItemFromJson(json);
}

@freezed
class JittaSign with _$JittaSign {
  const factory JittaSign({
    required SignItem last,
  }) = _JittaSign;

  factory JittaSign.fromJson(Map<String, dynamic> json) => _$JittaSignFromJson(json);
}

@freezed
class SignItem with _$SignItem {
  const factory SignItem({
    required String title,
    required String type,
    required String name,
    required String value,
    required SignDisplay display,
  }) = _SignItem;

  factory SignItem.fromJson(Map<String, dynamic> json) => _$SignItemFromJson(json);
}

@freezed
class SignDisplay with _$SignDisplay {
  const factory SignDisplay({
    required String title,
    String? value,
    String? columnHead,
    List<SignColumn>? columns,
    String? footer,
  }) = _SignDisplay;

  factory SignDisplay.fromJson(Map<String, dynamic> json) => _$SignDisplayFromJson(json);
}

@freezed
class SignColumn with _$SignColumn {
  const factory SignColumn({
    required String name,
    required String data,
  }) = _SignColumn;

  factory SignColumn.fromJson(Map<String, dynamic> json) => _$SignColumnFromJson(json);
} 