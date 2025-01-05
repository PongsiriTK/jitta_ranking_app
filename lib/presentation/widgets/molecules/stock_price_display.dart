import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../atoms/app_text.dart';

class StockPriceDisplay extends StatelessWidget {
  final double price;
  final double? priceChange;
  final String currency;
  final bool showChange;

  const StockPriceDisplay({
    super.key,
    required this.price,
    this.priceChange,
    required this.currency,
    this.showChange = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            AppText(
              currency,
              style: AppText.label('').style,
            ),
            const SizedBox(width: 4),
            AppText.number(price.toStringAsFixed(2)),
          ],
        ),
        if (showChange && priceChange != null) ...[
          const SizedBox(height: 4),
          _buildPriceChange(),
        ],
      ],
    );
  }

  Widget _buildPriceChange() {
    final isPositive = priceChange! > 0;
    final color = isPositive ? AppColors.chartPositive : AppColors.chartNegative;
    final sign = isPositive ? '+' : '';
    final changeText = '$sign${priceChange!.toStringAsFixed(2)}%';

    return Row(
      children: [
        Icon(
          isPositive ? Icons.arrow_upward : Icons.arrow_downward,
          color: color,
          size: 16,
        ),
        const SizedBox(width: 4),
        AppText(
          changeText,
          style: AppText.label('').style?.copyWith(color: color),
        ),
      ],
    );
  }
} 