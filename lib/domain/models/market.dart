import 'package:freezed_annotation/freezed_annotation.dart';

part 'market.freezed.dart';
part 'market.g.dart';

@freezed
class Market with _$Market {
  const factory Market({
    required String code,
    required String name,
    required int id,
  }) = _Market;

  factory Market.fromJson(Map<String, dynamic> json) => _$MarketFromJson(json);
} 