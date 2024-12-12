import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jitta_ranking_app/domain/entities/stock.dart';
import 'package:jitta_ranking_app/presentation/blocs/stock_list/stock_list_bloc.dart';
import 'package:jitta_ranking_app/presentation/blocs/stock_list/stock_list_event.dart';
import 'stock_list_item.dart';

class StockList extends StatelessWidget {
  final List<Stock> stocks;
  final bool isLoading;

  const StockList({
    super.key,
    required this.stocks,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<StockListBloc>().add(const StockListRefreshRequested());
      },
      child: isLoading && stocks.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : stocks.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.search_off,
                        size: 48,
                        color: Colors.grey,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No stocks found',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                )
              : Stack(
                  children: [
                    ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: stocks.length,
                      itemBuilder: (context, index) {
                        final stock = stocks[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: StockListItem(
                            rank: stock.rank,
                            symbol: stock.symbol,
                            title: stock.title,
                            jittaScore: stock.jittaScore,
                            sector: stock.sector.name,
                            onTap: () {
                              context.pushNamed(
                                'stock_detail',
                                pathParameters: {'id': stock.id},
                              );
                            },
                          ),
                        );
                      },
                    ),
                    if (isLoading)
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: LinearProgressIndicator(
                          backgroundColor: Colors.transparent,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                  ],
                ),
    );
  }
} 