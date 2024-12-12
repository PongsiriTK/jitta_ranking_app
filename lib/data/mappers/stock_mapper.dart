import 'package:drift/drift.dart';
import 'package:jitta_ranking_app/data/local/database/app_database.dart';
import 'package:jitta_ranking_app/domain/entities/stock.dart';
import 'package:jitta_ranking_app/domain/entities/sector.dart';

class StockMapper {
  static Stock fromGraphQL(Map<String, dynamic> json) {
    final sector = json['sector'] as Map<String, dynamic>;
    
    return Stock(
      id: json['id'] as String,
      stockId: json['stockId'] as int,
      rank: json['rank'] as int,
      symbol: json['symbol'] as String,
      exchange: json['exchange'] as String,
      title: json['title'] as String,
      jittaScore: (json['jittaScore'] as num).toDouble(),
      nativeName: json['nativeName'] as String?,
      sector: Sector(
        id: sector['id'] as String,
        name: sector['name'] as String,
        updatedAt: DateTime.now(),
      ),
      industry: json['industry'] as String?,
      market: json['market'] as String,
      updatedAt: DateTime.now(),
    );
  }

  static StockTableCompanion toTableCompanion(Stock stock) {
    return StockTableCompanion.insert(
      id: stock.id,
      stockId: stock.stockId,
      rank: stock.rank,
      symbol: stock.symbol,
      exchange: stock.exchange,
      title: stock.title,
      jittaScore: stock.jittaScore,
      nativeName: Value(stock.nativeName),
      sectorId: stock.sector.id,
      industry: Value(stock.industry),
      market: stock.market,
      updatedAt: stock.updatedAt,
    );
  }

  static Stock fromTableData(StockTableData data, Sector sector) {
    return Stock(
      id: data.id,
      stockId: data.stockId,
      rank: data.rank,
      symbol: data.symbol,
      exchange: data.exchange,
      title: data.title,
      jittaScore: data.jittaScore,
      nativeName: data.nativeName,
      sector: sector,
      industry: data.industry,
      market: data.market,
      updatedAt: data.updatedAt,
    );
  }
} 