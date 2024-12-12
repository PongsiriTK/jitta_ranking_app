import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:jitta_ranking_app/domain/core/failure.dart';
import 'package:jitta_ranking_app/domain/entities/sector.dart';
import 'package:jitta_ranking_app/domain/entities/stock.dart';
import 'package:jitta_ranking_app/domain/usecases/get_stock_by_id.dart';
import 'package:jitta_ranking_app/presentation/blocs/stock_detail/stock_detail_bloc.dart';
import 'package:jitta_ranking_app/presentation/blocs/stock_detail/stock_detail_event.dart';
import 'package:jitta_ranking_app/presentation/blocs/stock_detail/stock_detail_state.dart';
import 'package:mocktail/mocktail.dart';

class MockGetStockById extends Mock implements GetStockById {}

void main() {
  late StockDetailBloc bloc;
  late MockGetStockById mockGetStockById;

  final testSector = Sector(
    id: '1',
    name: 'Technology',
    updatedAt: DateTime.now(),
  );

  final testStock = Stock(
    id: '1',
    stockId: 1,
    rank: 1,
    symbol: 'AAPL',
    exchange: 'NASDAQ',
    title: 'Apple Inc.',
    jittaScore: 8.5,
    sector: testSector,
    market: 'US',
    updatedAt: DateTime.now(),
  );

  setUp(() {
    mockGetStockById = MockGetStockById();
    bloc = StockDetailBloc(getStockById: mockGetStockById);
  });

  tearDown(() {
    bloc.close();
  });

  test('initial state is correct', () {
    expect(bloc.state, const StockDetailState());
  });

  group('StockDetailLoadStarted', () {
    blocTest<StockDetailBloc, StockDetailState>(
      'emits success state when stock is loaded successfully',
      setUp: () {
        when(() => mockGetStockById(any())).thenAnswer((_) async => Right(testStock));
      },
      build: () => bloc,
      act: (bloc) => bloc.add(const StockDetailLoadStarted('1')),
      expect: () => [
        const StockDetailState(status: StockDetailStatus.loading),
        StockDetailState(
          status: StockDetailStatus.success,
          stock: testStock,
        ),
      ],
      verify: (_) {
        verify(() => mockGetStockById('1')).called(1);
      },
    );

    blocTest<StockDetailBloc, StockDetailState>(
      'emits failure state when stock loading fails',
      setUp: () {
        when(() => mockGetStockById(any())).thenAnswer((_) async => Left(const ServerFailure('Server error')));
      },
      build: () => bloc,
      act: (bloc) => bloc.add(const StockDetailLoadStarted('1')),
      expect: () => [
        const StockDetailState(status: StockDetailStatus.loading),
        const StockDetailState(
          status: StockDetailStatus.failure,
          errorMessage: 'Server error',
        ),
      ],
      verify: (_) {
        verify(() => mockGetStockById('1')).called(1);
      },
    );
  });

  group('StockDetailRefreshRequested', () {
    blocTest<StockDetailBloc, StockDetailState>(
      'emits success state with refreshed stock',
      setUp: () {
        when(() => mockGetStockById(any())).thenAnswer((_) async => Right(testStock));
      },
      build: () => bloc,
      act: (bloc) => bloc.add(const StockDetailRefreshRequested('1')),
      expect: () => [
        const StockDetailState(status: StockDetailStatus.loading),
        StockDetailState(
          status: StockDetailStatus.success,
          stock: testStock,
        ),
      ],
      verify: (_) {
        verify(() => mockGetStockById('1')).called(1);
      },
    );
  });

  group('StockDetailRetryRequested', () {
    blocTest<StockDetailBloc, StockDetailState>(
      'emits success state after retry',
      setUp: () {
        when(() => mockGetStockById(any())).thenAnswer((_) async => Right(testStock));
      },
      build: () => bloc,
      act: (bloc) => bloc.add(const StockDetailRetryRequested('1')),
      expect: () => [
        const StockDetailState(status: StockDetailStatus.loading),
        StockDetailState(
          status: StockDetailStatus.success,
          stock: testStock,
        ),
      ],
      verify: (_) {
        verify(() => mockGetStockById('1')).called(1);
      },
    );
  });
}
