import 'package:equatable/equatable.dart';
import 'package:jitta_ranking_app/domain/entities/sector.dart';
import 'package:jitta_ranking_app/domain/entities/stock.dart';

enum StockListStatus { initial, loading, success, failure }

class StockListState extends Equatable {
  final StockListStatus status;
  final List<Stock> stocks;
  final List<Sector> sectors;
  final String selectedMarket;
  final List<String> selectedSectors;
  final String? errorMessage;
  final bool isOffline;

  const StockListState({
    this.status = StockListStatus.initial,
    this.stocks = const [],
    this.sectors = const [],
    this.selectedMarket = 'TH',
    this.selectedSectors = const [],
    this.errorMessage,
    this.isOffline = false,
  });

  StockListState copyWith({
    StockListStatus? status,
    List<Stock>? stocks,
    List<Sector>? sectors,
    String? selectedMarket,
    List<String>? selectedSectors,
    String? errorMessage,
    bool? isOffline,
  }) {
    return StockListState(
      status: status ?? this.status,
      stocks: stocks ?? this.stocks,
      sectors: sectors ?? this.sectors,
      selectedMarket: selectedMarket ?? this.selectedMarket,
      selectedSectors: selectedSectors ?? this.selectedSectors,
      errorMessage: errorMessage,
      isOffline: isOffline ?? this.isOffline,
    );
  }

  @override
  List<Object?> get props => [
        status,
        stocks,
        sectors,
        selectedMarket,
        selectedSectors,
        errorMessage,
        isOffline,
      ];
} 