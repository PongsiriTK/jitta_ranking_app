import 'package:equatable/equatable.dart';
import 'package:jitta_ranking_app/domain/entities/stock.dart';

enum StockDetailStatus { initial, loading, success, failure }

class StockDetailState extends Equatable {
  final StockDetailStatus status;
  final Stock? stock;
  final String? errorMessage;

  const StockDetailState({
    this.status = StockDetailStatus.initial,
    this.stock,
    this.errorMessage,
  });

  StockDetailState copyWith({
    StockDetailStatus? status,
    Stock? stock,
    String? errorMessage,
  }) {
    return StockDetailState(
      status: status ?? this.status,
      stock: stock ?? this.stock,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, stock, errorMessage];
} 