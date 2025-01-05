import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../pages/stock_list/stock_list_page.dart';
import '../pages/stock_detail/stock_detail_page.dart';
import '../pages/settings/settings_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: StockListRoute.page,
          initial: true,
          path: '/',
        ),
        AutoRoute(
          page: StockDetailRoute.page,
          path: '/stock-detail',
        ),
        AutoRoute(
          page: SettingsRoute.page,
          path: '/settings',
        ),
      ];
} 