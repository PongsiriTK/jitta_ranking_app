import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../../widgets/atoms/app_text.dart';
import '../../widgets/molecules/jitta_score_display.dart';
import '../../widgets/molecules/stock_price_display.dart';

@RoutePage()
class StockDetailPage extends StatelessWidget {
  final String stockId;

  const StockDetailPage({
    super.key,
    required this.stockId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(),
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return SliverAppBar(
      expandedHeight: 120,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: AppText.h3(
          'AAPL', // TODO: Get from bloc
          color: AppColors.textLight,
        ),
        background: Container(
          color: AppColors.primary,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                'Apple Inc.', // TODO: Get from bloc
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.textLight,
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
          icon:
              const Icon(Icons.favorite_border), // TODO: Toggle based on state
          onPressed: () {
            // TODO: Toggle following
          },
        ),
      ],
    );
  }

  Widget _buildContent() {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          _buildPriceSection(),
          _buildScoreSection(),
          _buildFactorsSection(),
          _buildChartSection(),
          _buildCompanySection(),
        ],
      ),
    );
  }

  Widget _buildPriceSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: AppColors.surface,
      child: const StockPriceDisplay(
        price: 180.75, // TODO: Get from bloc
        priceChange: 2.5, // TODO: Get from bloc
        currency: '\$',
      ),
    );
  }

  Widget _buildScoreSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: AppColors.surface,
      margin: const EdgeInsets.only(top: 8),
      child: const JittaScoreDisplay(
        score: 8.5, // TODO: Get from bloc
        previousScore: 8.2, // TODO: Get from bloc
      ),
    );
  }

  Widget _buildFactorsSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: AppColors.surface,
      margin: const EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.h3('Factors'),
          // TODO: Implement factors grid
        ],
      ),
    );
  }

  Widget _buildChartSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: AppColors.surface,
      margin: const EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.h3('Price History'),
          // TODO: Implement price chart
        ],
      ),
    );
  }

  Widget _buildCompanySection() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: AppColors.surface,
      margin: const EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.h3('Company Info'),
          // TODO: Implement company info
        ],
      ),
    );
  }
}
