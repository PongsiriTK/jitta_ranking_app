1. You may use the following values for `$market` in queries:

[
  'TH', 'US', 'SG', 'VN', 'HK', 'UK', 'JP', 'CN', 
  'TW', 'IN', 'AU', 'DE', 'CA', 'FR', 'KR', 'RU',
]

2. Sectors - Query

query sectors {
  listJittaSectorType {
    name
  }
}

3. Jitta Ranking (Stock List) - Query

query stockByRanking($market: String!, $sectors: [String], $page: Int, $limit: Int) {
  jittaRanking(filter: { market: $market, sectors: $sectors, page: $page, limit: $limit }) {
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

4. Stock - Query

query stockSummaryQuery($stockId: Int, $id: String) {
  stock(stockId: $stockId, id: $id) {
    __typename
    isFollowing
    id
    stockId
    alias
    symbol
    title
    summary
    sector {
      id
      name
    }
    company {
      ipo_date
    }
    market
    industry
    exchange
    currency
    currency_sign
    price_currency
    status
    last_complete_statement_key
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
    nativeName
    name
    comparison {
      market {
        rank
        member
      }
    }
    updatedFinancialComplete
    company {
      link {
        url
      }
    }
    jitta {
      priceDiff {
        last {
          id
          value
          ... on PriceDiffItem {
            type
            percent
          }
        }
        values(filterBy: { limit: 132, sort: DESC }) {
          id
          value
          ... on PriceDiffItem {
            type
            percent
          }
        }
      }
      monthlyPrice {
        last {
          id
          value
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
            __typename
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