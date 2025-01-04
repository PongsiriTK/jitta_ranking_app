import '../../core/utils/typedef.dart';

abstract class SettingsRepository {
  /// Get selected market
  ResultFuture<String> getSelectedMarket();

  /// Save selected market
  ResultVoid saveSelectedMarket(String market);

  /// Get selected sectors
  ResultFuture<List<String>> getSelectedSectors();

  /// Save selected sectors
  ResultVoid saveSelectedSectors(List<String> sectors);

  /// Get theme mode (light/dark)
  ResultFuture<bool> isDarkMode();

  /// Save theme mode
  ResultVoid saveThemeMode(bool isDark);

  /// Clear all settings
  ResultVoid clearSettings();
} 