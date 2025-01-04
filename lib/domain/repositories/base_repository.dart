import '../../core/utils/typedef.dart';

abstract class BaseRepository {
  /// Check if device is connected to internet
  ResultFuture<bool> isConnected();

  /// Clear all cached data
  ResultVoid clearCache();

  /// Get last cache update time
  ResultFuture<DateTime?> getLastCacheTime();
} 