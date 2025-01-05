import '../../domain/models/models.dart';

abstract class LocalDataSource {
  /// Cache stock list response
  Future<void> cacheStockList(StockListResponse response);

  /// Get cached stock list
  Future<StockListResponse> getCachedStockList();

  /// Cache stock detail
  Future<void> cacheStockDetail(StockDetail stockDetail);

  /// Get cached stock detail
  Future<StockDetail?> getCachedStockDetail(String stockId);

  /// Cache sectors
  Future<void> cacheSectors(List<Sector> sectors);

  /// Get cached sectors
  Future<List<Sector>> getCachedSectors();

  /// Clear all cached data
  Future<void> clearCache();

  /// Get last cache update time
  Future<DateTime?> getLastCacheTime();

  /// Check if cache is valid (not expired)
  Future<bool> isCacheValid();

  /// Save selected market
  Future<void> saveSelectedMarket(String market);

  /// Get selected market
  Future<String> getSelectedMarket();

  /// Save selected sectors
  Future<void> saveSelectedSectors(List<String> sectors);

  /// Get selected sectors
  Future<List<String>> getSelectedSectors();

  /// Save theme mode
  Future<void> saveThemeMode(bool isDark);

  /// Get theme mode
  Future<bool> isDarkMode();

  /// Clear all settings (market, sectors, theme)
  Future<void> clearSettings();
} 