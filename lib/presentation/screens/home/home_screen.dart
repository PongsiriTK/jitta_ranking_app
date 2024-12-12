import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jitta_ranking_app/presentation/blocs/stock_list/stock_list_bloc.dart';
import 'package:jitta_ranking_app/presentation/blocs/stock_list/stock_list_event.dart';
import 'package:jitta_ranking_app/presentation/blocs/stock_list/stock_list_state.dart';
import 'package:jitta_ranking_app/presentation/widgets/market_selector.dart';
import 'package:jitta_ranking_app/presentation/widgets/sector_selector.dart';
import 'package:jitta_ranking_app/presentation/widgets/stock_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jitta Ranking'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context.read<StockListBloc>().add(const StockListRefreshRequested());
            },
          ),
        ],
      ),
      body: BlocBuilder<StockListBloc, StockListState>(
        builder: (context, state) {
          if (state.status == StockListStatus.initial) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.status == StockListStatus.failure) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 48,
                    color: Colors.red,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    state.errorMessage ?? 'An error occurred',
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.read<StockListBloc>().add(const StockListRetryRequested());
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Filter Stocks',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: MarketSelector(
                            selectedMarket: state.selectedMarket,
                            onChanged: (market) {
                              if (market != null) {
                                context.read<StockListBloc>().add(StockListMarketChanged(market));
                              }
                            },
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: SectorSelector(
                            sectors: state.sectors,
                            selectedSectors: state.selectedSectors,
                            onChanged: (sectors) {
                              context.read<StockListBloc>().add(StockListSectorsChanged(sectors));
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (state.isOffline)
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  color: Theme.of(context).colorScheme.errorContainer,
                  child: Row(
                    children: [
                      Icon(
                        Icons.cloud_off,
                        size: 16,
                        color: Theme.of(context).colorScheme.onErrorContainer,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Offline Mode',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).colorScheme.onErrorContainer,
                            ),
                      ),
                    ],
                  ),
                ),
              Expanded(
                child: StockList(
                  stocks: state.stocks,
                  isLoading: state.status == StockListStatus.loading,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
} 