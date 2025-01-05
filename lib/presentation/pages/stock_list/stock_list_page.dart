import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jitta_ranking_app/presentation/routes/app_router.dart';
import '../../styles/app_colors.dart';
import '../../widgets/atoms/app_text.dart';
import '../../widgets/molecules/market_selector.dart';
import '../../widgets/molecules/stock_list_item.dart';
import '../../widgets/templates/section_container.dart';

@RoutePage()
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
              context.router.push(const SettingsRoute());
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
    return SectionContainer(
      margin: EdgeInsets.zero,
      border: Border(
        bottom: BorderSide(
          color: AppColors.border,
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
    return ListView.builder(
      itemCount: 10, // TODO: Get from bloc
      itemBuilder: (context, index) {
        return StockListItem(
          symbol: 'AAPL',  // TODO: Get from bloc
          companyName: 'Apple Inc.',  // TODO: Get from bloc
          price: 180.75,  // TODO: Get from bloc
          priceChange: 2.5,  // TODO: Get from bloc
          currency: '\$',
          jittaScore: 8.5,  // TODO: Get from bloc
          onTap: () {
            context.router.push(StockDetailRoute(stockId: 'AAPL'));
          },
        );
      },
    );
  }
} 