import 'package:equatable/equatable.dart';

abstract class StockListEvent extends Equatable {
  const StockListEvent();

  @override
  List<Object?> get props => [];
}

class StockListLoadStarted extends StockListEvent {
  const StockListLoadStarted();
}

class StockListMarketChanged extends StockListEvent {
  final String market;

  const StockListMarketChanged(this.market);

  @override
  List<Object> get props => [market];
}

class StockListSectorsChanged extends StockListEvent {
  final List<String> sectors;

  const StockListSectorsChanged(this.sectors);

  @override
  List<Object> get props => [sectors];
}

class StockListRefreshRequested extends StockListEvent {
  const StockListRefreshRequested();
}

class StockListRetryRequested extends StockListEvent {
  const StockListRetryRequested();
} 