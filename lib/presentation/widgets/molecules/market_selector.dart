import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../atoms/app_text.dart';

class MarketSelector extends StatelessWidget {
  final String selectedMarket;
  final List<String> availableMarkets;
  final ValueChanged<String> onMarketSelected;

  const MarketSelector({
    super.key,
    required this.selectedMarket,
    required this.availableMarkets,
    required this.onMarketSelected,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      initialValue: selectedMarket,
      onSelected: onMarketSelected,
      offset: const Offset(0, 40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      itemBuilder: (context) => availableMarkets
          .map(
            (market) => PopupMenuItem<String>(
              value: market,
              child: Row(
                children: [
                  if (market == selectedMarket)
                    const Icon(
                      Icons.check,
                      color: AppColors.primary,
                      size: 18,
                    ),
                  if (market == selectedMarket) const SizedBox(width: 8),
                  AppText(
                    market,
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: market == selectedMarket
                          ? AppColors.primary
                          : AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.border),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppText(
              selectedMarket,
              style: AppTextStyles.labelMedium,
            ),
            const SizedBox(width: 8),
            const Icon(
              Icons.arrow_drop_down,
              color: AppColors.textSecondary,
            ),
          ],
        ),
      ),
    );
  }
} 