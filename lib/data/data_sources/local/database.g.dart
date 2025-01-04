// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $SectorsTable extends Sectors
    with TableInfo<$SectorsTable, SectorEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SectorsTable(this.attachedDatabase, [this._alias]);
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
  static const String $name = 'sectors';
  @override
  VerificationContext validateIntegrity(Insertable<SectorEntity> instance,
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
  SectorEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SectorEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $SectorsTable createAlias(String alias) {
    return $SectorsTable(attachedDatabase, alias);
  }
}

class SectorEntity extends DataClass implements Insertable<SectorEntity> {
  final String id;
  final String name;
  final DateTime updatedAt;
  const SectorEntity(
      {required this.id, required this.name, required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  SectorsCompanion toCompanion(bool nullToAbsent) {
    return SectorsCompanion(
      id: Value(id),
      name: Value(name),
      updatedAt: Value(updatedAt),
    );
  }

  factory SectorEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SectorEntity(
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

  SectorEntity copyWith({String? id, String? name, DateTime? updatedAt}) =>
      SectorEntity(
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  SectorEntity copyWithCompanion(SectorsCompanion data) {
    return SectorEntity(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SectorEntity(')
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
      (other is SectorEntity &&
          other.id == this.id &&
          other.name == this.name &&
          other.updatedAt == this.updatedAt);
}

class SectorsCompanion extends UpdateCompanion<SectorEntity> {
  final Value<String> id;
  final Value<String> name;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const SectorsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SectorsCompanion.insert({
    required String id,
    required String name,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        updatedAt = Value(updatedAt);
  static Insertable<SectorEntity> custom({
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

  SectorsCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return SectorsCompanion(
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
    return (StringBuffer('SectorsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $StocksTable extends Stocks with TableInfo<$StocksTable, StockEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StocksTable(this.attachedDatabase, [this._alias]);
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
      'native_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sectorIdMeta =
      const VerificationMeta('sectorId');
  @override
  late final GeneratedColumn<String> sectorId = GeneratedColumn<String>(
      'sector_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES sectors (id)'));
  static const VerificationMeta _industryMeta =
      const VerificationMeta('industry');
  @override
  late final GeneratedColumn<String> industry = GeneratedColumn<String>(
      'industry', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _marketMeta = const VerificationMeta('market');
  @override
  late final GeneratedColumn<String> market = GeneratedColumn<String>(
      'market', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isFollowingMeta =
      const VerificationMeta('isFollowing');
  @override
  late final GeneratedColumn<bool> isFollowing = GeneratedColumn<bool>(
      'is_following', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_following" IN (0, 1))'),
      defaultValue: const Constant(false));
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
        isFollowing,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stocks';
  @override
  VerificationContext validateIntegrity(Insertable<StockEntity> instance,
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
    } else if (isInserting) {
      context.missing(_nativeNameMeta);
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
    } else if (isInserting) {
      context.missing(_industryMeta);
    }
    if (data.containsKey('market')) {
      context.handle(_marketMeta,
          market.isAcceptableOrUnknown(data['market']!, _marketMeta));
    }
    if (data.containsKey('is_following')) {
      context.handle(
          _isFollowingMeta,
          isFollowing.isAcceptableOrUnknown(
              data['is_following']!, _isFollowingMeta));
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
  StockEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StockEntity(
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
          .read(DriftSqlType.string, data['${effectivePrefix}native_name'])!,
      sectorId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sector_id'])!,
      industry: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}industry'])!,
      market: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}market']),
      isFollowing: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_following'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $StocksTable createAlias(String alias) {
    return $StocksTable(attachedDatabase, alias);
  }
}

class StockEntity extends DataClass implements Insertable<StockEntity> {
  final String id;
  final int stockId;
  final int rank;
  final String symbol;
  final String exchange;
  final String title;
  final double jittaScore;
  final String nativeName;
  final String sectorId;
  final String industry;
  final String? market;
  final bool isFollowing;
  final DateTime updatedAt;
  const StockEntity(
      {required this.id,
      required this.stockId,
      required this.rank,
      required this.symbol,
      required this.exchange,
      required this.title,
      required this.jittaScore,
      required this.nativeName,
      required this.sectorId,
      required this.industry,
      this.market,
      required this.isFollowing,
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
    map['native_name'] = Variable<String>(nativeName);
    map['sector_id'] = Variable<String>(sectorId);
    map['industry'] = Variable<String>(industry);
    if (!nullToAbsent || market != null) {
      map['market'] = Variable<String>(market);
    }
    map['is_following'] = Variable<bool>(isFollowing);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  StocksCompanion toCompanion(bool nullToAbsent) {
    return StocksCompanion(
      id: Value(id),
      stockId: Value(stockId),
      rank: Value(rank),
      symbol: Value(symbol),
      exchange: Value(exchange),
      title: Value(title),
      jittaScore: Value(jittaScore),
      nativeName: Value(nativeName),
      sectorId: Value(sectorId),
      industry: Value(industry),
      market:
          market == null && nullToAbsent ? const Value.absent() : Value(market),
      isFollowing: Value(isFollowing),
      updatedAt: Value(updatedAt),
    );
  }

  factory StockEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StockEntity(
      id: serializer.fromJson<String>(json['id']),
      stockId: serializer.fromJson<int>(json['stockId']),
      rank: serializer.fromJson<int>(json['rank']),
      symbol: serializer.fromJson<String>(json['symbol']),
      exchange: serializer.fromJson<String>(json['exchange']),
      title: serializer.fromJson<String>(json['title']),
      jittaScore: serializer.fromJson<double>(json['jittaScore']),
      nativeName: serializer.fromJson<String>(json['nativeName']),
      sectorId: serializer.fromJson<String>(json['sectorId']),
      industry: serializer.fromJson<String>(json['industry']),
      market: serializer.fromJson<String?>(json['market']),
      isFollowing: serializer.fromJson<bool>(json['isFollowing']),
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
      'nativeName': serializer.toJson<String>(nativeName),
      'sectorId': serializer.toJson<String>(sectorId),
      'industry': serializer.toJson<String>(industry),
      'market': serializer.toJson<String?>(market),
      'isFollowing': serializer.toJson<bool>(isFollowing),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  StockEntity copyWith(
          {String? id,
          int? stockId,
          int? rank,
          String? symbol,
          String? exchange,
          String? title,
          double? jittaScore,
          String? nativeName,
          String? sectorId,
          String? industry,
          Value<String?> market = const Value.absent(),
          bool? isFollowing,
          DateTime? updatedAt}) =>
      StockEntity(
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
        market: market.present ? market.value : this.market,
        isFollowing: isFollowing ?? this.isFollowing,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  StockEntity copyWithCompanion(StocksCompanion data) {
    return StockEntity(
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
      isFollowing:
          data.isFollowing.present ? data.isFollowing.value : this.isFollowing,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StockEntity(')
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
          ..write('isFollowing: $isFollowing, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
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
      isFollowing,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StockEntity &&
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
          other.isFollowing == this.isFollowing &&
          other.updatedAt == this.updatedAt);
}

class StocksCompanion extends UpdateCompanion<StockEntity> {
  final Value<String> id;
  final Value<int> stockId;
  final Value<int> rank;
  final Value<String> symbol;
  final Value<String> exchange;
  final Value<String> title;
  final Value<double> jittaScore;
  final Value<String> nativeName;
  final Value<String> sectorId;
  final Value<String> industry;
  final Value<String?> market;
  final Value<bool> isFollowing;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const StocksCompanion({
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
    this.isFollowing = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  StocksCompanion.insert({
    required String id,
    required int stockId,
    required int rank,
    required String symbol,
    required String exchange,
    required String title,
    required double jittaScore,
    required String nativeName,
    required String sectorId,
    required String industry,
    this.market = const Value.absent(),
    this.isFollowing = const Value.absent(),
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        stockId = Value(stockId),
        rank = Value(rank),
        symbol = Value(symbol),
        exchange = Value(exchange),
        title = Value(title),
        jittaScore = Value(jittaScore),
        nativeName = Value(nativeName),
        sectorId = Value(sectorId),
        industry = Value(industry),
        updatedAt = Value(updatedAt);
  static Insertable<StockEntity> custom({
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
    Expression<bool>? isFollowing,
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
      if (isFollowing != null) 'is_following': isFollowing,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  StocksCompanion copyWith(
      {Value<String>? id,
      Value<int>? stockId,
      Value<int>? rank,
      Value<String>? symbol,
      Value<String>? exchange,
      Value<String>? title,
      Value<double>? jittaScore,
      Value<String>? nativeName,
      Value<String>? sectorId,
      Value<String>? industry,
      Value<String?>? market,
      Value<bool>? isFollowing,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return StocksCompanion(
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
      isFollowing: isFollowing ?? this.isFollowing,
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
    if (isFollowing.present) {
      map['is_following'] = Variable<bool>(isFollowing.value);
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
    return (StringBuffer('StocksCompanion(')
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
          ..write('isFollowing: $isFollowing, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $StockDetailsTable extends StockDetails
    with TableInfo<$StockDetailsTable, StockDetailEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StockDetailsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES stocks (id)'));
  static const VerificationMeta _summaryMeta =
      const VerificationMeta('summary');
  @override
  late final GeneratedColumn<String> summary = GeneratedColumn<String>(
      'summary', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _currencyMeta =
      const VerificationMeta('currency');
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
      'currency', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _currencySignMeta =
      const VerificationMeta('currencySign');
  @override
  late final GeneratedColumn<String> currencySign = GeneratedColumn<String>(
      'currency_sign', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _priceCurrencyMeta =
      const VerificationMeta('priceCurrency');
  @override
  late final GeneratedColumn<String> priceCurrency = GeneratedColumn<String>(
      'price_currency', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _latestPriceMeta =
      const VerificationMeta('latestPrice');
  @override
  late final GeneratedColumn<double> latestPrice = GeneratedColumn<double>(
      'latest_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _priceDateTimeMeta =
      const VerificationMeta('priceDateTime');
  @override
  late final GeneratedColumn<DateTime> priceDateTime =
      GeneratedColumn<DateTime>('price_date_time', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        summary,
        currency,
        currencySign,
        priceCurrency,
        status,
        latestPrice,
        priceDateTime,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stock_details';
  @override
  VerificationContext validateIntegrity(Insertable<StockDetailEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('summary')) {
      context.handle(_summaryMeta,
          summary.isAcceptableOrUnknown(data['summary']!, _summaryMeta));
    }
    if (data.containsKey('currency')) {
      context.handle(_currencyMeta,
          currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta));
    }
    if (data.containsKey('currency_sign')) {
      context.handle(
          _currencySignMeta,
          currencySign.isAcceptableOrUnknown(
              data['currency_sign']!, _currencySignMeta));
    }
    if (data.containsKey('price_currency')) {
      context.handle(
          _priceCurrencyMeta,
          priceCurrency.isAcceptableOrUnknown(
              data['price_currency']!, _priceCurrencyMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('latest_price')) {
      context.handle(
          _latestPriceMeta,
          latestPrice.isAcceptableOrUnknown(
              data['latest_price']!, _latestPriceMeta));
    } else if (isInserting) {
      context.missing(_latestPriceMeta);
    }
    if (data.containsKey('price_date_time')) {
      context.handle(
          _priceDateTimeMeta,
          priceDateTime.isAcceptableOrUnknown(
              data['price_date_time']!, _priceDateTimeMeta));
    } else if (isInserting) {
      context.missing(_priceDateTimeMeta);
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
  StockDetailEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StockDetailEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      summary: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}summary']),
      currency: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency']),
      currencySign: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency_sign']),
      priceCurrency: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}price_currency']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status']),
      latestPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}latest_price'])!,
      priceDateTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}price_date_time'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $StockDetailsTable createAlias(String alias) {
    return $StockDetailsTable(attachedDatabase, alias);
  }
}

class StockDetailEntity extends DataClass
    implements Insertable<StockDetailEntity> {
  final String id;
  final String? summary;
  final String? currency;
  final String? currencySign;
  final String? priceCurrency;
  final String? status;
  final double latestPrice;
  final DateTime priceDateTime;
  final DateTime updatedAt;
  const StockDetailEntity(
      {required this.id,
      this.summary,
      this.currency,
      this.currencySign,
      this.priceCurrency,
      this.status,
      required this.latestPrice,
      required this.priceDateTime,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || summary != null) {
      map['summary'] = Variable<String>(summary);
    }
    if (!nullToAbsent || currency != null) {
      map['currency'] = Variable<String>(currency);
    }
    if (!nullToAbsent || currencySign != null) {
      map['currency_sign'] = Variable<String>(currencySign);
    }
    if (!nullToAbsent || priceCurrency != null) {
      map['price_currency'] = Variable<String>(priceCurrency);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String>(status);
    }
    map['latest_price'] = Variable<double>(latestPrice);
    map['price_date_time'] = Variable<DateTime>(priceDateTime);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  StockDetailsCompanion toCompanion(bool nullToAbsent) {
    return StockDetailsCompanion(
      id: Value(id),
      summary: summary == null && nullToAbsent
          ? const Value.absent()
          : Value(summary),
      currency: currency == null && nullToAbsent
          ? const Value.absent()
          : Value(currency),
      currencySign: currencySign == null && nullToAbsent
          ? const Value.absent()
          : Value(currencySign),
      priceCurrency: priceCurrency == null && nullToAbsent
          ? const Value.absent()
          : Value(priceCurrency),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      latestPrice: Value(latestPrice),
      priceDateTime: Value(priceDateTime),
      updatedAt: Value(updatedAt),
    );
  }

  factory StockDetailEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StockDetailEntity(
      id: serializer.fromJson<String>(json['id']),
      summary: serializer.fromJson<String?>(json['summary']),
      currency: serializer.fromJson<String?>(json['currency']),
      currencySign: serializer.fromJson<String?>(json['currencySign']),
      priceCurrency: serializer.fromJson<String?>(json['priceCurrency']),
      status: serializer.fromJson<String?>(json['status']),
      latestPrice: serializer.fromJson<double>(json['latestPrice']),
      priceDateTime: serializer.fromJson<DateTime>(json['priceDateTime']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'summary': serializer.toJson<String?>(summary),
      'currency': serializer.toJson<String?>(currency),
      'currencySign': serializer.toJson<String?>(currencySign),
      'priceCurrency': serializer.toJson<String?>(priceCurrency),
      'status': serializer.toJson<String?>(status),
      'latestPrice': serializer.toJson<double>(latestPrice),
      'priceDateTime': serializer.toJson<DateTime>(priceDateTime),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  StockDetailEntity copyWith(
          {String? id,
          Value<String?> summary = const Value.absent(),
          Value<String?> currency = const Value.absent(),
          Value<String?> currencySign = const Value.absent(),
          Value<String?> priceCurrency = const Value.absent(),
          Value<String?> status = const Value.absent(),
          double? latestPrice,
          DateTime? priceDateTime,
          DateTime? updatedAt}) =>
      StockDetailEntity(
        id: id ?? this.id,
        summary: summary.present ? summary.value : this.summary,
        currency: currency.present ? currency.value : this.currency,
        currencySign:
            currencySign.present ? currencySign.value : this.currencySign,
        priceCurrency:
            priceCurrency.present ? priceCurrency.value : this.priceCurrency,
        status: status.present ? status.value : this.status,
        latestPrice: latestPrice ?? this.latestPrice,
        priceDateTime: priceDateTime ?? this.priceDateTime,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  StockDetailEntity copyWithCompanion(StockDetailsCompanion data) {
    return StockDetailEntity(
      id: data.id.present ? data.id.value : this.id,
      summary: data.summary.present ? data.summary.value : this.summary,
      currency: data.currency.present ? data.currency.value : this.currency,
      currencySign: data.currencySign.present
          ? data.currencySign.value
          : this.currencySign,
      priceCurrency: data.priceCurrency.present
          ? data.priceCurrency.value
          : this.priceCurrency,
      status: data.status.present ? data.status.value : this.status,
      latestPrice:
          data.latestPrice.present ? data.latestPrice.value : this.latestPrice,
      priceDateTime: data.priceDateTime.present
          ? data.priceDateTime.value
          : this.priceDateTime,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StockDetailEntity(')
          ..write('id: $id, ')
          ..write('summary: $summary, ')
          ..write('currency: $currency, ')
          ..write('currencySign: $currencySign, ')
          ..write('priceCurrency: $priceCurrency, ')
          ..write('status: $status, ')
          ..write('latestPrice: $latestPrice, ')
          ..write('priceDateTime: $priceDateTime, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, summary, currency, currencySign,
      priceCurrency, status, latestPrice, priceDateTime, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StockDetailEntity &&
          other.id == this.id &&
          other.summary == this.summary &&
          other.currency == this.currency &&
          other.currencySign == this.currencySign &&
          other.priceCurrency == this.priceCurrency &&
          other.status == this.status &&
          other.latestPrice == this.latestPrice &&
          other.priceDateTime == this.priceDateTime &&
          other.updatedAt == this.updatedAt);
}

class StockDetailsCompanion extends UpdateCompanion<StockDetailEntity> {
  final Value<String> id;
  final Value<String?> summary;
  final Value<String?> currency;
  final Value<String?> currencySign;
  final Value<String?> priceCurrency;
  final Value<String?> status;
  final Value<double> latestPrice;
  final Value<DateTime> priceDateTime;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const StockDetailsCompanion({
    this.id = const Value.absent(),
    this.summary = const Value.absent(),
    this.currency = const Value.absent(),
    this.currencySign = const Value.absent(),
    this.priceCurrency = const Value.absent(),
    this.status = const Value.absent(),
    this.latestPrice = const Value.absent(),
    this.priceDateTime = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  StockDetailsCompanion.insert({
    required String id,
    this.summary = const Value.absent(),
    this.currency = const Value.absent(),
    this.currencySign = const Value.absent(),
    this.priceCurrency = const Value.absent(),
    this.status = const Value.absent(),
    required double latestPrice,
    required DateTime priceDateTime,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        latestPrice = Value(latestPrice),
        priceDateTime = Value(priceDateTime),
        updatedAt = Value(updatedAt);
  static Insertable<StockDetailEntity> custom({
    Expression<String>? id,
    Expression<String>? summary,
    Expression<String>? currency,
    Expression<String>? currencySign,
    Expression<String>? priceCurrency,
    Expression<String>? status,
    Expression<double>? latestPrice,
    Expression<DateTime>? priceDateTime,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (summary != null) 'summary': summary,
      if (currency != null) 'currency': currency,
      if (currencySign != null) 'currency_sign': currencySign,
      if (priceCurrency != null) 'price_currency': priceCurrency,
      if (status != null) 'status': status,
      if (latestPrice != null) 'latest_price': latestPrice,
      if (priceDateTime != null) 'price_date_time': priceDateTime,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  StockDetailsCompanion copyWith(
      {Value<String>? id,
      Value<String?>? summary,
      Value<String?>? currency,
      Value<String?>? currencySign,
      Value<String?>? priceCurrency,
      Value<String?>? status,
      Value<double>? latestPrice,
      Value<DateTime>? priceDateTime,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return StockDetailsCompanion(
      id: id ?? this.id,
      summary: summary ?? this.summary,
      currency: currency ?? this.currency,
      currencySign: currencySign ?? this.currencySign,
      priceCurrency: priceCurrency ?? this.priceCurrency,
      status: status ?? this.status,
      latestPrice: latestPrice ?? this.latestPrice,
      priceDateTime: priceDateTime ?? this.priceDateTime,
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
    if (summary.present) {
      map['summary'] = Variable<String>(summary.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (currencySign.present) {
      map['currency_sign'] = Variable<String>(currencySign.value);
    }
    if (priceCurrency.present) {
      map['price_currency'] = Variable<String>(priceCurrency.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (latestPrice.present) {
      map['latest_price'] = Variable<double>(latestPrice.value);
    }
    if (priceDateTime.present) {
      map['price_date_time'] = Variable<DateTime>(priceDateTime.value);
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
    return (StringBuffer('StockDetailsCompanion(')
          ..write('id: $id, ')
          ..write('summary: $summary, ')
          ..write('currency: $currency, ')
          ..write('currencySign: $currencySign, ')
          ..write('priceCurrency: $priceCurrency, ')
          ..write('status: $status, ')
          ..write('latestPrice: $latestPrice, ')
          ..write('priceDateTime: $priceDateTime, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SettingsTable extends Settings
    with TableInfo<$SettingsTable, SettingEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [key, value, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'settings';
  @override
  VerificationContext validateIntegrity(Insertable<SettingEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
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
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SettingEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingEntity(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $SettingsTable createAlias(String alias) {
    return $SettingsTable(attachedDatabase, alias);
  }
}

class SettingEntity extends DataClass implements Insertable<SettingEntity> {
  final String key;
  final String value;
  final DateTime updatedAt;
  const SettingEntity(
      {required this.key, required this.value, required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  SettingsCompanion toCompanion(bool nullToAbsent) {
    return SettingsCompanion(
      key: Value(key),
      value: Value(value),
      updatedAt: Value(updatedAt),
    );
  }

  factory SettingEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingEntity(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  SettingEntity copyWith({String? key, String? value, DateTime? updatedAt}) =>
      SettingEntity(
        key: key ?? this.key,
        value: value ?? this.value,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  SettingEntity copyWithCompanion(SettingsCompanion data) {
    return SettingEntity(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SettingEntity(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingEntity &&
          other.key == this.key &&
          other.value == this.value &&
          other.updatedAt == this.updatedAt);
}

class SettingsCompanion extends UpdateCompanion<SettingEntity> {
  final Value<String> key;
  final Value<String> value;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const SettingsCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SettingsCompanion.insert({
    required String key,
    required String value,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : key = Value(key),
        value = Value(value),
        updatedAt = Value(updatedAt);
  static Insertable<SettingEntity> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SettingsCompanion copyWith(
      {Value<String>? key,
      Value<String>? value,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return SettingsCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
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
    return (StringBuffer('SettingsCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SectorsTable sectors = $SectorsTable(this);
  late final $StocksTable stocks = $StocksTable(this);
  late final $StockDetailsTable stockDetails = $StockDetailsTable(this);
  late final $SettingsTable settings = $SettingsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [sectors, stocks, stockDetails, settings];
}

typedef $$SectorsTableCreateCompanionBuilder = SectorsCompanion Function({
  required String id,
  required String name,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$SectorsTableUpdateCompanionBuilder = SectorsCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

final class $$SectorsTableReferences
    extends BaseReferences<_$AppDatabase, $SectorsTable, SectorEntity> {
  $$SectorsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$StocksTable, List<StockEntity>> _stocksRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.stocks,
          aliasName: $_aliasNameGenerator(db.sectors.id, db.stocks.sectorId));

  $$StocksTableProcessedTableManager get stocksRefs {
    final manager = $$StocksTableTableManager($_db, $_db.stocks)
        .filter((f) => f.sectorId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_stocksRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$SectorsTableFilterComposer
    extends Composer<_$AppDatabase, $SectorsTable> {
  $$SectorsTableFilterComposer({
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

  Expression<bool> stocksRefs(
      Expression<bool> Function($$StocksTableFilterComposer f) f) {
    final $$StocksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stocks,
        getReferencedColumn: (t) => t.sectorId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StocksTableFilterComposer(
              $db: $db,
              $table: $db.stocks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SectorsTableOrderingComposer
    extends Composer<_$AppDatabase, $SectorsTable> {
  $$SectorsTableOrderingComposer({
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

class $$SectorsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SectorsTable> {
  $$SectorsTableAnnotationComposer({
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

  Expression<T> stocksRefs<T extends Object>(
      Expression<T> Function($$StocksTableAnnotationComposer a) f) {
    final $$StocksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stocks,
        getReferencedColumn: (t) => t.sectorId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StocksTableAnnotationComposer(
              $db: $db,
              $table: $db.stocks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SectorsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SectorsTable,
    SectorEntity,
    $$SectorsTableFilterComposer,
    $$SectorsTableOrderingComposer,
    $$SectorsTableAnnotationComposer,
    $$SectorsTableCreateCompanionBuilder,
    $$SectorsTableUpdateCompanionBuilder,
    (SectorEntity, $$SectorsTableReferences),
    SectorEntity,
    PrefetchHooks Function({bool stocksRefs})> {
  $$SectorsTableTableManager(_$AppDatabase db, $SectorsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SectorsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SectorsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SectorsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SectorsCompanion(
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
              SectorsCompanion.insert(
            id: id,
            name: name,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$SectorsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({stocksRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (stocksRefs) db.stocks],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (stocksRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$SectorsTableReferences._stocksRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SectorsTableReferences(db, table, p0).stocksRefs,
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

typedef $$SectorsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SectorsTable,
    SectorEntity,
    $$SectorsTableFilterComposer,
    $$SectorsTableOrderingComposer,
    $$SectorsTableAnnotationComposer,
    $$SectorsTableCreateCompanionBuilder,
    $$SectorsTableUpdateCompanionBuilder,
    (SectorEntity, $$SectorsTableReferences),
    SectorEntity,
    PrefetchHooks Function({bool stocksRefs})>;
typedef $$StocksTableCreateCompanionBuilder = StocksCompanion Function({
  required String id,
  required int stockId,
  required int rank,
  required String symbol,
  required String exchange,
  required String title,
  required double jittaScore,
  required String nativeName,
  required String sectorId,
  required String industry,
  Value<String?> market,
  Value<bool> isFollowing,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$StocksTableUpdateCompanionBuilder = StocksCompanion Function({
  Value<String> id,
  Value<int> stockId,
  Value<int> rank,
  Value<String> symbol,
  Value<String> exchange,
  Value<String> title,
  Value<double> jittaScore,
  Value<String> nativeName,
  Value<String> sectorId,
  Value<String> industry,
  Value<String?> market,
  Value<bool> isFollowing,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

final class $$StocksTableReferences
    extends BaseReferences<_$AppDatabase, $StocksTable, StockEntity> {
  $$StocksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $SectorsTable _sectorIdTable(_$AppDatabase db) => db.sectors
      .createAlias($_aliasNameGenerator(db.stocks.sectorId, db.sectors.id));

  $$SectorsTableProcessedTableManager get sectorId {
    final manager = $$SectorsTableTableManager($_db, $_db.sectors)
        .filter((f) => f.id($_item.sectorId!));
    final item = $_typedResult.readTableOrNull(_sectorIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$StockDetailsTable, List<StockDetailEntity>>
      _stockDetailsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.stockDetails,
          aliasName: $_aliasNameGenerator(db.stocks.id, db.stockDetails.id));

  $$StockDetailsTableProcessedTableManager get stockDetailsRefs {
    final manager = $$StockDetailsTableTableManager($_db, $_db.stockDetails)
        .filter((f) => f.id.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_stockDetailsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$StocksTableFilterComposer
    extends Composer<_$AppDatabase, $StocksTable> {
  $$StocksTableFilterComposer({
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

  ColumnFilters<bool> get isFollowing => $composableBuilder(
      column: $table.isFollowing, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  $$SectorsTableFilterComposer get sectorId {
    final $$SectorsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sectorId,
        referencedTable: $db.sectors,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SectorsTableFilterComposer(
              $db: $db,
              $table: $db.sectors,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> stockDetailsRefs(
      Expression<bool> Function($$StockDetailsTableFilterComposer f) f) {
    final $$StockDetailsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stockDetails,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StockDetailsTableFilterComposer(
              $db: $db,
              $table: $db.stockDetails,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$StocksTableOrderingComposer
    extends Composer<_$AppDatabase, $StocksTable> {
  $$StocksTableOrderingComposer({
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

  ColumnOrderings<bool> get isFollowing => $composableBuilder(
      column: $table.isFollowing, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  $$SectorsTableOrderingComposer get sectorId {
    final $$SectorsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sectorId,
        referencedTable: $db.sectors,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SectorsTableOrderingComposer(
              $db: $db,
              $table: $db.sectors,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$StocksTableAnnotationComposer
    extends Composer<_$AppDatabase, $StocksTable> {
  $$StocksTableAnnotationComposer({
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

  GeneratedColumn<bool> get isFollowing => $composableBuilder(
      column: $table.isFollowing, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$SectorsTableAnnotationComposer get sectorId {
    final $$SectorsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sectorId,
        referencedTable: $db.sectors,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SectorsTableAnnotationComposer(
              $db: $db,
              $table: $db.sectors,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> stockDetailsRefs<T extends Object>(
      Expression<T> Function($$StockDetailsTableAnnotationComposer a) f) {
    final $$StockDetailsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stockDetails,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StockDetailsTableAnnotationComposer(
              $db: $db,
              $table: $db.stockDetails,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$StocksTableTableManager extends RootTableManager<
    _$AppDatabase,
    $StocksTable,
    StockEntity,
    $$StocksTableFilterComposer,
    $$StocksTableOrderingComposer,
    $$StocksTableAnnotationComposer,
    $$StocksTableCreateCompanionBuilder,
    $$StocksTableUpdateCompanionBuilder,
    (StockEntity, $$StocksTableReferences),
    StockEntity,
    PrefetchHooks Function({bool sectorId, bool stockDetailsRefs})> {
  $$StocksTableTableManager(_$AppDatabase db, $StocksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StocksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StocksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StocksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<int> stockId = const Value.absent(),
            Value<int> rank = const Value.absent(),
            Value<String> symbol = const Value.absent(),
            Value<String> exchange = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<double> jittaScore = const Value.absent(),
            Value<String> nativeName = const Value.absent(),
            Value<String> sectorId = const Value.absent(),
            Value<String> industry = const Value.absent(),
            Value<String?> market = const Value.absent(),
            Value<bool> isFollowing = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              StocksCompanion(
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
            isFollowing: isFollowing,
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
            required String nativeName,
            required String sectorId,
            required String industry,
            Value<String?> market = const Value.absent(),
            Value<bool> isFollowing = const Value.absent(),
            required DateTime updatedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              StocksCompanion.insert(
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
            isFollowing: isFollowing,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$StocksTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {sectorId = false, stockDetailsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (stockDetailsRefs) db.stockDetails],
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
                    referencedTable: $$StocksTableReferences._sectorIdTable(db),
                    referencedColumn:
                        $$StocksTableReferences._sectorIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (stockDetailsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$StocksTableReferences._stockDetailsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$StocksTableReferences(db, table, p0)
                                .stockDetailsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) =>
                                referencedItems.where((e) => e.id == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$StocksTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $StocksTable,
    StockEntity,
    $$StocksTableFilterComposer,
    $$StocksTableOrderingComposer,
    $$StocksTableAnnotationComposer,
    $$StocksTableCreateCompanionBuilder,
    $$StocksTableUpdateCompanionBuilder,
    (StockEntity, $$StocksTableReferences),
    StockEntity,
    PrefetchHooks Function({bool sectorId, bool stockDetailsRefs})>;
typedef $$StockDetailsTableCreateCompanionBuilder = StockDetailsCompanion
    Function({
  required String id,
  Value<String?> summary,
  Value<String?> currency,
  Value<String?> currencySign,
  Value<String?> priceCurrency,
  Value<String?> status,
  required double latestPrice,
  required DateTime priceDateTime,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$StockDetailsTableUpdateCompanionBuilder = StockDetailsCompanion
    Function({
  Value<String> id,
  Value<String?> summary,
  Value<String?> currency,
  Value<String?> currencySign,
  Value<String?> priceCurrency,
  Value<String?> status,
  Value<double> latestPrice,
  Value<DateTime> priceDateTime,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

final class $$StockDetailsTableReferences extends BaseReferences<_$AppDatabase,
    $StockDetailsTable, StockDetailEntity> {
  $$StockDetailsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $StocksTable _idTable(_$AppDatabase db) => db.stocks
      .createAlias($_aliasNameGenerator(db.stockDetails.id, db.stocks.id));

  $$StocksTableProcessedTableManager get id {
    final manager = $$StocksTableTableManager($_db, $_db.stocks)
        .filter((f) => f.id($_item.id!));
    final item = $_typedResult.readTableOrNull(_idTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$StockDetailsTableFilterComposer
    extends Composer<_$AppDatabase, $StockDetailsTable> {
  $$StockDetailsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get summary => $composableBuilder(
      column: $table.summary, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get currency => $composableBuilder(
      column: $table.currency, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get currencySign => $composableBuilder(
      column: $table.currencySign, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get priceCurrency => $composableBuilder(
      column: $table.priceCurrency, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get latestPrice => $composableBuilder(
      column: $table.latestPrice, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get priceDateTime => $composableBuilder(
      column: $table.priceDateTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  $$StocksTableFilterComposer get id {
    final $$StocksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stocks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StocksTableFilterComposer(
              $db: $db,
              $table: $db.stocks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$StockDetailsTableOrderingComposer
    extends Composer<_$AppDatabase, $StockDetailsTable> {
  $$StockDetailsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get summary => $composableBuilder(
      column: $table.summary, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get currency => $composableBuilder(
      column: $table.currency, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get currencySign => $composableBuilder(
      column: $table.currencySign,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get priceCurrency => $composableBuilder(
      column: $table.priceCurrency,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get latestPrice => $composableBuilder(
      column: $table.latestPrice, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get priceDateTime => $composableBuilder(
      column: $table.priceDateTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  $$StocksTableOrderingComposer get id {
    final $$StocksTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stocks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StocksTableOrderingComposer(
              $db: $db,
              $table: $db.stocks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$StockDetailsTableAnnotationComposer
    extends Composer<_$AppDatabase, $StockDetailsTable> {
  $$StockDetailsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get summary =>
      $composableBuilder(column: $table.summary, builder: (column) => column);

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<String> get currencySign => $composableBuilder(
      column: $table.currencySign, builder: (column) => column);

  GeneratedColumn<String> get priceCurrency => $composableBuilder(
      column: $table.priceCurrency, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<double> get latestPrice => $composableBuilder(
      column: $table.latestPrice, builder: (column) => column);

  GeneratedColumn<DateTime> get priceDateTime => $composableBuilder(
      column: $table.priceDateTime, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$StocksTableAnnotationComposer get id {
    final $$StocksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stocks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StocksTableAnnotationComposer(
              $db: $db,
              $table: $db.stocks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$StockDetailsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $StockDetailsTable,
    StockDetailEntity,
    $$StockDetailsTableFilterComposer,
    $$StockDetailsTableOrderingComposer,
    $$StockDetailsTableAnnotationComposer,
    $$StockDetailsTableCreateCompanionBuilder,
    $$StockDetailsTableUpdateCompanionBuilder,
    (StockDetailEntity, $$StockDetailsTableReferences),
    StockDetailEntity,
    PrefetchHooks Function({bool id})> {
  $$StockDetailsTableTableManager(_$AppDatabase db, $StockDetailsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StockDetailsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StockDetailsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StockDetailsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> summary = const Value.absent(),
            Value<String?> currency = const Value.absent(),
            Value<String?> currencySign = const Value.absent(),
            Value<String?> priceCurrency = const Value.absent(),
            Value<String?> status = const Value.absent(),
            Value<double> latestPrice = const Value.absent(),
            Value<DateTime> priceDateTime = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              StockDetailsCompanion(
            id: id,
            summary: summary,
            currency: currency,
            currencySign: currencySign,
            priceCurrency: priceCurrency,
            status: status,
            latestPrice: latestPrice,
            priceDateTime: priceDateTime,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> summary = const Value.absent(),
            Value<String?> currency = const Value.absent(),
            Value<String?> currencySign = const Value.absent(),
            Value<String?> priceCurrency = const Value.absent(),
            Value<String?> status = const Value.absent(),
            required double latestPrice,
            required DateTime priceDateTime,
            required DateTime updatedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              StockDetailsCompanion.insert(
            id: id,
            summary: summary,
            currency: currency,
            currencySign: currencySign,
            priceCurrency: priceCurrency,
            status: status,
            latestPrice: latestPrice,
            priceDateTime: priceDateTime,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$StockDetailsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({id = false}) {
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
                if (id) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.id,
                    referencedTable: $$StockDetailsTableReferences._idTable(db),
                    referencedColumn:
                        $$StockDetailsTableReferences._idTable(db).id,
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

typedef $$StockDetailsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $StockDetailsTable,
    StockDetailEntity,
    $$StockDetailsTableFilterComposer,
    $$StockDetailsTableOrderingComposer,
    $$StockDetailsTableAnnotationComposer,
    $$StockDetailsTableCreateCompanionBuilder,
    $$StockDetailsTableUpdateCompanionBuilder,
    (StockDetailEntity, $$StockDetailsTableReferences),
    StockDetailEntity,
    PrefetchHooks Function({bool id})>;
typedef $$SettingsTableCreateCompanionBuilder = SettingsCompanion Function({
  required String key,
  required String value,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$SettingsTableUpdateCompanionBuilder = SettingsCompanion Function({
  Value<String> key,
  Value<String> value,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

class $$SettingsTableFilterComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $$SettingsTableOrderingComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$SettingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$SettingsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SettingsTable,
    SettingEntity,
    $$SettingsTableFilterComposer,
    $$SettingsTableOrderingComposer,
    $$SettingsTableAnnotationComposer,
    $$SettingsTableCreateCompanionBuilder,
    $$SettingsTableUpdateCompanionBuilder,
    (
      SettingEntity,
      BaseReferences<_$AppDatabase, $SettingsTable, SettingEntity>
    ),
    SettingEntity,
    PrefetchHooks Function()> {
  $$SettingsTableTableManager(_$AppDatabase db, $SettingsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> key = const Value.absent(),
            Value<String> value = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SettingsCompanion(
            key: key,
            value: value,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String key,
            required String value,
            required DateTime updatedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              SettingsCompanion.insert(
            key: key,
            value: value,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SettingsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SettingsTable,
    SettingEntity,
    $$SettingsTableFilterComposer,
    $$SettingsTableOrderingComposer,
    $$SettingsTableAnnotationComposer,
    $$SettingsTableCreateCompanionBuilder,
    $$SettingsTableUpdateCompanionBuilder,
    (
      SettingEntity,
      BaseReferences<_$AppDatabase, $SettingsTable, SettingEntity>
    ),
    SettingEntity,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SectorsTableTableManager get sectors =>
      $$SectorsTableTableManager(_db, _db.sectors);
  $$StocksTableTableManager get stocks =>
      $$StocksTableTableManager(_db, _db.stocks);
  $$StockDetailsTableTableManager get stockDetails =>
      $$StockDetailsTableTableManager(_db, _db.stockDetails);
  $$SettingsTableTableManager get settings =>
      $$SettingsTableTableManager(_db, _db.settings);
}
