import 'package:jitta_ranking_app/core/network/api_service.dart';

abstract class StockRemoteDatasource {
  
}

class StockRemoteDatasourceImpl implements StockRemoteDatasource {
  final ApiService apiService;

  StockRemoteDatasourceImpl(this.apiService);
}
