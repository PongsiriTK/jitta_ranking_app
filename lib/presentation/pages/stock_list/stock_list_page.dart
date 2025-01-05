import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../../widgets/atoms/app_text.dart';
import '../../widgets/molecules/market_selector.dart';

class StockListPage extends StatelessWidget {
  const StockListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: AppText.h3('Jitta Ranking'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // TODO: Navigate to settings page
            },
          ),
        ],
      ),
      body: Column(
        children: [
          _buildHeader(),
          Expanded(
            child: _buildStockList(),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border(
          bottom: BorderSide(
            color: AppColors.border,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              MarketSelector(
                selectedMarket: 'US', // TODO: Get from bloc
                availableMarkets: const ['US', 'TH', 'SG', 'VN'], // TODO: Get from bloc
                onMarketSelected: (market) {
                  // TODO: Handle market selection
                },
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.filter_list),
                onPressed: () {
                  // TODO: Show sector filter
                },
              ),
              IconButton(
                icon: const Icon(Icons.sort),
                onPressed: () {
                  // TODO: Show sort options
                },
              ),
            ],
          ),
          const SizedBox(height: 8),
          // TODO: Add search bar
        ],
      ),
    );
  }

  Widget _buildStockList() {
    return const Center(
      child: AppText('TODO: Implement stock list'),
    );
  }
} 