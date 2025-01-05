import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jitta_ranking_app/data/datasources/remote_data_source.dart';
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
              loss_chance {
                last
                updatedAt
              }
              price {
                latest {
                  close
                  datetime
                }
              }
              comparison {
                market {
                  rank
                  member
                }
              }
              company {
                ipo_date
                link {
                  url
                }
              }
              jitta {
                priceDiff {
                  last {
                    id
                    value
                    type
                    percent
                  }
                  values(filterBy: { limit: 132, sort: DESC }) {
                    id
                    value
                    type
                    percent
                  }
                }
                monthlyPrice {
                  last {
                    id
                    value
                    year
                    month
                  }
                  total
                  values(filterBy: { limit: 132, sort: DESC }) {
                    id
                    value
                    year
                    month
                  }
                }
                score {
                  last {
                    value
                    id
                  }
                  values(filterBy: { limit: 132, sort: DESC }) {
                    id
                    value
                    quarter
                    year
                  }
                }
                line {
                  total
                  values(filterBy: { limit: 132, sort: DESC }) {
                    id
                    value
                    year
                    month
                  }
                }
                factor {
                  last {
                    value {
                      growth {
                        value
                        name
                        level
                      }
                      recent {
                        value
                        name
                        level
                      }
                      financial {
                        value
                        name
                        level
                      }
                      return {
                        value
                        name
                        level
                      }
                      management {
                        value
                        name
                        level
                      }
                    }
                  }
                }
                sign {
                  last {
                    title
                    type
                    name
                    value
                    display {
                      ... on DisplayIPO {
                        title
                        value
                      }
                      ... on DisplayTable {
                        title
                        columnHead
                        columns {
                          name
                          data
                        }
                        footer
                      }
                    }
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

    final data = result.data!['stock'];
    return StockDetail(
      id: data['id'],
      stockId: data['stockId'],
      symbol: data['symbol'],
      title: data['title'],
      summary: data['summary'],
      sector: Sector(
        id: data['sector']['id'],
        name: data['sector']['name'],
      ),
      market: data['market'],
      industry: data['industry'],
      exchange: data['exchange'],
      currency: data['currency'],
      currencySign: data['currency_sign'],
      priceCurrency: data['price_currency'],
      status: data['status'],
      nativeName: data['nativeName'],
      isFollowing: data['isFollowing'],
      updatedFinancialComplete: data['updatedFinancialComplete'],
      latestPrice: StockPrice(
        close: data['price']['latest']['close'].toDouble(),
        datetime: DateTime.parse(data['price']['latest']['datetime']),
      ),
      lossChance: LossChance(
        last: data['loss_chance']['last'].toDouble(),
        updatedAt: DateTime.parse(data['loss_chance']['updatedAt']),
      ),
      marketComparison: MarketComparison(
        rank: data['comparison']['market']['rank'],
        member: data['comparison']['market']['member'],
      ),
      company: CompanyInfo(
        ipoDate: data['company']['ipo_date'] != null 
          ? DateTime.parse(data['company']['ipo_date']) 
          : null,
        url: data['company']['link']?['url'],
      ),
      jitta: JittaInfo(
        priceDiff: PriceDiff(
          last: PriceDiffItem(
            id: data['jitta']['priceDiff']['last']['id'],
            value: data['jitta']['priceDiff']['last']['value'].toDouble(),
            type: data['jitta']['priceDiff']['last']['type'],
            percent: data['jitta']['priceDiff']['last']['percent'].toDouble(),
          ),
          values: (data['jitta']['priceDiff']['values'] as List)
              .map((e) => PriceDiffItem(
                    id: e['id'],
                    value: e['value'].toDouble(),
                    type: e['type'],
                    percent: e['percent'].toDouble(),
                  ))
              .toList(),
        ),
        monthlyPrice: MonthlyPrice(
          last: MonthlyPriceItem(
            id: data['jitta']['monthlyPrice']['last']['id'],
            value: data['jitta']['monthlyPrice']['last']['value'].toDouble(),
            year: data['jitta']['monthlyPrice']['last']['year'],
            month: data['jitta']['monthlyPrice']['last']['month'],
          ),
          total: data['jitta']['monthlyPrice']['total'],
          values: (data['jitta']['monthlyPrice']['values'] as List)
              .map((e) => MonthlyPriceItem(
                    id: e['id'],
                    value: e['value'].toDouble(),
                    year: e['year'],
                    month: e['month'],
                  ))
              .toList(),
        ),
        score: JittaScore(
          last: ScoreItem(
            id: data['jitta']['score']['last']['id'],
            value: data['jitta']['score']['last']['value'].toDouble(),
          ),
          values: (data['jitta']['score']['values'] as List)
              .map((e) => ScoreItem(
                    id: e['id'],
                    value: e['value'].toDouble(),
                    quarter: e['quarter'],
                    year: e['year'],
                  ))
              .toList(),
        ),
        line: JittaLine(
          total: data['jitta']['line']['total'],
          values: (data['jitta']['line']['values'] as List)
              .map((e) => MonthlyPriceItem(
                    id: e['id'],
                    value: e['value'].toDouble(),
                    year: e['year'],
                    month: e['month'],
                  ))
              .toList(),
        ),
        factor: JittaFactor(
          value: FactorValue(
            growth: _mapFactorItem(data['jitta']['factor']['last']['value']['growth']),
            recent: _mapFactorItem(data['jitta']['factor']['last']['value']['recent']),
            financial: _mapFactorItem(data['jitta']['factor']['last']['value']['financial']),
            return_: _mapFactorItem(data['jitta']['factor']['last']['value']['return']),
            management: _mapFactorItem(data['jitta']['factor']['last']['value']['management']),
          ),
        ),
        sign: JittaSign(
          last: SignItem(
            title: data['jitta']['sign']['last']['title'],
            type: data['jitta']['sign']['last']['type'],
            name: data['jitta']['sign']['last']['name'],
            value: data['jitta']['sign']['last']['value'],
            display: _mapSignDisplay(data['jitta']['sign']['last']['display']),
          ),
        ),
      ),
    );
  }

  FactorItem _mapFactorItem(Map<String, dynamic> data) {
    return FactorItem(
      value: data['value'].toDouble(),
      name: data['name'],
      level: data['level'],
    );
  }

  SignDisplay _mapSignDisplay(Map<String, dynamic> data) {
    return SignDisplay(
      title: data['title'],
      value: data['value'],
      columnHead: data['columnHead'],
      columns: data['columns'] != null
          ? (data['columns'] as List)
              .map((e) => SignColumn(
                    name: e['name'],
                    data: e['data'],
                  ))
              .toList()
          : null,
      footer: data['footer'],
    );
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
