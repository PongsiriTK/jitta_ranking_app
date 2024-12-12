import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jitta_ranking_app/core/config/app_config.dart';
import 'package:jitta_ranking_app/data/local/database/app_database.dart';
import 'package:jitta_ranking_app/data/repositories/stock_repository_impl.dart';
import 'package:jitta_ranking_app/domain/repositories/stock_repository.dart';
import 'package:jitta_ranking_app/domain/usecases/get_stocks_by_ranking.dart';
import 'package:jitta_ranking_app/domain/usecases/get_stock_by_id.dart';
import 'package:jitta_ranking_app/domain/usecases/get_sectors.dart';
import 'package:jitta_ranking_app/domain/usecases/get_cached_stocks.dart';
import 'package:jitta_ranking_app/domain/usecases/cache_stocks.dart';
import 'package:jitta_ranking_app/domain/usecases/sync_stocks.dart';
import 'package:jitta_ranking_app/presentation/blocs/stock_list/stock_list_bloc.dart';
import 'package:jitta_ranking_app/presentation/blocs/stock_detail/stock_detail_bloc.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  // Database
  final database = AppDatabase();
  getIt.registerSingleton<AppDatabase>(database);

  // GraphQL Client
  final httpLink = HttpLink(AppConfig.graphqlApiUrl);
  
  final graphQLClient = GraphQLClient(
    link: httpLink,
    cache: GraphQLCache(),
  );
  
  getIt.registerSingleton<GraphQLClient>(graphQLClient);

  // Repositories
  getIt.registerLazySingleton<StockRepository>(
    () => StockRepositoryImpl(
      getIt<GraphQLClient>(),
      getIt<AppDatabase>(),
      cacheMaxAge: AppConfig.cacheMaxAge,
    ),
  );

  // Use Cases
  getIt.registerLazySingleton(() => GetStocksByRanking(getIt<StockRepository>()));
  getIt.registerLazySingleton(() => GetStockById(getIt<StockRepository>()));
  getIt.registerLazySingleton(() => GetSectors(getIt<StockRepository>()));
  getIt.registerLazySingleton(() => GetCachedStocks(getIt<StockRepository>()));
  getIt.registerLazySingleton(() => CacheStocks(getIt<StockRepository>()));
  getIt.registerLazySingleton(() => SyncStocks(getIt<StockRepository>()));

  // BLoCs
  getIt.registerFactory(
    () => StockListBloc(
      syncStocks: getIt<SyncStocks>(),
      getSectors: getIt<GetSectors>(),
    ),
  );
  
  getIt.registerFactory(
    () => StockDetailBloc(
      getStockById: getIt<GetStockById>(),
    ),
  );
}
