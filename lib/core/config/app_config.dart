import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static String get graphqlApiUrl => dotenv.env['GRAPHQL_API_URL'] ?? 'https://api.jitta.com/graphql';

  static Duration get cacheMaxAge => Duration(
        minutes: int.parse(dotenv.env['CACHE_MAX_AGE_MINUTES'] ?? '15'),
      );

  static int get defaultPageSize => int.parse(dotenv.env['DEFAULT_PAGE_SIZE'] ?? '20');
  
  static int get maxPageSize => int.parse(dotenv.env['MAX_PAGE_SIZE'] ?? '50');

  static bool get enableOfflineMode => dotenv.env['ENABLE_OFFLINE_MODE']?.toLowerCase() == 'true';
  
  static bool get enableDarkMode => dotenv.env['ENABLE_DARK_MODE']?.toLowerCase() == 'true';

  // Add more configuration getters as needed
} 