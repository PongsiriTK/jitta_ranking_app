import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jitta_ranking_app/data/data_sources/remote_data_source.dart';
import 'package:jitta_ranking_app/domain/models/models.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  final GraphQLClient client;

  RemoteDataSourceImpl({required this.client});

  @override
  Future<StockListResponse> getStockList({
    required String market,
    List<String>? sectors,
    int? page,
    int? limit,
  }) async {
    final result = await client.query(
      QueryOptions(
        document: gql('''
          query stockByRanking(\$market: String!, \$sectors: [String], \$page: Int, \$limit: Int) {
            jittaRanking(filter: { market: \$market, sectors: \$sectors, page: \$page, limit: \$limit }) {
              count
              data {
                id
                stockId
                rank
                symbol
                exchange
                title
                jittaScore
                nativeName
                sector {
                  id
                  name
                }
                industry
              }
            }
            listJittaSectorType {
              id
              name
            }
          }
        '''),
        variables: {
          'market': market,
          if (sectors != null) 'sectors': sectors,
          if (page != null) 'page': page,
          if (limit != null) 'limit': limit,
        },
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception?.graphqlErrors.first.message);
    }

    return StockListResponse.fromJson(result.data!);
  }

  @override
  Future<StockDetail> getStockDetail({required String id, int? stockId}) async {
    final result = await client.query(
      QueryOptions(
        document: gql('''
          query stockSummaryQuery(\$stockId: Int, \$id: String) {
            stock(stockId: \$stockId, id: \$id) {
              id
              stockId
              symbol
              title
              summary
              sector {
                id
                name
              }
              market
              industry
              exchange
              currency
              currency_sign
              price_currency
              status
              nativeName
              isFollowing
              updatedFinancialComplete
              price {
                latest {
                  close
                  datetime
                }
              }
              jitta {
                score {
                  last {
                    value
                    id
                  }
                }
              }
            }
          }
        '''),
        variables: {
          'id': id,
          if (stockId != null) 'stockId': stockId,
        },
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception?.graphqlErrors.first.message);
    }

    return StockDetail.fromJson(result.data!['stock']);
  }

  @override
  Future<List<Sector>> getSectors() async {
    final result = await client.query(
      QueryOptions(
        document: gql('''
          query sectors {
            listJittaSectorType {
              id
              name
            }
          }
        '''),
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception?.graphqlErrors.first.message);
    }

    final List<dynamic> sectors = result.data!['listJittaSectorType'];
    return sectors.map((e) => Sector.fromJson(e)).toList();
  }

  @override
  Future<void> toggleStockFollowing(String stockId) async {
    final result = await client.mutate(
      MutationOptions(
        document: gql('''
          mutation toggleFollowing(\$stockId: String!) {
            toggleFollowing(stockId: \$stockId)
          }
        '''),
        variables: {
          'stockId': stockId,
        },
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception?.graphqlErrors.first.message);
    }
  }
} 