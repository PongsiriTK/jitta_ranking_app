import 'package:dartz/dartz.dart';
import '../../core/error/failures.dart';
import '../../core/utils/typedef.dart';
import '../../domain/repositories/settings_repository.dart';
import '../data_sources/local_data_source.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final LocalDataSource localDataSource;

  SettingsRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, String>> getSelectedMarket() async {
    try {
      final market = await localDataSource.getSelectedMarket();
      return Right(market);
    } catch (e) {
      return Left(CacheFailure(
        message: 'Failed to get selected market: ${e.toString()}',
      ));
    }
  }

  @override
  Future<Either<Failure, void>> saveSelectedMarket(String market) async {
    try {
      await localDataSource.saveSelectedMarket(market);
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure(
        message: 'Failed to save selected market: ${e.toString()}',
      ));
    }
  }

  @override
  Future<Either<Failure, List<String>>> getSelectedSectors() async {
    try {
      final sectors = await localDataSource.getSelectedSectors();
      return Right(sectors);
    } catch (e) {
      return Left(CacheFailure(
        message: 'Failed to get selected sectors: ${e.toString()}',
      ));
    }
  }

  @override
  Future<Either<Failure, void>> saveSelectedSectors(List<String> sectors) async {
    try {
      await localDataSource.saveSelectedSectors(sectors);
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure(
        message: 'Failed to save selected sectors: ${e.toString()}',
      ));
    }
  }

  @override
  Future<Either<Failure, bool>> isDarkMode() async {
    try {
      final isDark = await localDataSource.isDarkMode();
      return Right(isDark);
    } catch (e) {
      return Left(CacheFailure(
        message: 'Failed to get theme mode: ${e.toString()}',
      ));
    }
  }

  @override
  Future<Either<Failure, void>> saveThemeMode(bool isDark) async {
    try {
      await localDataSource.saveThemeMode(isDark);
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure(
        message: 'Failed to save theme mode: ${e.toString()}',
      ));
    }
  }

  @override
  Future<Either<Failure, void>> clearSettings() async {
    try {
      await localDataSource.clearSettings();
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure(
        message: 'Failed to clear settings: ${e.toString()}',
      ));
    }
  }
} 