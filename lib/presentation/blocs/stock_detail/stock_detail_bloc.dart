import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jitta_ranking_app/domain/usecases/get_stock_by_id.dart';
import 'stock_detail_event.dart';
import 'stock_detail_state.dart';

class StockDetailBloc extends Bloc<StockDetailEvent, StockDetailState> {
  final GetStockById _getStockById;

  StockDetailBloc({
    required GetStockById getStockById,
  })  : _getStockById = getStockById,
        super(const StockDetailState()) {
    on<StockDetailLoadStarted>(_onLoadStarted);
    on<StockDetailRefreshRequested>(_onRefreshRequested);
    on<StockDetailRetryRequested>(_onRetryRequested);
  }

  Future<void> _onLoadStarted(
    StockDetailLoadStarted event,
    Emitter<StockDetailState> emit,
  ) async {
    emit(state.copyWith(status: StockDetailStatus.loading));
    await _fetchStock(event.stockId, emit);
  }

  Future<void> _onRefreshRequested(
    StockDetailRefreshRequested event,
    Emitter<StockDetailState> emit,
  ) async {
    emit(state.copyWith(status: StockDetailStatus.loading));
    await _fetchStock(event.stockId, emit);
  }

  Future<void> _onRetryRequested(
    StockDetailRetryRequested event,
    Emitter<StockDetailState> emit,
  ) async {
    emit(state.copyWith(status: StockDetailStatus.loading));
    await _fetchStock(event.stockId, emit);
  }

  Future<void> _fetchStock(String stockId, Emitter<StockDetailState> emit) async {
    final result = await _getStockById(stockId);

    emit(
      result.fold(
        (failure) => state.copyWith(
          status: StockDetailStatus.failure,
          errorMessage: failure.message,
        ),
        (stock) => state.copyWith(
          status: StockDetailStatus.success,
          stock: stock,
          errorMessage: null,
        ),
      ),
    );
  }
} 