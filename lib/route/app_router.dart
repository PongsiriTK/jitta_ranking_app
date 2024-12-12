import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jitta_ranking_app/presentation/screens/home/home_screen.dart';
import 'package:jitta_ranking_app/presentation/screens/stock_detail/stock_detail_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/stock/:id',
      name: 'stock_detail',
      builder: (context, state) {
        final stockId = state.pathParameters['id'];
        if (stockId == null) {
          return const Scaffold(
            body: Center(
              child: Text('Stock ID is required'),
            ),
          );
        }
        return StockDetailScreen(stockId: stockId);
      },
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text(
        'Page not found: ${state.error}',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    ),
  ),
); 