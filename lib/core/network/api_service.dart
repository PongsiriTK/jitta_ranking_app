import 'package:graphql_flutter/graphql_flutter.dart';

class ApiService {
  static GraphQLClient? client;

  ApiService();

  Future<void> setup() async {
    client = GraphQLClient(
      link: HttpLink(
        'https://jitta-ranking-api.jitta.com/graphql',
      ),
      cache: GraphQLCache(
        
      ),
    );

    client!.defaultPolicies = DefaultPolicies(
      query: Policies(fetch: FetchPolicy.cacheAndNetwork),
    );
  }
}
