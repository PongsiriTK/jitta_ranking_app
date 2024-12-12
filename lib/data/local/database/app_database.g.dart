// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $SectorTableTable extends SectorTable
    with TableInfo<$SectorTableTable, SectorTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SectorTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sector_table';
  @override
  VerificationContext validateIntegrity(Insertable<SectorTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SectorTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SectorTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $SectorTableTable createAlias(String alias) {
    return $SectorTableTable(attachedDatabase, alias);
  }
}

class SectorTableData extends DataClass implements Insertable<SectorTableData> {
  final String id;
  final String name;
  final DateTime updatedAt;
  const SectorTableData(
      {required this.id, required this.name, required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  SectorTableCompanion toCompanion(bool nullToAbsent) {
    return SectorTableCompanion(
      id: Value(id),
      name: Value(name),
      updatedAt: Value(updatedAt),
    );
  }

  factory SectorTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SectorTableData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  SectorTableData copyWith({String? id, String? name, DateTime? updatedAt}) =>
      SectorTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  SectorTableData copyWithCompanion(SectorTableCompanion data) {
    return SectorTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SectorTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SectorTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.updatedAt == this.updatedAt);
}

class SectorTableCompanion extends UpdateCompanion<SectorTableData> {
  final Value<String> id;
  final Value<String> name;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const SectorTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SectorTableCompanion.insert({
    required String id,
    required String name,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        updatedAt = Value(updatedAt);
  static Insertable<SectorTableData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SectorTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return SectorTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SectorTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $StockTableTable extends StockTable
    with TableInfo<$StockTableTable, StockTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StockTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _stockIdMeta =
      const VerificationMeta('stockId');
  @override
  late final GeneratedColumn<int> stockId = GeneratedColumn<int>(
      'stock_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _rankMeta = const VerificationMeta('rank');
  @override
  late final GeneratedColumn<int> rank = GeneratedColumn<int>(
      'rank', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
      'symbol', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _exchangeMeta =
      const VerificationMeta('exchange');
  @override
  late final GeneratedColumn<String> exchange = GeneratedColumn<String>(
      'exchange', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _jittaScoreMeta =
      const VerificationMeta('jittaScore');
  @override
  late final GeneratedColumn<double> jittaScore = GeneratedColumn<double>(
      'jitta_score', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _nativeNameMeta =
      const VerificationMeta('nativeName');
  @override
  late final GeneratedColumn<String> nativeName = GeneratedColumn<String>(
      'native_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sectorIdMeta =
      const VerificationMeta('sectorId');
  @override
  late final GeneratedColumn<String> sectorId = GeneratedColumn<String>(
      'sector_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES sector_table (id)'));
  static const VerificationMeta _industryMeta =
      const VerificationMeta('industry');
  @override
  late final GeneratedColumn<String> industry = GeneratedColumn<String>(
      'industry', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _marketMeta = const VerificationMeta('market');
  @override
  late final GeneratedColumn<String> market = GeneratedColumn<String>(
      'market', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        stockId,
        rank,
        symbol,
        exchange,
        title,
        jittaScore,
        nativeName,
        sectorId,
        industry,
        market,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stock_table';
  @override
  VerificationContext validateIntegrity(Insertable<StockTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('stock_id')) {
      context.handle(_stockIdMeta,
          stockId.isAcceptableOrUnknown(data['stock_id']!, _stockIdMeta));
    } else if (isInserting) {
      context.missing(_stockIdMeta);
    }
    if (data.containsKey('rank')) {
      context.handle(
          _rankMeta, rank.isAcceptableOrUnknown(data['rank']!, _rankMeta));
    } else if (isInserting) {
      context.missing(_rankMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('exchange')) {
      context.handle(_exchangeMeta,
          exchange.isAcceptableOrUnknown(data['exchange']!, _exchangeMeta));
    } else if (isInserting) {
      context.missing(_exchangeMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('jitta_score')) {
      context.handle(
          _jittaScoreMeta,
          jittaScore.isAcceptableOrUnknown(
              data['jitta_score']!, _jittaScoreMeta));
    } else if (isInserting) {
      context.missing(_jittaScoreMeta);
    }
    if (data.containsKey('native_name')) {
      context.handle(
          _nativeNameMeta,
          nativeName.isAcceptableOrUnknown(
              data['native_name']!, _nativeNameMeta));
    }
    if (data.containsKey('sector_id')) {
      context.handle(_sectorIdMeta,
          sectorId.isAcceptableOrUnknown(data['sector_id']!, _sectorIdMeta));
    } else if (isInserting) {
      context.missing(_sectorIdMeta);
    }
    if (data.containsKey('industry')) {
      context.handle(_industryMeta,
          industry.isAcceptableOrUnknown(data['industry']!, _industryMeta));
    }
    if (data.containsKey('market')) {
      context.handle(_marketMeta,
          market.isAcceptableOrUnknown(data['market']!, _marketMeta));
    } else if (isInserting) {
      context.missing(_marketMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StockTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StockTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      stockId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}stock_id'])!,
      rank: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rank'])!,
      symbol: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}symbol'])!,
      exchange: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}exchange'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      jittaScore: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}jitta_score'])!,
      nativeName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}native_name']),
      sectorId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sector_id'])!,
      industry: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}industry']),
      market: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}market'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $StockTableTable createAlias(String alias) {
    return $StockTableTable(attachedDatabase, alias);
  }
}

class StockTableData extends DataClass implements Insertable<StockTableData> {
  final String id;
  final int stockId;
  final int rank;
  final String symbol;
  final String exchange;
  final String title;
  final double jittaScore;
  final String? nativeName;
  final String sectorId;
  final String? industry;
  final String market;
  final DateTime updatedAt;
  const StockTableData(
      {required this.id,
      required this.stockId,
      required this.rank,
      required this.symbol,
      required this.exchange,
      required this.title,
      required this.jittaScore,
      this.nativeName,
      required this.sectorId,
      this.industry,
      required this.market,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['stock_id'] = Variable<int>(stockId);
    map['rank'] = Variable<int>(rank);
    map['symbol'] = Variable<String>(symbol);
    map['exchange'] = Variable<String>(exchange);
    map['title'] = Variable<String>(title);
    map['jitta_score'] = Variable<double>(jittaScore);
    if (!nullToAbsent || nativeName != null) {
      map['native_name'] = Variable<String>(nativeName);
    }
    map['sector_id'] = Variable<String>(sectorId);
    if (!nullToAbsent || industry != null) {
      map['industry'] = Variable<String>(industry);
    }
    map['market'] = Variable<String>(market);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  StockTableCompanion toCompanion(bool nullToAbsent) {
    return StockTableCompanion(
      id: Value(id),
      stockId: Value(stockId),
      rank: Value(rank),
      symbol: Value(symbol),
      exchange: Value(exchange),
      title: Value(title),
      jittaScore: Value(jittaScore),
      nativeName: nativeName == null && nullToAbsent
          ? const Value.absent()
          : Value(nativeName),
      sectorId: Value(sectorId),
      industry: industry == null && nullToAbsent
          ? const Value.absent()
          : Value(industry),
      market: Value(market),
      updatedAt: Value(updatedAt),
    );
  }

  factory StockTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StockTableData(
      id: serializer.fromJson<String>(json['id']),
      stockId: serializer.fromJson<int>(json['stockId']),
      rank: serializer.fromJson<int>(json['rank']),
      symbol: serializer.fromJson<String>(json['symbol']),
      exchange: serializer.fromJson<String>(json['exchange']),
      title: serializer.fromJson<String>(json['title']),
      jittaScore: serializer.fromJson<double>(json['jittaScore']),
      nativeName: serializer.fromJson<String?>(json['nativeName']),
      sectorId: serializer.fromJson<String>(json['sectorId']),
      industry: serializer.fromJson<String?>(json['industry']),
      market: serializer.fromJson<String>(json['market']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'stockId': serializer.toJson<int>(stockId),
      'rank': serializer.toJson<int>(rank),
      'symbol': serializer.toJson<String>(symbol),
      'exchange': serializer.toJson<String>(exchange),
      'title': serializer.toJson<String>(title),
      'jittaScore': serializer.toJson<double>(jittaScore),
      'nativeName': serializer.toJson<String?>(nativeName),
      'sectorId': serializer.toJson<String>(sectorId),
      'industry': serializer.toJson<String?>(industry),
      'market': serializer.toJson<String>(market),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  StockTableData copyWith(
          {String? id,
          int? stockId,
          int? rank,
          String? symbol,
          String? exchange,
          String? title,
          double? jittaScore,
          Value<String?> nativeName = const Value.absent(),
          String? sectorId,
          Value<String?> industry = const Value.absent(),
          String? market,
          DateTime? updatedAt}) =>
      StockTableData(
        id: id ?? this.id,
        stockId: stockId ?? this.stockId,
        rank: rank ?? this.rank,
        symbol: symbol ?? this.symbol,
        exchange: exchange ?? this.exchange,
        title: title ?? this.title,
        jittaScore: jittaScore ?? this.jittaScore,
        nativeName: nativeName.present ? nativeName.value : this.nativeName,
        sectorId: sectorId ?? this.sectorId,
        industry: industry.present ? industry.value : this.industry,
        market: market ?? this.market,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  StockTableData copyWithCompanion(StockTableCompanion data) {
    return StockTableData(
      id: data.id.present ? data.id.value : this.id,
      stockId: data.stockId.present ? data.stockId.value : this.stockId,
      rank: data.rank.present ? data.rank.value : this.rank,
      symbol: data.symbol.present ? data.symbol.value : this.symbol,
      exchange: data.exchange.present ? data.exchange.value : this.exchange,
      title: data.title.present ? data.title.value : this.title,
      jittaScore:
          data.jittaScore.present ? data.jittaScore.value : this.jittaScore,
      nativeName:
          data.nativeName.present ? data.nativeName.value : this.nativeName,
      sectorId: data.sectorId.present ? data.sectorId.value : this.sectorId,
      industry: data.industry.present ? data.industry.value : this.industry,
      market: data.market.present ? data.market.value : this.market,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StockTableData(')
          ..write('id: $id, ')
          ..write('stockId: $stockId, ')
          ..write('rank: $rank, ')
          ..write('symbol: $symbol, ')
          ..write('exchange: $exchange, ')
          ..write('title: $title, ')
          ..write('jittaScore: $jittaScore, ')
          ..write('nativeName: $nativeName, ')
          ..write('sectorId: $sectorId, ')
          ..write('industry: $industry, ')
          ..write('market: $market, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, stockId, rank, symbol, exchange, title,
      jittaScore, nativeName, sectorId, industry, market, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StockTableData &&
          other.id == this.id &&
          other.stockId == this.stockId &&
          other.rank == this.rank &&
          other.symbol == this.symbol &&
          other.exchange == this.exchange &&
          other.title == this.title &&
          other.jittaScore == this.jittaScore &&
          other.nativeName == this.nativeName &&
          other.sectorId == this.sectorId &&
          other.industry == this.industry &&
          other.market == this.market &&
          other.updatedAt == this.updatedAt);
}

class StockTableCompanion extends UpdateCompanion<StockTableData> {
  final Value<String> id;
  final Value<int> stockId;
  final Value<int> rank;
  final Value<String> symbol;
  final Value<String> exchange;
  final Value<String> title;
  final Value<double> jittaScore;
  final Value<String?> nativeName;
  final Value<String> sectorId;
  final Value<String?> industry;
  final Value<String> market;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const StockTableCompanion({
    this.id = const Value.absent(),
    this.stockId = const Value.absent(),
    this.rank = const Value.absent(),
    this.symbol = const Value.absent(),
    this.exchange = const Value.absent(),
    this.title = const Value.absent(),
    this.jittaScore = const Value.absent(),
    this.nativeName = const Value.absent(),
    this.sectorId = const Value.absent(),
    this.industry = const Value.absent(),
    this.market = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  StockTableCompanion.insert({
    required String id,
    required int stockId,
    required int rank,
    required String symbol,
    required String exchange,
    required String title,
    required double jittaScore,
    this.nativeName = const Value.absent(),
    required String sectorId,
    this.industry = const Value.absent(),
    required String market,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        stockId = Value(stockId),
        rank = Value(rank),
        symbol = Value(symbol),
        exchange = Value(exchange),
        title = Value(title),
        jittaScore = Value(jittaScore),
        sectorId = Value(sectorId),
        market = Value(market),
        updatedAt = Value(updatedAt);
  static Insertable<StockTableData> custom({
    Expression<String>? id,
    Expression<int>? stockId,
    Expression<int>? rank,
    Expression<String>? symbol,
    Expression<String>? exchange,
    Expression<String>? title,
    Expression<double>? jittaScore,
    Expression<String>? nativeName,
    Expression<String>? sectorId,
    Expression<String>? industry,
    Expression<String>? market,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (stockId != null) 'stock_id': stockId,
      if (rank != null) 'rank': rank,
      if (symbol != null) 'symbol': symbol,
      if (exchange != null) 'exchange': exchange,
      if (title != null) 'title': title,
      if (jittaScore != null) 'jitta_score': jittaScore,
      if (nativeName != null) 'native_name': nativeName,
      if (sectorId != null) 'sector_id': sectorId,
      if (industry != null) 'industry': industry,
      if (market != null) 'market': market,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  StockTableCompanion copyWith(
      {Value<String>? id,
      Value<int>? stockId,
      Value<int>? rank,
      Value<String>? symbol,
      Value<String>? exchange,
      Value<String>? title,
      Value<double>? jittaScore,
      Value<String?>? nativeName,
      Value<String>? sectorId,
      Value<String?>? industry,
      Value<String>? market,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return StockTableCompanion(
      id: id ?? this.id,
      stockId: stockId ?? this.stockId,
      rank: rank ?? this.rank,
      symbol: symbol ?? this.symbol,
      exchange: exchange ?? this.exchange,
      title: title ?? this.title,
      jittaScore: jittaScore ?? this.jittaScore,
      nativeName: nativeName ?? this.nativeName,
      sectorId: sectorId ?? this.sectorId,
      industry: industry ?? this.industry,
      market: market ?? this.market,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (stockId.present) {
      map['stock_id'] = Variable<int>(stockId.value);
    }
    if (rank.present) {
      map['rank'] = Variable<int>(rank.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (exchange.present) {
      map['exchange'] = Variable<String>(exchange.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (jittaScore.present) {
      map['jitta_score'] = Variable<double>(jittaScore.value);
    }
    if (nativeName.present) {
      map['native_name'] = Variable<String>(nativeName.value);
    }
    if (sectorId.present) {
      map['sector_id'] = Variable<String>(sectorId.value);
    }
    if (industry.present) {
      map['industry'] = Variable<String>(industry.value);
    }
    if (market.present) {
      map['market'] = Variable<String>(market.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StockTableCompanion(')
          ..write('id: $id, ')
          ..write('stockId: $stockId, ')
          ..write('rank: $rank, ')
          ..write('symbol: $symbol, ')
          ..write('exchange: $exchange, ')
          ..write('title: $title, ')
          ..write('jittaScore: $jittaScore, ')
          ..write('nativeName: $nativeName, ')
          ..write('sectorId: $sectorId, ')
          ..write('industry: $industry, ')
          ..write('market: $market, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SectorTableTable sectorTable = $SectorTableTable(this);
  late final $StockTableTable stockTable = $StockTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [sectorTable, stockTable];
}

typedef $$SectorTableTableCreateCompanionBuilder = SectorTableCompanion
    Function({
  required String id,
  required String name,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$SectorTableTableUpdateCompanionBuilder = SectorTableCompanion
    Function({
  Value<String> id,
  Value<String> name,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

final class $$SectorTableTableReferences
    extends BaseReferences<_$AppDatabase, $SectorTableTable, SectorTableData> {
  $$SectorTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$StockTableTable, List<StockTableData>>
      _stockTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.stockTable,
          aliasName:
              $_aliasNameGenerator(db.sectorTable.id, db.stockTable.sectorId));

  $$StockTableTableProcessedTableManager get stockTableRefs {
    final manager = $$StockTableTableTableManager($_db, $_db.stockTable)
        .filter((f) => f.sectorId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_stockTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$SectorTableTableFilterComposer
    extends Composer<_$AppDatabase, $SectorTableTable> {
  $$SectorTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  Expression<bool> stockTableRefs(
      Expression<bool> Function($$StockTableTableFilterComposer f) f) {
    final $$StockTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stockTable,
        getReferencedColumn: (t) => t.sectorId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StockTableTableFilterComposer(
              $db: $db,
              $table: $db.stockTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SectorTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SectorTableTable> {
  $$SectorTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$SectorTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SectorTableTable> {
  $$SectorTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  Expression<T> stockTableRefs<T extends Object>(
      Expression<T> Function($$StockTableTableAnnotationComposer a) f) {
    final $$StockTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stockTable,
        getReferencedColumn: (t) => t.sectorId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StockTableTableAnnotationComposer(
              $db: $db,
              $table: $db.stockTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SectorTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SectorTableTable,
    SectorTableData,
    $$SectorTableTableFilterComposer,
    $$SectorTableTableOrderingComposer,
    $$SectorTableTableAnnotationComposer,
    $$SectorTableTableCreateCompanionBuilder,
    $$SectorTableTableUpdateCompanionBuilder,
    (SectorTableData, $$SectorTableTableReferences),
    SectorTableData,
    PrefetchHooks Function({bool stockTableRefs})> {
  $$SectorTableTableTableManager(_$AppDatabase db, $SectorTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SectorTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SectorTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SectorTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SectorTableCompanion(
            id: id,
            name: name,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            required DateTime updatedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              SectorTableCompanion.insert(
            id: id,
            name: name,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SectorTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({stockTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (stockTableRefs) db.stockTable],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (stockTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$SectorTableTableReferences
                            ._stockTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SectorTableTableReferences(db, table, p0)
                                .stockTableRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.sectorId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$SectorTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SectorTableTable,
    SectorTableData,
    $$SectorTableTableFilterComposer,
    $$SectorTableTableOrderingComposer,
    $$SectorTableTableAnnotationComposer,
    $$SectorTableTableCreateCompanionBuilder,
    $$SectorTableTableUpdateCompanionBuilder,
    (SectorTableData, $$SectorTableTableReferences),
    SectorTableData,
    PrefetchHooks Function({bool stockTableRefs})>;
typedef $$StockTableTableCreateCompanionBuilder = StockTableCompanion Function({
  required String id,
  required int stockId,
  required int rank,
  required String symbol,
  required String exchange,
  required String title,
  required double jittaScore,
  Value<String?> nativeName,
  required String sectorId,
  Value<String?> industry,
  required String market,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$StockTableTableUpdateCompanionBuilder = StockTableCompanion Function({
  Value<String> id,
  Value<int> stockId,
  Value<int> rank,
  Value<String> symbol,
  Value<String> exchange,
  Value<String> title,
  Value<double> jittaScore,
  Value<String?> nativeName,
  Value<String> sectorId,
  Value<String?> industry,
  Value<String> market,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

final class $$StockTableTableReferences
    extends BaseReferences<_$AppDatabase, $StockTableTable, StockTableData> {
  $$StockTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $SectorTableTable _sectorIdTable(_$AppDatabase db) =>
      db.sectorTable.createAlias(
          $_aliasNameGenerator(db.stockTable.sectorId, db.sectorTable.id));

  $$SectorTableTableProcessedTableManager get sectorId {
    final manager = $$SectorTableTableTableManager($_db, $_db.sectorTable)
        .filter((f) => f.id($_item.sectorId!));
    final item = $_typedResult.readTableOrNull(_sectorIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$StockTableTableFilterComposer
    extends Composer<_$AppDatabase, $StockTableTable> {
  $$StockTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get stockId => $composableBuilder(
      column: $table.stockId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get rank => $composableBuilder(
      column: $table.rank, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get symbol => $composableBuilder(
      column: $table.symbol, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get exchange => $composableBuilder(
      column: $table.exchange, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get jittaScore => $composableBuilder(
      column: $table.jittaScore, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nativeName => $composableBuilder(
      column: $table.nativeName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get industry => $composableBuilder(
      column: $table.industry, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get market => $composableBuilder(
      column: $table.market, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  $$SectorTableTableFilterComposer get sectorId {
    final $$SectorTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sectorId,
        referencedTable: $db.sectorTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SectorTableTableFilterComposer(
              $db: $db,
              $table: $db.sectorTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$StockTableTableOrderingComposer
    extends Composer<_$AppDatabase, $StockTableTable> {
  $$StockTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get stockId => $composableBuilder(
      column: $table.stockId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get rank => $composableBuilder(
      column: $table.rank, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get symbol => $composableBuilder(
      column: $table.symbol, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get exchange => $composableBuilder(
      column: $table.exchange, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get jittaScore => $composableBuilder(
      column: $table.jittaScore, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nativeName => $composableBuilder(
      column: $table.nativeName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get industry => $composableBuilder(
      column: $table.industry, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get market => $composableBuilder(
      column: $table.market, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  $$SectorTableTableOrderingComposer get sectorId {
    final $$SectorTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sectorId,
        referencedTable: $db.sectorTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SectorTableTableOrderingComposer(
              $db: $db,
              $table: $db.sectorTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$StockTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $StockTableTable> {
  $$StockTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get stockId =>
      $composableBuilder(column: $table.stockId, builder: (column) => column);

  GeneratedColumn<int> get rank =>
      $composableBuilder(column: $table.rank, builder: (column) => column);

  GeneratedColumn<String> get symbol =>
      $composableBuilder(column: $table.symbol, builder: (column) => column);

  GeneratedColumn<String> get exchange =>
      $composableBuilder(column: $table.exchange, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<double> get jittaScore => $composableBuilder(
      column: $table.jittaScore, builder: (column) => column);

  GeneratedColumn<String> get nativeName => $composableBuilder(
      column: $table.nativeName, builder: (column) => column);

  GeneratedColumn<String> get industry =>
      $composableBuilder(column: $table.industry, builder: (column) => column);

  GeneratedColumn<String> get market =>
      $composableBuilder(column: $table.market, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$SectorTableTableAnnotationComposer get sectorId {
    final $$SectorTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sectorId,
        referencedTable: $db.sectorTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SectorTableTableAnnotationComposer(
              $db: $db,
              $table: $db.sectorTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$StockTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $StockTableTable,
    StockTableData,
    $$StockTableTableFilterComposer,
    $$StockTableTableOrderingComposer,
    $$StockTableTableAnnotationComposer,
    $$StockTableTableCreateCompanionBuilder,
    $$StockTableTableUpdateCompanionBuilder,
    (StockTableData, $$StockTableTableReferences),
    StockTableData,
    PrefetchHooks Function({bool sectorId})> {
  $$StockTableTableTableManager(_$AppDatabase db, $StockTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StockTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StockTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StockTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<int> stockId = const Value.absent(),
            Value<int> rank = const Value.absent(),
            Value<String> symbol = const Value.absent(),
            Value<String> exchange = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<double> jittaScore = const Value.absent(),
            Value<String?> nativeName = const Value.absent(),
            Value<String> sectorId = const Value.absent(),
            Value<String?> industry = const Value.absent(),
            Value<String> market = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              StockTableCompanion(
            id: id,
            stockId: stockId,
            rank: rank,
            symbol: symbol,
            exchange: exchange,
            title: title,
            jittaScore: jittaScore,
            nativeName: nativeName,
            sectorId: sectorId,
            industry: industry,
            market: market,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required int stockId,
            required int rank,
            required String symbol,
            required String exchange,
            required String title,
            required double jittaScore,
            Value<String?> nativeName = const Value.absent(),
            required String sectorId,
            Value<String?> industry = const Value.absent(),
            required String market,
            required DateTime updatedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              StockTableCompanion.insert(
            id: id,
            stockId: stockId,
            rank: rank,
            symbol: symbol,
            exchange: exchange,
            title: title,
            jittaScore: jittaScore,
            nativeName: nativeName,
            sectorId: sectorId,
            industry: industry,
            market: market,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$StockTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({sectorId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (sectorId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.sectorId,
                    referencedTable:
                        $$StockTableTableReferences._sectorIdTable(db),
                    referencedColumn:
                        $$StockTableTableReferences._sectorIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$StockTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $StockTableTable,
    StockTableData,
    $$StockTableTableFilterComposer,
    $$StockTableTableOrderingComposer,
    $$StockTableTableAnnotationComposer,
    $$StockTableTableCreateCompanionBuilder,
    $$StockTableTableUpdateCompanionBuilder,
    (StockTableData, $$StockTableTableReferences),
    StockTableData,
    PrefetchHooks Function({bool sectorId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SectorTableTableTableManager get sectorTable =>
      $$SectorTableTableTableManager(_db, _db.sectorTable);
  $$StockTableTableTableManager get stockTable =>
      $$StockTableTableTableManager(_db, _db.stockTable);
}
