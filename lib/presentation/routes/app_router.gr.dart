// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    StockDetailRoute.name: (routeData) {
      final args = routeData.argsAs<StockDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: StockDetailPage(
          key: args.key,
          stockId: args.stockId,
        ),
      );
    },
    StockListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StockListPage(),
      );
    },
  };
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StockDetailPage]
class StockDetailRoute extends PageRouteInfo<StockDetailRouteArgs> {
  StockDetailRoute({
    Key? key,
    required String stockId,
    List<PageRouteInfo>? children,
  }) : super(
          StockDetailRoute.name,
          args: StockDetailRouteArgs(
            key: key,
            stockId: stockId,
          ),
          initialChildren: children,
        );

  static const String name = 'StockDetailRoute';

  static const PageInfo<StockDetailRouteArgs> page =
      PageInfo<StockDetailRouteArgs>(name);
}

class StockDetailRouteArgs {
  const StockDetailRouteArgs({
    this.key,
    required this.stockId,
  });

  final Key? key;

  final String stockId;

  @override
  String toString() {
    return 'StockDetailRouteArgs{key: $key, stockId: $stockId}';
  }
}

/// generated route for
/// [StockListPage]
class StockListRoute extends PageRouteInfo<void> {
  const StockListRoute({List<PageRouteInfo>? children})
      : super(
          StockListRoute.name,
          initialChildren: children,
        );

  static const String name = 'StockListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
