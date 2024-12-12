import 'package:flutter/material.dart';
import 'package:jitta_ranking_app/domain/entities/stock.dart';
import '../molecules/stock_header.dart';
import '../molecules/stock_info_grid.dart';

class StockDetailContent extends StatelessWidget {
  final Stock stock;

  const StockDetailContent({
    super.key,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StockHeader(
            symbol: stock.symbol,
            title: stock.title,
            jittaScore: stock.jittaScore,
            exchange: stock.exchange,
          ),
          const SizedBox(height: 24),
          StockInfoGrid(
            sector: stock.sector.name,
            industry: stock.industry,
            market: stock.market,
            rank: stock.rank,
          ),
          // TODO: Add price chart and other sections
        ],
      ),
    );
  }
} 