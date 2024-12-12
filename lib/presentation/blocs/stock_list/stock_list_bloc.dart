import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jitta_ranking_app/domain/usecases/get_sectors.dart';
import 'package:jitta_ranking_app/domain/usecases/sync_stocks.dart';
import 'stock_list_event.dart';
import 'stock_list_state.dart';

class StockListBloc extends Bloc<StockListEvent, StockListState> {
  final SyncStocks _syncStocks;
  final GetSectors _getSectors;

  StockListBloc({
    required SyncStocks syncStocks,
    required GetSectors getSectors,
  })  : _syncStocks = syncStocks,
        _getSectors = getSectors,
        super(const StockListState()) {
    on<StockListLoadStarted>(_onLoadStarted);
    on<StockListMarketChanged>(_onMarketChanged);
    on<StockListSectorsChanged>(_onSectorsChanged);
    on<StockListRefreshRequested>(_onRefreshRequested);
    on<StockListRetryRequested>(_onRetryRequested);
  }

  Future<void> _onLoadStarted(
    StockListLoadStarted event,
    Emitter<StockListState> emit,
  ) async {
    emit(state.copyWith(status: StockListStatus.loading));

    final sectorsResult = await _getSectors();
    await sectorsResult.fold(
      (failure) async {
        emit(state.copyWith(
          status: StockListStatus.failure,
          errorMessage: failure.message,
        ));
      },
      (sectors) async {
        emit(state.copyWith(sectors: sectors));
        await _fetchStocks(emit);
      },
    );
  }

  Future<void> _onMarketChanged(
    StockListMarketChanged event,
    Emitter<StockListState> emit,
  ) async {
    emit(state.copyWith(
      selectedMarket: event.market,
      status: StockListStatus.loading,
    ));
    await _fetchStocks(emit);
  }

  Future<void> _onSectorsChanged(
    StockListSectorsChanged event,
    Emitter<StockListState> emit,
  ) async {
    emit(state.copyWith(
      selectedSectors: event.sectors,
      status: StockListStatus.loading,
    ));
    await _fetchStocks(emit);
  }

  Future<void> _onRefreshRequested(
    StockListRefreshRequested event,
    Emitter<StockListState> emit,
  ) async {
    emit(state.copyWith(status: StockListStatus.loading));
    await _fetchStocks(emit);
  }

  Future<void> _onRetryRequested(
    StockListRetryRequested event,
    Emitter<StockListState> emit,
  ) async {
    emit(state.copyWith(status: StockListStatus.loading));
    await _fetchStocks(emit);
  }

  Future<void> _fetchStocks(Emitter<StockListState> emit) async {
    final result = await _syncStocks(
      market: state.selectedMarket,
      sectors: state.selectedSectors.isEmpty ? null : state.selectedSectors,
    );

    emit(
      result.fold(
        (failure) => state.copyWith(
          status: StockListStatus.failure,
          errorMessage: failure.message,
        ),
        (stocks) => state.copyWith(
          status: StockListStatus.success,
          stocks: stocks,
          errorMessage: null,
        ),
      ),
    );
  }
} 