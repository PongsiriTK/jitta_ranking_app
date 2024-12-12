import 'package:equatable/equatable.dart';

abstract class StockDetailEvent extends Equatable {
  const StockDetailEvent();

  @override
  List<Object?> get props => [];
}

class StockDetailLoadStarted extends StockDetailEvent {
  final String stockId;

  const StockDetailLoadStarted(this.stockId);

  @override
  List<Object> get props => [stockId];
}

class StockDetailRefreshRequested extends StockDetailEvent {
  final String stockId;

  const StockDetailRefreshRequested(this.stockId);

  @override
  List<Object> get props => [stockId];
}

class StockDetailRetryRequested extends StockDetailEvent {
  final String stockId;

  const StockDetailRetryRequested(this.stockId);

  @override
  List<Object> get props => [stockId];
} 