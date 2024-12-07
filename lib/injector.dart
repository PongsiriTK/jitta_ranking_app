import 'package:get_it/get_it.dart';
import 'package:jitta_ranking_app/core/network/network.dart';


class Injector {
  static final di = GetIt.instance;

  static void setup() {
    if (!di.isRegistered<DatabaseService>()) {
      di.registerLazySingleton<DatabaseService>(() => DatabaseService());
    }
  }
}
