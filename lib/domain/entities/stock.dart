import 'package:equatable/equatable.dart';
import 'sector.dart';

class Stock extends Equatable {
  final String id;
  final int stockId;
  final int rank;
  final String symbol;
  final String exchange;
  final String title;
  final double jittaScore;
  final String? nativeName;
  final Sector sector;
  final String? industry;
  final String market;
  final DateTime updatedAt;

  const Stock({
    required this.id,
    required this.stockId,
    required this.rank,
    required this.symbol,
    required this.exchange,
    required this.title,
    required this.jittaScore,
    this.nativeName,
    required this.sector,
    this.industry,
    required this.market,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        stockId,
        rank,
        symbol,
        exchange,
        title,
        jittaScore,
        nativeName,
        sector,
        industry,
        market,
        updatedAt,
      ];
}
