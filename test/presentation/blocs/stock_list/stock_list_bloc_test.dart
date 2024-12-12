import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:jitta_ranking_app/domain/core/failure.dart';
import 'package:jitta_ranking_app/domain/entities/sector.dart';
import 'package:jitta_ranking_app/domain/entities/stock.dart';
import 'package:jitta_ranking_app/domain/usecases/get_sectors.dart';
import 'package:jitta_ranking_app/domain/usecases/sync_stocks.dart';
import 'package:jitta_ranking_app/presentation/blocs/stock_list/stock_list_bloc.dart';
import 'package:jitta_ranking_app/presentation/blocs/stock_list/stock_list_event.dart';
import 'package:jitta_ranking_app/presentation/blocs/stock_list/stock_list_state.dart';
import 'package:mocktail/mocktail.dart';

class MockSyncStocks extends Mock implements SyncStocks {}

class MockGetSectors extends Mock implements GetSectors {}

void main() {
  late StockListBloc bloc;
  late MockSyncStocks mockSyncStocks;
  late MockGetSectors mockGetSectors;

  final testSectors = [
    Sector(
      id: '1',
      name: 'Technology',
      updatedAt: DateTime.now(),
    ),
    Sector(
      id: '2',
      name: 'Healthcare',
      updatedAt: DateTime.now(),
    ),
  ];

  final testStocks = [
    Stock(
      id: '1',
      stockId: 1,
      rank: 1,
      symbol: 'AAPL',
      exchange: 'NASDAQ',
      title: 'Apple Inc.',
      jittaScore: 8.5,
      sector: testSectors[0],
      market: 'US',
      updatedAt: DateTime.now(),
    ),
    Stock(
      id: '2',
      stockId: 2,
      rank: 2,
      symbol: 'MSFT',
      exchange: 'NASDAQ',
      title: 'Microsoft Corporation',
      jittaScore: 8.0,
      sector: testSectors[0],
      market: 'US',
      updatedAt: DateTime.now(),
    ),
  ];

  setUp(() {
    mockSyncStocks = MockSyncStocks();
    mockGetSectors = MockGetSectors();
    bloc = StockListBloc(
      syncStocks: mockSyncStocks,
      getSectors: mockGetSectors,
    );
  });

  tearDown(() {
    bloc.close();
  });

  test('initial state is correct', () {
    expect(bloc.state, const StockListState());
  });

  group('StockListLoadStarted', () {
    blocTest<StockListBloc, StockListState>(
      'emits success state when both sectors and stocks are loaded successfully',
      setUp: () {
        when(() => mockGetSectors()).thenAnswer((_) async => Right(testSectors));
        when(() => mockSyncStocks(
              market: any(named: 'market'),
              sectors: any(named: 'sectors'),
            )).thenAnswer((_) async => Right(testStocks));
      },
      build: () => bloc,
      act: (bloc) => bloc.add(const StockListLoadStarted()),
      expect: () => [
        const StockListState(status: StockListStatus.loading),
        StockListState(
          status: StockListStatus.loading,
          sectors: testSectors,
        ),
        StockListState(
          status: StockListStatus.success,
          sectors: testSectors,
          stocks: testStocks,
        ),
      ],
      verify: (_) {
        verify(() => mockGetSectors()).called(1);
        verify(() => mockSyncStocks(
              market: any(named: 'market'),
              sectors: any(named: 'sectors'),
            )).called(1);
      },
    );

    blocTest<StockListBloc, StockListState>(
      'emits failure state when sectors loading fails',
      setUp: () {
        when(() => mockGetSectors()).thenAnswer((_) async => Left(const ServerFailure('Server error')));
      },
      build: () => bloc,
      act: (bloc) => bloc.add(const StockListLoadStarted()),
      expect: () => [
        const StockListState(status: StockListStatus.loading),
        const StockListState(
          status: StockListStatus.failure,
          errorMessage: 'Server error',
        ),
      ],
      verify: (_) {
        verify(() => mockGetSectors()).called(1);
        verifyNever(() => mockSyncStocks(
              market: any(named: 'market'),
              sectors: any(named: 'sectors'),
            ));
      },
    );
  });

  group('StockListMarketChanged', () {
    blocTest<StockListBloc, StockListState>(
      'emits success state with new market and stocks',
      setUp: () {
        when(() => mockSyncStocks(
              market: any(named: 'market'),
              sectors: any(named: 'sectors'),
            )).thenAnswer((_) async => Right(testStocks));
      },
      build: () => bloc,
      act: (bloc) => bloc.add(const StockListMarketChanged('US')),
      expect: () => [
        const StockListState(
          status: StockListStatus.loading,
          selectedMarket: 'US',
        ),
        StockListState(
          status: StockListStatus.success,
          selectedMarket: 'US',
          stocks: testStocks,
        ),
      ],
      verify: (_) {
        verify(() => mockSyncStocks(
              market: 'US',
              sectors: any(named: 'sectors'),
            )).called(1);
      },
    );
  });

  group('StockListRefreshRequested', () {
    blocTest<StockListBloc, StockListState>(
      'emits success state with refreshed stocks',
      setUp: () {
        when(() => mockSyncStocks(
              market: any(named: 'market'),
              sectors: any(named: 'sectors'),
            )).thenAnswer((_) async => Right(testStocks));
      },
      build: () => bloc,
      act: (bloc) => bloc.add(const StockListRefreshRequested()),
      expect: () => [
        const StockListState(status: StockListStatus.loading),
        StockListState(
          status: StockListStatus.success,
          stocks: testStocks,
        ),
      ],
      verify: (_) {
        verify(() => mockSyncStocks(
              market: any(named: 'market'),
              sectors: any(named: 'sectors'),
            )).called(1);
      },
    );
  });
}
