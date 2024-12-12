import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jitta_ranking_app/injector.dart';
import 'package:jitta_ranking_app/presentation/blocs/stock_detail/stock_detail_bloc.dart';
import 'package:jitta_ranking_app/presentation/blocs/stock_detail/stock_detail_event.dart';
import 'package:jitta_ranking_app/presentation/blocs/stock_detail/stock_detail_state.dart';
import 'package:jitta_ranking_app/presentation/widgets/organisms/stock_detail_content.dart';

class StockDetailScreen extends StatelessWidget {
  final String stockId;

  const StockDetailScreen({
    super.key,
    required this.stockId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<StockDetailBloc>()..add(StockDetailLoadStarted(stockId)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Stock Detail'),
          actions: [
            BlocBuilder<StockDetailBloc, StockDetailState>(
              builder: (context, state) {
                return IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: state.status == StockDetailStatus.loading
                      ? null
                      : () {
                          context
                              .read<StockDetailBloc>()
                              .add(StockDetailRefreshRequested(stockId));
                        },
                );
              },
            ),
          ],
        ),
        body: BlocBuilder<StockDetailBloc, StockDetailState>(
          builder: (context, state) {
            switch (state.status) {
              case StockDetailStatus.initial:
              case StockDetailStatus.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );

              case StockDetailStatus.failure:
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
                          context
                              .read<StockDetailBloc>()
                              .add(StockDetailRetryRequested(stockId));
                        },
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                );

              case StockDetailStatus.success:
                if (state.stock == null) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.info_outline,
                          size: 48,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Stock not found',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  );
                }

                return StockDetailContent(stock: state.stock!);
            }
          },
        ),
      ),
    );
  }
} 