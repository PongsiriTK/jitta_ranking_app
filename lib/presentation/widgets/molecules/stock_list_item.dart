import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../atoms/app_text.dart';
import 'jitta_score_display.dart';
import 'stock_price_display.dart';

class StockListItem extends StatelessWidget {
  final String symbol;
  final String companyName;
  final double price;
  final double priceChange;
  final String currency;
  final double jittaScore;
  final VoidCallback onTap;

  const StockListItem({
    super.key,
    required this.symbol,
    required this.companyName,
    required this.price,
    required this.priceChange,
    required this.currency,
    required this.jittaScore,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColors.border,
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.h3(symbol),
                  const SizedBox(height: 4),
                  AppText(
                    companyName,
                    style: AppTextStyles.bodySmall.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                StockPriceDisplay(
                  price: price,
                  priceChange: priceChange,
                  currency: currency,
                ),
                const SizedBox(height: 4),
                JittaScoreDisplay(
                  score: jittaScore,
                  showLabel: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
} 