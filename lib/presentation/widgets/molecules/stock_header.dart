import 'package:flutter/material.dart';
import '../atoms/score_badge.dart';

class StockHeader extends StatelessWidget {
  final String symbol;
  final String title;
  final double jittaScore;
  final String exchange;

  const StockHeader({
    super.key,
    required this.symbol,
    required this.title,
    required this.jittaScore,
    required this.exchange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    symbol,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    exchange,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                ],
              ),
            ),
            ScoreBadge(
              score: jittaScore,
              size: 60,
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
} 