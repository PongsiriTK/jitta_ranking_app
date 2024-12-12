import 'package:flutter/material.dart';
import '../atoms/info_label.dart';

class StockInfoGrid extends StatelessWidget {
  final String sector;
  final String? industry;
  final String market;
  final int rank;

  const StockInfoGrid({
    super.key,
    required this.sector,
    this.industry,
    required this.market,
    required this.rank,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            InfoLabel(
              label: 'Sector',
              value: sector,
              icon: Icons.category,
            ),
            if (industry != null) ...[
              const SizedBox(height: 12),
              InfoLabel(
                label: 'Industry',
                value: industry!,
                icon: Icons.business,
              ),
            ],
            const SizedBox(height: 12),
            InfoLabel(
              label: 'Market',
              value: market,
              icon: Icons.public,
            ),
            const SizedBox(height: 12),
            InfoLabel(
              label: 'Rank',
              value: '#$rank',
              icon: Icons.trending_up,
            ),
          ],
        ),
      ),
    );
  }
} 