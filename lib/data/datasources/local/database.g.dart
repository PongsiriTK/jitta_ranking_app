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
      'currency', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _currencySignMeta =
      const VerificationMeta('currencySign');
  @override
  late final GeneratedColumn<String> currencySign = GeneratedColumn<String>(
      'currency_sign', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priceCurrencyMeta =
      const VerificationMeta('priceCurrency');
  @override
  late final GeneratedColumn<String> priceCurrency = GeneratedColumn<String>(
      'price_currency', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
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
  static const VerificationMeta _lossChanceLastMeta =
      const VerificationMeta('lossChanceLast');
  @override
  late final GeneratedColumn<double> lossChanceLast = GeneratedColumn<double>(
      'loss_chance_last', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _lossChanceUpdatedAtMeta =
      const VerificationMeta('lossChanceUpdatedAt');
  @override
  late final GeneratedColumn<DateTime> lossChanceUpdatedAt =
      GeneratedColumn<DateTime>('loss_chance_updated_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _marketRankMeta =
      const VerificationMeta('marketRank');
  @override
  late final GeneratedColumn<int> marketRank = GeneratedColumn<int>(
      'market_rank', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _marketMemberMeta =
      const VerificationMeta('marketMember');
  @override
  late final GeneratedColumn<int> marketMember = GeneratedColumn<int>(
      'market_member', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _ipoDateMeta =
      const VerificationMeta('ipoDate');
  @override
  late final GeneratedColumn<DateTime> ipoDate = GeneratedColumn<DateTime>(
      'ipo_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _companyUrlMeta =
      const VerificationMeta('companyUrl');
  @override
  late final GeneratedColumn<String> companyUrl = GeneratedColumn<String>(
      'company_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _priceDiffIdMeta =
      const VerificationMeta('priceDiffId');
  @override
  late final GeneratedColumn<String> priceDiffId = GeneratedColumn<String>(
      'price_diff_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priceDiffValueMeta =
      const VerificationMeta('priceDiffValue');
  @override
  late final GeneratedColumn<double> priceDiffValue = GeneratedColumn<double>(
      'price_diff_value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _priceDiffTypeMeta =
      const VerificationMeta('priceDiffType');
  @override
  late final GeneratedColumn<String> priceDiffType = GeneratedColumn<String>(
      'price_diff_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priceDiffPercentMeta =
      const VerificationMeta('priceDiffPercent');
  @override
  late final GeneratedColumn<double> priceDiffPercent = GeneratedColumn<double>(
      'price_diff_percent', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _monthlyPriceIdMeta =
      const VerificationMeta('monthlyPriceId');
  @override
  late final GeneratedColumn<String> monthlyPriceId = GeneratedColumn<String>(
      'monthly_price_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _monthlyPriceValueMeta =
      const VerificationMeta('monthlyPriceValue');
  @override
  late final GeneratedColumn<double> monthlyPriceValue =
      GeneratedColumn<double>('monthly_price_value', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _monthlyPriceYearMeta =
      const VerificationMeta('monthlyPriceYear');
  @override
  late final GeneratedColumn<int> monthlyPriceYear = GeneratedColumn<int>(
      'monthly_price_year', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _monthlyPriceMonthMeta =
      const VerificationMeta('monthlyPriceMonth');
  @override
  late final GeneratedColumn<int> monthlyPriceMonth = GeneratedColumn<int>(
      'monthly_price_month', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _monthlyPriceTotalMeta =
      const VerificationMeta('monthlyPriceTotal');
  @override
  late final GeneratedColumn<int> monthlyPriceTotal = GeneratedColumn<int>(
      'monthly_price_total', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _scoreIdMeta =
      const VerificationMeta('scoreId');
  @override
  late final GeneratedColumn<String> scoreId = GeneratedColumn<String>(
      'score_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _scoreValueMeta =
      const VerificationMeta('scoreValue');
  @override
  late final GeneratedColumn<double> scoreValue = GeneratedColumn<double>(
      'score_value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _lineTotalMeta =
      const VerificationMeta('lineTotal');
  @override
  late final GeneratedColumn<int> lineTotal = GeneratedColumn<int>(
      'line_total', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _factorGrowthValueMeta =
      const VerificationMeta('factorGrowthValue');
  @override
  late final GeneratedColumn<double> factorGrowthValue =
      GeneratedColumn<double>('factor_growth_value', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _factorGrowthNameMeta =
      const VerificationMeta('factorGrowthName');
  @override
  late final GeneratedColumn<String> factorGrowthName = GeneratedColumn<String>(
      'factor_growth_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _factorGrowthLevelMeta =
      const VerificationMeta('factorGrowthLevel');
  @override
  late final GeneratedColumn<String> factorGrowthLevel =
      GeneratedColumn<String>('factor_growth_level', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _factorRecentValueMeta =
      const VerificationMeta('factorRecentValue');
  @override
  late final GeneratedColumn<double> factorRecentValue =
      GeneratedColumn<double>('factor_recent_value', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _factorRecentNameMeta =
      const VerificationMeta('factorRecentName');
  @override
  late final GeneratedColumn<String> factorRecentName = GeneratedColumn<String>(
      'factor_recent_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _factorRecentLevelMeta =
      const VerificationMeta('factorRecentLevel');
  @override
  late final GeneratedColumn<String> factorRecentLevel =
      GeneratedColumn<String>('factor_recent_level', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _factorFinancialValueMeta =
      const VerificationMeta('factorFinancialValue');
  @override
  late final GeneratedColumn<double> factorFinancialValue =
      GeneratedColumn<double>('factor_financial_value', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _factorFinancialNameMeta =
      const VerificationMeta('factorFinancialName');
  @override
  late final GeneratedColumn<String> factorFinancialName =
      GeneratedColumn<String>('factor_financial_name', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _factorFinancialLevelMeta =
      const VerificationMeta('factorFinancialLevel');
  @override
  late final GeneratedColumn<String> factorFinancialLevel =
      GeneratedColumn<String>('factor_financial_level', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _factorReturnValueMeta =
      const VerificationMeta('factorReturnValue');
  @override
  late final GeneratedColumn<double> factorReturnValue =
      GeneratedColumn<double>('factor_return_value', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _factorReturnNameMeta =
      const VerificationMeta('factorReturnName');
  @override
  late final GeneratedColumn<String> factorReturnName = GeneratedColumn<String>(
      'factor_return_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _factorReturnLevelMeta =
      const VerificationMeta('factorReturnLevel');
  @override
  late final GeneratedColumn<String> factorReturnLevel =
      GeneratedColumn<String>('factor_return_level', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _factorManagementValueMeta =
      const VerificationMeta('factorManagementValue');
  @override
  late final GeneratedColumn<double> factorManagementValue =
      GeneratedColumn<double>('factor_management_value', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _factorManagementNameMeta =
      const VerificationMeta('factorManagementName');
  @override
  late final GeneratedColumn<String> factorManagementName =
      GeneratedColumn<String>('factor_management_name', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _factorManagementLevelMeta =
      const VerificationMeta('factorManagementLevel');
  @override
  late final GeneratedColumn<String> factorManagementLevel =
      GeneratedColumn<String>('factor_management_level', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _signTitleMeta =
      const VerificationMeta('signTitle');
  @override
  late final GeneratedColumn<String> signTitle = GeneratedColumn<String>(
      'sign_title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _signTypeMeta =
      const VerificationMeta('signType');
  @override
  late final GeneratedColumn<String> signType = GeneratedColumn<String>(
      'sign_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _signNameMeta =
      const VerificationMeta('signName');
  @override
  late final GeneratedColumn<String> signName = GeneratedColumn<String>(
      'sign_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _signValueMeta =
      const VerificationMeta('signValue');
  @override
  late final GeneratedColumn<String> signValue = GeneratedColumn<String>(
      'sign_value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _signDisplayTitleMeta =
      const VerificationMeta('signDisplayTitle');
  @override
  late final GeneratedColumn<String> signDisplayTitle = GeneratedColumn<String>(
      'sign_display_title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _signDisplayValueMeta =
      const VerificationMeta('signDisplayValue');
  @override
  late final GeneratedColumn<String> signDisplayValue = GeneratedColumn<String>(
      'sign_display_value', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _signDisplayColumnHeadMeta =
      const VerificationMeta('signDisplayColumnHead');
  @override
  late final GeneratedColumn<String> signDisplayColumnHead =
      GeneratedColumn<String>('sign_display_column_head', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _signDisplayFooterMeta =
      const VerificationMeta('signDisplayFooter');
  @override
  late final GeneratedColumn<String> signDisplayFooter =
      GeneratedColumn<String>('sign_display_footer', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
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
        lossChanceLast,
        lossChanceUpdatedAt,
        marketRank,
        marketMember,
        ipoDate,
        companyUrl,
        priceDiffId,
        priceDiffValue,
        priceDiffType,
        priceDiffPercent,
        monthlyPriceId,
        monthlyPriceValue,
        monthlyPriceYear,
        monthlyPriceMonth,
        monthlyPriceTotal,
        scoreId,
        scoreValue,
        lineTotal,
        factorGrowthValue,
        factorGrowthName,
        factorGrowthLevel,
        factorRecentValue,
        factorRecentName,
        factorRecentLevel,
        factorFinancialValue,
        factorFinancialName,
        factorFinancialLevel,
        factorReturnValue,
        factorReturnName,
        factorReturnLevel,
        factorManagementValue,
        factorManagementName,
        factorManagementLevel,
        signTitle,
        signType,
        signName,
        signValue,
        signDisplayTitle,
        signDisplayValue,
        signDisplayColumnHead,
        signDisplayFooter,
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
    } else if (isInserting) {
      context.missing(_currencyMeta);
    }
    if (data.containsKey('currency_sign')) {
      context.handle(
          _currencySignMeta,
          currencySign.isAcceptableOrUnknown(
              data['currency_sign']!, _currencySignMeta));
    } else if (isInserting) {
      context.missing(_currencySignMeta);
    }
    if (data.containsKey('price_currency')) {
      context.handle(
          _priceCurrencyMeta,
          priceCurrency.isAcceptableOrUnknown(
              data['price_currency']!, _priceCurrencyMeta));
    } else if (isInserting) {
      context.missing(_priceCurrencyMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
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
    if (data.containsKey('loss_chance_last')) {
      context.handle(
          _lossChanceLastMeta,
          lossChanceLast.isAcceptableOrUnknown(
              data['loss_chance_last']!, _lossChanceLastMeta));
    } else if (isInserting) {
      context.missing(_lossChanceLastMeta);
    }
    if (data.containsKey('loss_chance_updated_at')) {
      context.handle(
          _lossChanceUpdatedAtMeta,
          lossChanceUpdatedAt.isAcceptableOrUnknown(
              data['loss_chance_updated_at']!, _lossChanceUpdatedAtMeta));
    } else if (isInserting) {
      context.missing(_lossChanceUpdatedAtMeta);
    }
    if (data.containsKey('market_rank')) {
      context.handle(
          _marketRankMeta,
          marketRank.isAcceptableOrUnknown(
              data['market_rank']!, _marketRankMeta));
    } else if (isInserting) {
      context.missing(_marketRankMeta);
    }
    if (data.containsKey('market_member')) {
      context.handle(
          _marketMemberMeta,
          marketMember.isAcceptableOrUnknown(
              data['market_member']!, _marketMemberMeta));
    } else if (isInserting) {
      context.missing(_marketMemberMeta);
    }
    if (data.containsKey('ipo_date')) {
      context.handle(_ipoDateMeta,
          ipoDate.isAcceptableOrUnknown(data['ipo_date']!, _ipoDateMeta));
    }
    if (data.containsKey('company_url')) {
      context.handle(
          _companyUrlMeta,
          companyUrl.isAcceptableOrUnknown(
              data['company_url']!, _companyUrlMeta));
    }
    if (data.containsKey('price_diff_id')) {
      context.handle(
          _priceDiffIdMeta,
          priceDiffId.isAcceptableOrUnknown(
              data['price_diff_id']!, _priceDiffIdMeta));
    } else if (isInserting) {
      context.missing(_priceDiffIdMeta);
    }
    if (data.containsKey('price_diff_value')) {
      context.handle(
          _priceDiffValueMeta,
          priceDiffValue.isAcceptableOrUnknown(
              data['price_diff_value']!, _priceDiffValueMeta));
    } else if (isInserting) {
      context.missing(_priceDiffValueMeta);
    }
    if (data.containsKey('price_diff_type')) {
      context.handle(
          _priceDiffTypeMeta,
          priceDiffType.isAcceptableOrUnknown(
              data['price_diff_type']!, _priceDiffTypeMeta));
    } else if (isInserting) {
      context.missing(_priceDiffTypeMeta);
    }
    if (data.containsKey('price_diff_percent')) {
      context.handle(
          _priceDiffPercentMeta,
          priceDiffPercent.isAcceptableOrUnknown(
              data['price_diff_percent']!, _priceDiffPercentMeta));
    } else if (isInserting) {
      context.missing(_priceDiffPercentMeta);
    }
    if (data.containsKey('monthly_price_id')) {
      context.handle(
          _monthlyPriceIdMeta,
          monthlyPriceId.isAcceptableOrUnknown(
              data['monthly_price_id']!, _monthlyPriceIdMeta));
    } else if (isInserting) {
      context.missing(_monthlyPriceIdMeta);
    }
    if (data.containsKey('monthly_price_value')) {
      context.handle(
          _monthlyPriceValueMeta,
          monthlyPriceValue.isAcceptableOrUnknown(
              data['monthly_price_value']!, _monthlyPriceValueMeta));
    } else if (isInserting) {
      context.missing(_monthlyPriceValueMeta);
    }
    if (data.containsKey('monthly_price_year')) {
      context.handle(
          _monthlyPriceYearMeta,
          monthlyPriceYear.isAcceptableOrUnknown(
              data['monthly_price_year']!, _monthlyPriceYearMeta));
    } else if (isInserting) {
      context.missing(_monthlyPriceYearMeta);
    }
    if (data.containsKey('monthly_price_month')) {
      context.handle(
          _monthlyPriceMonthMeta,
          monthlyPriceMonth.isAcceptableOrUnknown(
              data['monthly_price_month']!, _monthlyPriceMonthMeta));
    } else if (isInserting) {
      context.missing(_monthlyPriceMonthMeta);
    }
    if (data.containsKey('monthly_price_total')) {
      context.handle(
          _monthlyPriceTotalMeta,
          monthlyPriceTotal.isAcceptableOrUnknown(
              data['monthly_price_total']!, _monthlyPriceTotalMeta));
    } else if (isInserting) {
      context.missing(_monthlyPriceTotalMeta);
    }
    if (data.containsKey('score_id')) {
      context.handle(_scoreIdMeta,
          scoreId.isAcceptableOrUnknown(data['score_id']!, _scoreIdMeta));
    } else if (isInserting) {
      context.missing(_scoreIdMeta);
    }
    if (data.containsKey('score_value')) {
      context.handle(
          _scoreValueMeta,
          scoreValue.isAcceptableOrUnknown(
              data['score_value']!, _scoreValueMeta));
    } else if (isInserting) {
      context.missing(_scoreValueMeta);
    }
    if (data.containsKey('line_total')) {
      context.handle(_lineTotalMeta,
          lineTotal.isAcceptableOrUnknown(data['line_total']!, _lineTotalMeta));
    } else if (isInserting) {
      context.missing(_lineTotalMeta);
    }
    if (data.containsKey('factor_growth_value')) {
      context.handle(
          _factorGrowthValueMeta,
          factorGrowthValue.isAcceptableOrUnknown(
              data['factor_growth_value']!, _factorGrowthValueMeta));
    } else if (isInserting) {
      context.missing(_factorGrowthValueMeta);
    }
    if (data.containsKey('factor_growth_name')) {
      context.handle(
          _factorGrowthNameMeta,
          factorGrowthName.isAcceptableOrUnknown(
              data['factor_growth_name']!, _factorGrowthNameMeta));
    } else if (isInserting) {
      context.missing(_factorGrowthNameMeta);
    }
    if (data.containsKey('factor_growth_level')) {
      context.handle(
          _factorGrowthLevelMeta,
          factorGrowthLevel.isAcceptableOrUnknown(
              data['factor_growth_level']!, _factorGrowthLevelMeta));
    } else if (isInserting) {
      context.missing(_factorGrowthLevelMeta);
    }
    if (data.containsKey('factor_recent_value')) {
      context.handle(
          _factorRecentValueMeta,
          factorRecentValue.isAcceptableOrUnknown(
              data['factor_recent_value']!, _factorRecentValueMeta));
    } else if (isInserting) {
      context.missing(_factorRecentValueMeta);
    }
    if (data.containsKey('factor_recent_name')) {
      context.handle(
          _factorRecentNameMeta,
          factorRecentName.isAcceptableOrUnknown(
              data['factor_recent_name']!, _factorRecentNameMeta));
    } else if (isInserting) {
      context.missing(_factorRecentNameMeta);
    }
    if (data.containsKey('factor_recent_level')) {
      context.handle(
          _factorRecentLevelMeta,
          factorRecentLevel.isAcceptableOrUnknown(
              data['factor_recent_level']!, _factorRecentLevelMeta));
    } else if (isInserting) {
      context.missing(_factorRecentLevelMeta);
    }
    if (data.containsKey('factor_financial_value')) {
      context.handle(
          _factorFinancialValueMeta,
          factorFinancialValue.isAcceptableOrUnknown(
              data['factor_financial_value']!, _factorFinancialValueMeta));
    } else if (isInserting) {
      context.missing(_factorFinancialValueMeta);
    }
    if (data.containsKey('factor_financial_name')) {
      context.handle(
          _factorFinancialNameMeta,
          factorFinancialName.isAcceptableOrUnknown(
              data['factor_financial_name']!, _factorFinancialNameMeta));
    } else if (isInserting) {
      context.missing(_factorFinancialNameMeta);
    }
    if (data.containsKey('factor_financial_level')) {
      context.handle(
          _factorFinancialLevelMeta,
          factorFinancialLevel.isAcceptableOrUnknown(
              data['factor_financial_level']!, _factorFinancialLevelMeta));
    } else if (isInserting) {
      context.missing(_factorFinancialLevelMeta);
    }
    if (data.containsKey('factor_return_value')) {
      context.handle(
          _factorReturnValueMeta,
          factorReturnValue.isAcceptableOrUnknown(
              data['factor_return_value']!, _factorReturnValueMeta));
    } else if (isInserting) {
      context.missing(_factorReturnValueMeta);
    }
    if (data.containsKey('factor_return_name')) {
      context.handle(
          _factorReturnNameMeta,
          factorReturnName.isAcceptableOrUnknown(
              data['factor_return_name']!, _factorReturnNameMeta));
    } else if (isInserting) {
      context.missing(_factorReturnNameMeta);
    }
    if (data.containsKey('factor_return_level')) {
      context.handle(
          _factorReturnLevelMeta,
          factorReturnLevel.isAcceptableOrUnknown(
              data['factor_return_level']!, _factorReturnLevelMeta));
    } else if (isInserting) {
      context.missing(_factorReturnLevelMeta);
    }
    if (data.containsKey('factor_management_value')) {
      context.handle(
          _factorManagementValueMeta,
          factorManagementValue.isAcceptableOrUnknown(
              data['factor_management_value']!, _factorManagementValueMeta));
    } else if (isInserting) {
      context.missing(_factorManagementValueMeta);
    }
    if (data.containsKey('factor_management_name')) {
      context.handle(
          _factorManagementNameMeta,
          factorManagementName.isAcceptableOrUnknown(
              data['factor_management_name']!, _factorManagementNameMeta));
    } else if (isInserting) {
      context.missing(_factorManagementNameMeta);
    }
    if (data.containsKey('factor_management_level')) {
      context.handle(
          _factorManagementLevelMeta,
          factorManagementLevel.isAcceptableOrUnknown(
              data['factor_management_level']!, _factorManagementLevelMeta));
    } else if (isInserting) {
      context.missing(_factorManagementLevelMeta);
    }
    if (data.containsKey('sign_title')) {
      context.handle(_signTitleMeta,
          signTitle.isAcceptableOrUnknown(data['sign_title']!, _signTitleMeta));
    } else if (isInserting) {
      context.missing(_signTitleMeta);
    }
    if (data.containsKey('sign_type')) {
      context.handle(_signTypeMeta,
          signType.isAcceptableOrUnknown(data['sign_type']!, _signTypeMeta));
    } else if (isInserting) {
      context.missing(_signTypeMeta);
    }
    if (data.containsKey('sign_name')) {
      context.handle(_signNameMeta,
          signName.isAcceptableOrUnknown(data['sign_name']!, _signNameMeta));
    } else if (isInserting) {
      context.missing(_signNameMeta);
    }
    if (data.containsKey('sign_value')) {
      context.handle(_signValueMeta,
          signValue.isAcceptableOrUnknown(data['sign_value']!, _signValueMeta));
    } else if (isInserting) {
      context.missing(_signValueMeta);
    }
    if (data.containsKey('sign_display_title')) {
      context.handle(
          _signDisplayTitleMeta,
          signDisplayTitle.isAcceptableOrUnknown(
              data['sign_display_title']!, _signDisplayTitleMeta));
    } else if (isInserting) {
      context.missing(_signDisplayTitleMeta);
    }
    if (data.containsKey('sign_display_value')) {
      context.handle(
          _signDisplayValueMeta,
          signDisplayValue.isAcceptableOrUnknown(
              data['sign_display_value']!, _signDisplayValueMeta));
    }
    if (data.containsKey('sign_display_column_head')) {
      context.handle(
          _signDisplayColumnHeadMeta,
          signDisplayColumnHead.isAcceptableOrUnknown(
              data['sign_display_column_head']!, _signDisplayColumnHeadMeta));
    }
    if (data.containsKey('sign_display_footer')) {
      context.handle(
          _signDisplayFooterMeta,
          signDisplayFooter.isAcceptableOrUnknown(
              data['sign_display_footer']!, _signDisplayFooterMeta));
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
          .read(DriftSqlType.string, data['${effectivePrefix}currency'])!,
      currencySign: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency_sign'])!,
      priceCurrency: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}price_currency'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      latestPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}latest_price'])!,
      priceDateTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}price_date_time'])!,
      lossChanceLast: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}loss_chance_last'])!,
      lossChanceUpdatedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}loss_chance_updated_at'])!,
      marketRank: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}market_rank'])!,
      marketMember: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}market_member'])!,
      ipoDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}ipo_date']),
      companyUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}company_url']),
      priceDiffId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}price_diff_id'])!,
      priceDiffValue: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}price_diff_value'])!,
      priceDiffType: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}price_diff_type'])!,
      priceDiffPercent: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}price_diff_percent'])!,
      monthlyPriceId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}monthly_price_id'])!,
      monthlyPriceValue: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}monthly_price_value'])!,
      monthlyPriceYear: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}monthly_price_year'])!,
      monthlyPriceMonth: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}monthly_price_month'])!,
      monthlyPriceTotal: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}monthly_price_total'])!,
      scoreId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}score_id'])!,
      scoreValue: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}score_value'])!,
      lineTotal: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}line_total'])!,
      factorGrowthValue: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}factor_growth_value'])!,
      factorGrowthName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}factor_growth_name'])!,
      factorGrowthLevel: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}factor_growth_level'])!,
      factorRecentValue: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}factor_recent_value'])!,
      factorRecentName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}factor_recent_name'])!,
      factorRecentLevel: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}factor_recent_level'])!,
      factorFinancialValue: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}factor_financial_value'])!,
      factorFinancialName: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}factor_financial_name'])!,
      factorFinancialLevel: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}factor_financial_level'])!,
      factorReturnValue: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}factor_return_value'])!,
      factorReturnName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}factor_return_name'])!,
      factorReturnLevel: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}factor_return_level'])!,
      factorManagementValue: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}factor_management_value'])!,
      factorManagementName: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}factor_management_name'])!,
      factorManagementLevel: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}factor_management_level'])!,
      signTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sign_title'])!,
      signType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sign_type'])!,
      signName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sign_name'])!,
      signValue: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sign_value'])!,
      signDisplayTitle: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sign_display_title'])!,
      signDisplayValue: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sign_display_value']),
      signDisplayColumnHead: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}sign_display_column_head']),
      signDisplayFooter: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sign_display_footer']),
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
  final String currency;
  final String currencySign;
  final String priceCurrency;
  final String status;
  final double latestPrice;
  final DateTime priceDateTime;
  final double lossChanceLast;
  final DateTime lossChanceUpdatedAt;
  final int marketRank;
  final int marketMember;
  final DateTime? ipoDate;
  final String? companyUrl;
  final String priceDiffId;
  final double priceDiffValue;
  final String priceDiffType;
  final double priceDiffPercent;
  final String monthlyPriceId;
  final double monthlyPriceValue;
  final int monthlyPriceYear;
  final int monthlyPriceMonth;
  final int monthlyPriceTotal;
  final String scoreId;
  final double scoreValue;
  final int lineTotal;
  final double factorGrowthValue;
  final String factorGrowthName;
  final String factorGrowthLevel;
  final double factorRecentValue;
  final String factorRecentName;
  final String factorRecentLevel;
  final double factorFinancialValue;
  final String factorFinancialName;
  final String factorFinancialLevel;
  final double factorReturnValue;
  final String factorReturnName;
  final String factorReturnLevel;
  final double factorManagementValue;
  final String factorManagementName;
  final String factorManagementLevel;
  final String signTitle;
  final String signType;
  final String signName;
  final String signValue;
  final String signDisplayTitle;
  final String? signDisplayValue;
  final String? signDisplayColumnHead;
  final String? signDisplayFooter;
  final DateTime updatedAt;
  const StockDetailEntity(
      {required this.id,
      this.summary,
      required this.currency,
      required this.currencySign,
      required this.priceCurrency,
      required this.status,
      required this.latestPrice,
      required this.priceDateTime,
      required this.lossChanceLast,
      required this.lossChanceUpdatedAt,
      required this.marketRank,
      required this.marketMember,
      this.ipoDate,
      this.companyUrl,
      required this.priceDiffId,
      required this.priceDiffValue,
      required this.priceDiffType,
      required this.priceDiffPercent,
      required this.monthlyPriceId,
      required this.monthlyPriceValue,
      required this.monthlyPriceYear,
      required this.monthlyPriceMonth,
      required this.monthlyPriceTotal,
      required this.scoreId,
      required this.scoreValue,
      required this.lineTotal,
      required this.factorGrowthValue,
      required this.factorGrowthName,
      required this.factorGrowthLevel,
      required this.factorRecentValue,
      required this.factorRecentName,
      required this.factorRecentLevel,
      required this.factorFinancialValue,
      required this.factorFinancialName,
      required this.factorFinancialLevel,
      required this.factorReturnValue,
      required this.factorReturnName,
      required this.factorReturnLevel,
      required this.factorManagementValue,
      required this.factorManagementName,
      required this.factorManagementLevel,
      required this.signTitle,
      required this.signType,
      required this.signName,
      required this.signValue,
      required this.signDisplayTitle,
      this.signDisplayValue,
      this.signDisplayColumnHead,
      this.signDisplayFooter,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || summary != null) {
      map['summary'] = Variable<String>(summary);
    }
    map['currency'] = Variable<String>(currency);
    map['currency_sign'] = Variable<String>(currencySign);
    map['price_currency'] = Variable<String>(priceCurrency);
    map['status'] = Variable<String>(status);
    map['latest_price'] = Variable<double>(latestPrice);
    map['price_date_time'] = Variable<DateTime>(priceDateTime);
    map['loss_chance_last'] = Variable<double>(lossChanceLast);
    map['loss_chance_updated_at'] = Variable<DateTime>(lossChanceUpdatedAt);
    map['market_rank'] = Variable<int>(marketRank);
    map['market_member'] = Variable<int>(marketMember);
    if (!nullToAbsent || ipoDate != null) {
      map['ipo_date'] = Variable<DateTime>(ipoDate);
    }
    if (!nullToAbsent || companyUrl != null) {
      map['company_url'] = Variable<String>(companyUrl);
    }
    map['price_diff_id'] = Variable<String>(priceDiffId);
    map['price_diff_value'] = Variable<double>(priceDiffValue);
    map['price_diff_type'] = Variable<String>(priceDiffType);
    map['price_diff_percent'] = Variable<double>(priceDiffPercent);
    map['monthly_price_id'] = Variable<String>(monthlyPriceId);
    map['monthly_price_value'] = Variable<double>(monthlyPriceValue);
    map['monthly_price_year'] = Variable<int>(monthlyPriceYear);
    map['monthly_price_month'] = Variable<int>(monthlyPriceMonth);
    map['monthly_price_total'] = Variable<int>(monthlyPriceTotal);
    map['score_id'] = Variable<String>(scoreId);
    map['score_value'] = Variable<double>(scoreValue);
    map['line_total'] = Variable<int>(lineTotal);
    map['factor_growth_value'] = Variable<double>(factorGrowthValue);
    map['factor_growth_name'] = Variable<String>(factorGrowthName);
    map['factor_growth_level'] = Variable<String>(factorGrowthLevel);
    map['factor_recent_value'] = Variable<double>(factorRecentValue);
    map['factor_recent_name'] = Variable<String>(factorRecentName);
    map['factor_recent_level'] = Variable<String>(factorRecentLevel);
    map['factor_financial_value'] = Variable<double>(factorFinancialValue);
    map['factor_financial_name'] = Variable<String>(factorFinancialName);
    map['factor_financial_level'] = Variable<String>(factorFinancialLevel);
    map['factor_return_value'] = Variable<double>(factorReturnValue);
    map['factor_return_name'] = Variable<String>(factorReturnName);
    map['factor_return_level'] = Variable<String>(factorReturnLevel);
    map['factor_management_value'] = Variable<double>(factorManagementValue);
    map['factor_management_name'] = Variable<String>(factorManagementName);
    map['factor_management_level'] = Variable<String>(factorManagementLevel);
    map['sign_title'] = Variable<String>(signTitle);
    map['sign_type'] = Variable<String>(signType);
    map['sign_name'] = Variable<String>(signName);
    map['sign_value'] = Variable<String>(signValue);
    map['sign_display_title'] = Variable<String>(signDisplayTitle);
    if (!nullToAbsent || signDisplayValue != null) {
      map['sign_display_value'] = Variable<String>(signDisplayValue);
    }
    if (!nullToAbsent || signDisplayColumnHead != null) {
      map['sign_display_column_head'] = Variable<String>(signDisplayColumnHead);
    }
    if (!nullToAbsent || signDisplayFooter != null) {
      map['sign_display_footer'] = Variable<String>(signDisplayFooter);
    }
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  StockDetailsCompanion toCompanion(bool nullToAbsent) {
    return StockDetailsCompanion(
      id: Value(id),
      summary: summary == null && nullToAbsent
          ? const Value.absent()
          : Value(summary),
      currency: Value(currency),
      currencySign: Value(currencySign),
      priceCurrency: Value(priceCurrency),
      status: Value(status),
      latestPrice: Value(latestPrice),
      priceDateTime: Value(priceDateTime),
      lossChanceLast: Value(lossChanceLast),
      lossChanceUpdatedAt: Value(lossChanceUpdatedAt),
      marketRank: Value(marketRank),
      marketMember: Value(marketMember),
      ipoDate: ipoDate == null && nullToAbsent
          ? const Value.absent()
          : Value(ipoDate),
      companyUrl: companyUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(companyUrl),
      priceDiffId: Value(priceDiffId),
      priceDiffValue: Value(priceDiffValue),
      priceDiffType: Value(priceDiffType),
      priceDiffPercent: Value(priceDiffPercent),
      monthlyPriceId: Value(monthlyPriceId),
      monthlyPriceValue: Value(monthlyPriceValue),
      monthlyPriceYear: Value(monthlyPriceYear),
      monthlyPriceMonth: Value(monthlyPriceMonth),
      monthlyPriceTotal: Value(monthlyPriceTotal),
      scoreId: Value(scoreId),
      scoreValue: Value(scoreValue),
      lineTotal: Value(lineTotal),
      factorGrowthValue: Value(factorGrowthValue),
      factorGrowthName: Value(factorGrowthName),
      factorGrowthLevel: Value(factorGrowthLevel),
      factorRecentValue: Value(factorRecentValue),
      factorRecentName: Value(factorRecentName),
      factorRecentLevel: Value(factorRecentLevel),
      factorFinancialValue: Value(factorFinancialValue),
      factorFinancialName: Value(factorFinancialName),
      factorFinancialLevel: Value(factorFinancialLevel),
      factorReturnValue: Value(factorReturnValue),
      factorReturnName: Value(factorReturnName),
      factorReturnLevel: Value(factorReturnLevel),
      factorManagementValue: Value(factorManagementValue),
      factorManagementName: Value(factorManagementName),
      factorManagementLevel: Value(factorManagementLevel),
      signTitle: Value(signTitle),
      signType: Value(signType),
      signName: Value(signName),
      signValue: Value(signValue),
      signDisplayTitle: Value(signDisplayTitle),
      signDisplayValue: signDisplayValue == null && nullToAbsent
          ? const Value.absent()
          : Value(signDisplayValue),
      signDisplayColumnHead: signDisplayColumnHead == null && nullToAbsent
          ? const Value.absent()
          : Value(signDisplayColumnHead),
      signDisplayFooter: signDisplayFooter == null && nullToAbsent
          ? const Value.absent()
          : Value(signDisplayFooter),
      updatedAt: Value(updatedAt),
    );
  }

  factory StockDetailEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StockDetailEntity(
      id: serializer.fromJson<String>(json['id']),
      summary: serializer.fromJson<String?>(json['summary']),
      currency: serializer.fromJson<String>(json['currency']),
      currencySign: serializer.fromJson<String>(json['currencySign']),
      priceCurrency: serializer.fromJson<String>(json['priceCurrency']),
      status: serializer.fromJson<String>(json['status']),
      latestPrice: serializer.fromJson<double>(json['latestPrice']),
      priceDateTime: serializer.fromJson<DateTime>(json['priceDateTime']),
      lossChanceLast: serializer.fromJson<double>(json['lossChanceLast']),
      lossChanceUpdatedAt:
          serializer.fromJson<DateTime>(json['lossChanceUpdatedAt']),
      marketRank: serializer.fromJson<int>(json['marketRank']),
      marketMember: serializer.fromJson<int>(json['marketMember']),
      ipoDate: serializer.fromJson<DateTime?>(json['ipoDate']),
      companyUrl: serializer.fromJson<String?>(json['companyUrl']),
      priceDiffId: serializer.fromJson<String>(json['priceDiffId']),
      priceDiffValue: serializer.fromJson<double>(json['priceDiffValue']),
      priceDiffType: serializer.fromJson<String>(json['priceDiffType']),
      priceDiffPercent: serializer.fromJson<double>(json['priceDiffPercent']),
      monthlyPriceId: serializer.fromJson<String>(json['monthlyPriceId']),
      monthlyPriceValue: serializer.fromJson<double>(json['monthlyPriceValue']),
      monthlyPriceYear: serializer.fromJson<int>(json['monthlyPriceYear']),
      monthlyPriceMonth: serializer.fromJson<int>(json['monthlyPriceMonth']),
      monthlyPriceTotal: serializer.fromJson<int>(json['monthlyPriceTotal']),
      scoreId: serializer.fromJson<String>(json['scoreId']),
      scoreValue: serializer.fromJson<double>(json['scoreValue']),
      lineTotal: serializer.fromJson<int>(json['lineTotal']),
      factorGrowthValue: serializer.fromJson<double>(json['factorGrowthValue']),
      factorGrowthName: serializer.fromJson<String>(json['factorGrowthName']),
      factorGrowthLevel: serializer.fromJson<String>(json['factorGrowthLevel']),
      factorRecentValue: serializer.fromJson<double>(json['factorRecentValue']),
      factorRecentName: serializer.fromJson<String>(json['factorRecentName']),
      factorRecentLevel: serializer.fromJson<String>(json['factorRecentLevel']),
      factorFinancialValue:
          serializer.fromJson<double>(json['factorFinancialValue']),
      factorFinancialName:
          serializer.fromJson<String>(json['factorFinancialName']),
      factorFinancialLevel:
          serializer.fromJson<String>(json['factorFinancialLevel']),
      factorReturnValue: serializer.fromJson<double>(json['factorReturnValue']),
      factorReturnName: serializer.fromJson<String>(json['factorReturnName']),
      factorReturnLevel: serializer.fromJson<String>(json['factorReturnLevel']),
      factorManagementValue:
          serializer.fromJson<double>(json['factorManagementValue']),
      factorManagementName:
          serializer.fromJson<String>(json['factorManagementName']),
      factorManagementLevel:
          serializer.fromJson<String>(json['factorManagementLevel']),
      signTitle: serializer.fromJson<String>(json['signTitle']),
      signType: serializer.fromJson<String>(json['signType']),
      signName: serializer.fromJson<String>(json['signName']),
      signValue: serializer.fromJson<String>(json['signValue']),
      signDisplayTitle: serializer.fromJson<String>(json['signDisplayTitle']),
      signDisplayValue: serializer.fromJson<String?>(json['signDisplayValue']),
      signDisplayColumnHead:
          serializer.fromJson<String?>(json['signDisplayColumnHead']),
      signDisplayFooter:
          serializer.fromJson<String?>(json['signDisplayFooter']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'summary': serializer.toJson<String?>(summary),
      'currency': serializer.toJson<String>(currency),
      'currencySign': serializer.toJson<String>(currencySign),
      'priceCurrency': serializer.toJson<String>(priceCurrency),
      'status': serializer.toJson<String>(status),
      'latestPrice': serializer.toJson<double>(latestPrice),
      'priceDateTime': serializer.toJson<DateTime>(priceDateTime),
      'lossChanceLast': serializer.toJson<double>(lossChanceLast),
      'lossChanceUpdatedAt': serializer.toJson<DateTime>(lossChanceUpdatedAt),
      'marketRank': serializer.toJson<int>(marketRank),
      'marketMember': serializer.toJson<int>(marketMember),
      'ipoDate': serializer.toJson<DateTime?>(ipoDate),
      'companyUrl': serializer.toJson<String?>(companyUrl),
      'priceDiffId': serializer.toJson<String>(priceDiffId),
      'priceDiffValue': serializer.toJson<double>(priceDiffValue),
      'priceDiffType': serializer.toJson<String>(priceDiffType),
      'priceDiffPercent': serializer.toJson<double>(priceDiffPercent),
      'monthlyPriceId': serializer.toJson<String>(monthlyPriceId),
      'monthlyPriceValue': serializer.toJson<double>(monthlyPriceValue),
      'monthlyPriceYear': serializer.toJson<int>(monthlyPriceYear),
      'monthlyPriceMonth': serializer.toJson<int>(monthlyPriceMonth),
      'monthlyPriceTotal': serializer.toJson<int>(monthlyPriceTotal),
      'scoreId': serializer.toJson<String>(scoreId),
      'scoreValue': serializer.toJson<double>(scoreValue),
      'lineTotal': serializer.toJson<int>(lineTotal),
      'factorGrowthValue': serializer.toJson<double>(factorGrowthValue),
      'factorGrowthName': serializer.toJson<String>(factorGrowthName),
      'factorGrowthLevel': serializer.toJson<String>(factorGrowthLevel),
      'factorRecentValue': serializer.toJson<double>(factorRecentValue),
      'factorRecentName': serializer.toJson<String>(factorRecentName),
      'factorRecentLevel': serializer.toJson<String>(factorRecentLevel),
      'factorFinancialValue': serializer.toJson<double>(factorFinancialValue),
      'factorFinancialName': serializer.toJson<String>(factorFinancialName),
      'factorFinancialLevel': serializer.toJson<String>(factorFinancialLevel),
      'factorReturnValue': serializer.toJson<double>(factorReturnValue),
      'factorReturnName': serializer.toJson<String>(factorReturnName),
      'factorReturnLevel': serializer.toJson<String>(factorReturnLevel),
      'factorManagementValue': serializer.toJson<double>(factorManagementValue),
      'factorManagementName': serializer.toJson<String>(factorManagementName),
      'factorManagementLevel': serializer.toJson<String>(factorManagementLevel),
      'signTitle': serializer.toJson<String>(signTitle),
      'signType': serializer.toJson<String>(signType),
      'signName': serializer.toJson<String>(signName),
      'signValue': serializer.toJson<String>(signValue),
      'signDisplayTitle': serializer.toJson<String>(signDisplayTitle),
      'signDisplayValue': serializer.toJson<String?>(signDisplayValue),
      'signDisplayColumnHead':
          serializer.toJson<String?>(signDisplayColumnHead),
      'signDisplayFooter': serializer.toJson<String?>(signDisplayFooter),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  StockDetailEntity copyWith(
          {String? id,
          Value<String?> summary = const Value.absent(),
          String? currency,
          String? currencySign,
          String? priceCurrency,
          String? status,
          double? latestPrice,
          DateTime? priceDateTime,
          double? lossChanceLast,
          DateTime? lossChanceUpdatedAt,
          int? marketRank,
          int? marketMember,
          Value<DateTime?> ipoDate = const Value.absent(),
          Value<String?> companyUrl = const Value.absent(),
          String? priceDiffId,
          double? priceDiffValue,
          String? priceDiffType,
          double? priceDiffPercent,
          String? monthlyPriceId,
          double? monthlyPriceValue,
          int? monthlyPriceYear,
          int? monthlyPriceMonth,
          int? monthlyPriceTotal,
          String? scoreId,
          double? scoreValue,
          int? lineTotal,
          double? factorGrowthValue,
          String? factorGrowthName,
          String? factorGrowthLevel,
          double? factorRecentValue,
          String? factorRecentName,
          String? factorRecentLevel,
          double? factorFinancialValue,
          String? factorFinancialName,
          String? factorFinancialLevel,
          double? factorReturnValue,
          String? factorReturnName,
          String? factorReturnLevel,
          double? factorManagementValue,
          String? factorManagementName,
          String? factorManagementLevel,
          String? signTitle,
          String? signType,
          String? signName,
          String? signValue,
          String? signDisplayTitle,
          Value<String?> signDisplayValue = const Value.absent(),
          Value<String?> signDisplayColumnHead = const Value.absent(),
          Value<String?> signDisplayFooter = const Value.absent(),
          DateTime? updatedAt}) =>
      StockDetailEntity(
        id: id ?? this.id,
        summary: summary.present ? summary.value : this.summary,
        currency: currency ?? this.currency,
        currencySign: currencySign ?? this.currencySign,
        priceCurrency: priceCurrency ?? this.priceCurrency,
        status: status ?? this.status,
        latestPrice: latestPrice ?? this.latestPrice,
        priceDateTime: priceDateTime ?? this.priceDateTime,
        lossChanceLast: lossChanceLast ?? this.lossChanceLast,
        lossChanceUpdatedAt: lossChanceUpdatedAt ?? this.lossChanceUpdatedAt,
        marketRank: marketRank ?? this.marketRank,
        marketMember: marketMember ?? this.marketMember,
        ipoDate: ipoDate.present ? ipoDate.value : this.ipoDate,
        companyUrl: companyUrl.present ? companyUrl.value : this.companyUrl,
        priceDiffId: priceDiffId ?? this.priceDiffId,
        priceDiffValue: priceDiffValue ?? this.priceDiffValue,
        priceDiffType: priceDiffType ?? this.priceDiffType,
        priceDiffPercent: priceDiffPercent ?? this.priceDiffPercent,
        monthlyPriceId: monthlyPriceId ?? this.monthlyPriceId,
        monthlyPriceValue: monthlyPriceValue ?? this.monthlyPriceValue,
        monthlyPriceYear: monthlyPriceYear ?? this.monthlyPriceYear,
        monthlyPriceMonth: monthlyPriceMonth ?? this.monthlyPriceMonth,
        monthlyPriceTotal: monthlyPriceTotal ?? this.monthlyPriceTotal,
        scoreId: scoreId ?? this.scoreId,
        scoreValue: scoreValue ?? this.scoreValue,
        lineTotal: lineTotal ?? this.lineTotal,
        factorGrowthValue: factorGrowthValue ?? this.factorGrowthValue,
        factorGrowthName: factorGrowthName ?? this.factorGrowthName,
        factorGrowthLevel: factorGrowthLevel ?? this.factorGrowthLevel,
        factorRecentValue: factorRecentValue ?? this.factorRecentValue,
        factorRecentName: factorRecentName ?? this.factorRecentName,
        factorRecentLevel: factorRecentLevel ?? this.factorRecentLevel,
        factorFinancialValue: factorFinancialValue ?? this.factorFinancialValue,
        factorFinancialName: factorFinancialName ?? this.factorFinancialName,
        factorFinancialLevel: factorFinancialLevel ?? this.factorFinancialLevel,
        factorReturnValue: factorReturnValue ?? this.factorReturnValue,
        factorReturnName: factorReturnName ?? this.factorReturnName,
        factorReturnLevel: factorReturnLevel ?? this.factorReturnLevel,
        factorManagementValue:
            factorManagementValue ?? this.factorManagementValue,
        factorManagementName: factorManagementName ?? this.factorManagementName,
        factorManagementLevel:
            factorManagementLevel ?? this.factorManagementLevel,
        signTitle: signTitle ?? this.signTitle,
        signType: signType ?? this.signType,
        signName: signName ?? this.signName,
        signValue: signValue ?? this.signValue,
        signDisplayTitle: signDisplayTitle ?? this.signDisplayTitle,
        signDisplayValue: signDisplayValue.present
            ? signDisplayValue.value
            : this.signDisplayValue,
        signDisplayColumnHead: signDisplayColumnHead.present
            ? signDisplayColumnHead.value
            : this.signDisplayColumnHead,
        signDisplayFooter: signDisplayFooter.present
            ? signDisplayFooter.value
            : this.signDisplayFooter,
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
      lossChanceLast: data.lossChanceLast.present
          ? data.lossChanceLast.value
          : this.lossChanceLast,
      lossChanceUpdatedAt: data.lossChanceUpdatedAt.present
          ? data.lossChanceUpdatedAt.value
          : this.lossChanceUpdatedAt,
      marketRank:
          data.marketRank.present ? data.marketRank.value : this.marketRank,
      marketMember: data.marketMember.present
          ? data.marketMember.value
          : this.marketMember,
      ipoDate: data.ipoDate.present ? data.ipoDate.value : this.ipoDate,
      companyUrl:
          data.companyUrl.present ? data.companyUrl.value : this.companyUrl,
      priceDiffId:
          data.priceDiffId.present ? data.priceDiffId.value : this.priceDiffId,
      priceDiffValue: data.priceDiffValue.present
          ? data.priceDiffValue.value
          : this.priceDiffValue,
      priceDiffType: data.priceDiffType.present
          ? data.priceDiffType.value
          : this.priceDiffType,
      priceDiffPercent: data.priceDiffPercent.present
          ? data.priceDiffPercent.value
          : this.priceDiffPercent,
      monthlyPriceId: data.monthlyPriceId.present
          ? data.monthlyPriceId.value
          : this.monthlyPriceId,
      monthlyPriceValue: data.monthlyPriceValue.present
          ? data.monthlyPriceValue.value
          : this.monthlyPriceValue,
      monthlyPriceYear: data.monthlyPriceYear.present
          ? data.monthlyPriceYear.value
          : this.monthlyPriceYear,
      monthlyPriceMonth: data.monthlyPriceMonth.present
          ? data.monthlyPriceMonth.value
          : this.monthlyPriceMonth,
      monthlyPriceTotal: data.monthlyPriceTotal.present
          ? data.monthlyPriceTotal.value
          : this.monthlyPriceTotal,
      scoreId: data.scoreId.present ? data.scoreId.value : this.scoreId,
      scoreValue:
          data.scoreValue.present ? data.scoreValue.value : this.scoreValue,
      lineTotal: data.lineTotal.present ? data.lineTotal.value : this.lineTotal,
      factorGrowthValue: data.factorGrowthValue.present
          ? data.factorGrowthValue.value
          : this.factorGrowthValue,
      factorGrowthName: data.factorGrowthName.present
          ? data.factorGrowthName.value
          : this.factorGrowthName,
      factorGrowthLevel: data.factorGrowthLevel.present
          ? data.factorGrowthLevel.value
          : this.factorGrowthLevel,
      factorRecentValue: data.factorRecentValue.present
          ? data.factorRecentValue.value
          : this.factorRecentValue,
      factorRecentName: data.factorRecentName.present
          ? data.factorRecentName.value
          : this.factorRecentName,
      factorRecentLevel: data.factorRecentLevel.present
          ? data.factorRecentLevel.value
          : this.factorRecentLevel,
      factorFinancialValue: data.factorFinancialValue.present
          ? data.factorFinancialValue.value
          : this.factorFinancialValue,
      factorFinancialName: data.factorFinancialName.present
          ? data.factorFinancialName.value
          : this.factorFinancialName,
      factorFinancialLevel: data.factorFinancialLevel.present
          ? data.factorFinancialLevel.value
          : this.factorFinancialLevel,
      factorReturnValue: data.factorReturnValue.present
          ? data.factorReturnValue.value
          : this.factorReturnValue,
      factorReturnName: data.factorReturnName.present
          ? data.factorReturnName.value
          : this.factorReturnName,
      factorReturnLevel: data.factorReturnLevel.present
          ? data.factorReturnLevel.value
          : this.factorReturnLevel,
      factorManagementValue: data.factorManagementValue.present
          ? data.factorManagementValue.value
          : this.factorManagementValue,
      factorManagementName: data.factorManagementName.present
          ? data.factorManagementName.value
          : this.factorManagementName,
      factorManagementLevel: data.factorManagementLevel.present
          ? data.factorManagementLevel.value
          : this.factorManagementLevel,
      signTitle: data.signTitle.present ? data.signTitle.value : this.signTitle,
      signType: data.signType.present ? data.signType.value : this.signType,
      signName: data.signName.present ? data.signName.value : this.signName,
      signValue: data.signValue.present ? data.signValue.value : this.signValue,
      signDisplayTitle: data.signDisplayTitle.present
          ? data.signDisplayTitle.value
          : this.signDisplayTitle,
      signDisplayValue: data.signDisplayValue.present
          ? data.signDisplayValue.value
          : this.signDisplayValue,
      signDisplayColumnHead: data.signDisplayColumnHead.present
          ? data.signDisplayColumnHead.value
          : this.signDisplayColumnHead,
      signDisplayFooter: data.signDisplayFooter.present
          ? data.signDisplayFooter.value
          : this.signDisplayFooter,
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
          ..write('lossChanceLast: $lossChanceLast, ')
          ..write('lossChanceUpdatedAt: $lossChanceUpdatedAt, ')
          ..write('marketRank: $marketRank, ')
          ..write('marketMember: $marketMember, ')
          ..write('ipoDate: $ipoDate, ')
          ..write('companyUrl: $companyUrl, ')
          ..write('priceDiffId: $priceDiffId, ')
          ..write('priceDiffValue: $priceDiffValue, ')
          ..write('priceDiffType: $priceDiffType, ')
          ..write('priceDiffPercent: $priceDiffPercent, ')
          ..write('monthlyPriceId: $monthlyPriceId, ')
          ..write('monthlyPriceValue: $monthlyPriceValue, ')
          ..write('monthlyPriceYear: $monthlyPriceYear, ')
          ..write('monthlyPriceMonth: $monthlyPriceMonth, ')
          ..write('monthlyPriceTotal: $monthlyPriceTotal, ')
          ..write('scoreId: $scoreId, ')
          ..write('scoreValue: $scoreValue, ')
          ..write('lineTotal: $lineTotal, ')
          ..write('factorGrowthValue: $factorGrowthValue, ')
          ..write('factorGrowthName: $factorGrowthName, ')
          ..write('factorGrowthLevel: $factorGrowthLevel, ')
          ..write('factorRecentValue: $factorRecentValue, ')
          ..write('factorRecentName: $factorRecentName, ')
          ..write('factorRecentLevel: $factorRecentLevel, ')
          ..write('factorFinancialValue: $factorFinancialValue, ')
          ..write('factorFinancialName: $factorFinancialName, ')
          ..write('factorFinancialLevel: $factorFinancialLevel, ')
          ..write('factorReturnValue: $factorReturnValue, ')
          ..write('factorReturnName: $factorReturnName, ')
          ..write('factorReturnLevel: $factorReturnLevel, ')
          ..write('factorManagementValue: $factorManagementValue, ')
          ..write('factorManagementName: $factorManagementName, ')
          ..write('factorManagementLevel: $factorManagementLevel, ')
          ..write('signTitle: $signTitle, ')
          ..write('signType: $signType, ')
          ..write('signName: $signName, ')
          ..write('signValue: $signValue, ')
          ..write('signDisplayTitle: $signDisplayTitle, ')
          ..write('signDisplayValue: $signDisplayValue, ')
          ..write('signDisplayColumnHead: $signDisplayColumnHead, ')
          ..write('signDisplayFooter: $signDisplayFooter, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        summary,
        currency,
        currencySign,
        priceCurrency,
        status,
        latestPrice,
        priceDateTime,
        lossChanceLast,
        lossChanceUpdatedAt,
        marketRank,
        marketMember,
        ipoDate,
        companyUrl,
        priceDiffId,
        priceDiffValue,
        priceDiffType,
        priceDiffPercent,
        monthlyPriceId,
        monthlyPriceValue,
        monthlyPriceYear,
        monthlyPriceMonth,
        monthlyPriceTotal,
        scoreId,
        scoreValue,
        lineTotal,
        factorGrowthValue,
        factorGrowthName,
        factorGrowthLevel,
        factorRecentValue,
        factorRecentName,
        factorRecentLevel,
        factorFinancialValue,
        factorFinancialName,
        factorFinancialLevel,
        factorReturnValue,
        factorReturnName,
        factorReturnLevel,
        factorManagementValue,
        factorManagementName,
        factorManagementLevel,
        signTitle,
        signType,
        signName,
        signValue,
        signDisplayTitle,
        signDisplayValue,
        signDisplayColumnHead,
        signDisplayFooter,
        updatedAt
      ]);
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
          other.lossChanceLast == this.lossChanceLast &&
          other.lossChanceUpdatedAt == this.lossChanceUpdatedAt &&
          other.marketRank == this.marketRank &&
          other.marketMember == this.marketMember &&
          other.ipoDate == this.ipoDate &&
          other.companyUrl == this.companyUrl &&
          other.priceDiffId == this.priceDiffId &&
          other.priceDiffValue == this.priceDiffValue &&
          other.priceDiffType == this.priceDiffType &&
          other.priceDiffPercent == this.priceDiffPercent &&
          other.monthlyPriceId == this.monthlyPriceId &&
          other.monthlyPriceValue == this.monthlyPriceValue &&
          other.monthlyPriceYear == this.monthlyPriceYear &&
          other.monthlyPriceMonth == this.monthlyPriceMonth &&
          other.monthlyPriceTotal == this.monthlyPriceTotal &&
          other.scoreId == this.scoreId &&
          other.scoreValue == this.scoreValue &&
          other.lineTotal == this.lineTotal &&
          other.factorGrowthValue == this.factorGrowthValue &&
          other.factorGrowthName == this.factorGrowthName &&
          other.factorGrowthLevel == this.factorGrowthLevel &&
          other.factorRecentValue == this.factorRecentValue &&
          other.factorRecentName == this.factorRecentName &&
          other.factorRecentLevel == this.factorRecentLevel &&
          other.factorFinancialValue == this.factorFinancialValue &&
          other.factorFinancialName == this.factorFinancialName &&
          other.factorFinancialLevel == this.factorFinancialLevel &&
          other.factorReturnValue == this.factorReturnValue &&
          other.factorReturnName == this.factorReturnName &&
          other.factorReturnLevel == this.factorReturnLevel &&
          other.factorManagementValue == this.factorManagementValue &&
          other.factorManagementName == this.factorManagementName &&
          other.factorManagementLevel == this.factorManagementLevel &&
          other.signTitle == this.signTitle &&
          other.signType == this.signType &&
          other.signName == this.signName &&
          other.signValue == this.signValue &&
          other.signDisplayTitle == this.signDisplayTitle &&
          other.signDisplayValue == this.signDisplayValue &&
          other.signDisplayColumnHead == this.signDisplayColumnHead &&
          other.signDisplayFooter == this.signDisplayFooter &&
          other.updatedAt == this.updatedAt);
}

class StockDetailsCompanion extends UpdateCompanion<StockDetailEntity> {
  final Value<String> id;
  final Value<String?> summary;
  final Value<String> currency;
  final Value<String> currencySign;
  final Value<String> priceCurrency;
  final Value<String> status;
  final Value<double> latestPrice;
  final Value<DateTime> priceDateTime;
  final Value<double> lossChanceLast;
  final Value<DateTime> lossChanceUpdatedAt;
  final Value<int> marketRank;
  final Value<int> marketMember;
  final Value<DateTime?> ipoDate;
  final Value<String?> companyUrl;
  final Value<String> priceDiffId;
  final Value<double> priceDiffValue;
  final Value<String> priceDiffType;
  final Value<double> priceDiffPercent;
  final Value<String> monthlyPriceId;
  final Value<double> monthlyPriceValue;
  final Value<int> monthlyPriceYear;
  final Value<int> monthlyPriceMonth;
  final Value<int> monthlyPriceTotal;
  final Value<String> scoreId;
  final Value<double> scoreValue;
  final Value<int> lineTotal;
  final Value<double> factorGrowthValue;
  final Value<String> factorGrowthName;
  final Value<String> factorGrowthLevel;
  final Value<double> factorRecentValue;
  final Value<String> factorRecentName;
  final Value<String> factorRecentLevel;
  final Value<double> factorFinancialValue;
  final Value<String> factorFinancialName;
  final Value<String> factorFinancialLevel;
  final Value<double> factorReturnValue;
  final Value<String> factorReturnName;
  final Value<String> factorReturnLevel;
  final Value<double> factorManagementValue;
  final Value<String> factorManagementName;
  final Value<String> factorManagementLevel;
  final Value<String> signTitle;
  final Value<String> signType;
  final Value<String> signName;
  final Value<String> signValue;
  final Value<String> signDisplayTitle;
  final Value<String?> signDisplayValue;
  final Value<String?> signDisplayColumnHead;
  final Value<String?> signDisplayFooter;
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
    this.lossChanceLast = const Value.absent(),
    this.lossChanceUpdatedAt = const Value.absent(),
    this.marketRank = const Value.absent(),
    this.marketMember = const Value.absent(),
    this.ipoDate = const Value.absent(),
    this.companyUrl = const Value.absent(),
    this.priceDiffId = const Value.absent(),
    this.priceDiffValue = const Value.absent(),
    this.priceDiffType = const Value.absent(),
    this.priceDiffPercent = const Value.absent(),
    this.monthlyPriceId = const Value.absent(),
    this.monthlyPriceValue = const Value.absent(),
    this.monthlyPriceYear = const Value.absent(),
    this.monthlyPriceMonth = const Value.absent(),
    this.monthlyPriceTotal = const Value.absent(),
    this.scoreId = const Value.absent(),
    this.scoreValue = const Value.absent(),
    this.lineTotal = const Value.absent(),
    this.factorGrowthValue = const Value.absent(),
    this.factorGrowthName = const Value.absent(),
    this.factorGrowthLevel = const Value.absent(),
    this.factorRecentValue = const Value.absent(),
    this.factorRecentName = const Value.absent(),
    this.factorRecentLevel = const Value.absent(),
    this.factorFinancialValue = const Value.absent(),
    this.factorFinancialName = const Value.absent(),
    this.factorFinancialLevel = const Value.absent(),
    this.factorReturnValue = const Value.absent(),
    this.factorReturnName = const Value.absent(),
    this.factorReturnLevel = const Value.absent(),
    this.factorManagementValue = const Value.absent(),
    this.factorManagementName = const Value.absent(),
    this.factorManagementLevel = const Value.absent(),
    this.signTitle = const Value.absent(),
    this.signType = const Value.absent(),
    this.signName = const Value.absent(),
    this.signValue = const Value.absent(),
    this.signDisplayTitle = const Value.absent(),
    this.signDisplayValue = const Value.absent(),
    this.signDisplayColumnHead = const Value.absent(),
    this.signDisplayFooter = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  StockDetailsCompanion.insert({
    required String id,
    this.summary = const Value.absent(),
    required String currency,
    required String currencySign,
    required String priceCurrency,
    required String status,
    required double latestPrice,
    required DateTime priceDateTime,
    required double lossChanceLast,
    required DateTime lossChanceUpdatedAt,
    required int marketRank,
    required int marketMember,
    this.ipoDate = const Value.absent(),
    this.companyUrl = const Value.absent(),
    required String priceDiffId,
    required double priceDiffValue,
    required String priceDiffType,
    required double priceDiffPercent,
    required String monthlyPriceId,
    required double monthlyPriceValue,
    required int monthlyPriceYear,
    required int monthlyPriceMonth,
    required int monthlyPriceTotal,
    required String scoreId,
    required double scoreValue,
    required int lineTotal,
    required double factorGrowthValue,
    required String factorGrowthName,
    required String factorGrowthLevel,
    required double factorRecentValue,
    required String factorRecentName,
    required String factorRecentLevel,
    required double factorFinancialValue,
    required String factorFinancialName,
    required String factorFinancialLevel,
    required double factorReturnValue,
    required String factorReturnName,
    required String factorReturnLevel,
    required double factorManagementValue,
    required String factorManagementName,
    required String factorManagementLevel,
    required String signTitle,
    required String signType,
    required String signName,
    required String signValue,
    required String signDisplayTitle,
    this.signDisplayValue = const Value.absent(),
    this.signDisplayColumnHead = const Value.absent(),
    this.signDisplayFooter = const Value.absent(),
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        currency = Value(currency),
        currencySign = Value(currencySign),
        priceCurrency = Value(priceCurrency),
        status = Value(status),
        latestPrice = Value(latestPrice),
        priceDateTime = Value(priceDateTime),
        lossChanceLast = Value(lossChanceLast),
        lossChanceUpdatedAt = Value(lossChanceUpdatedAt),
        marketRank = Value(marketRank),
        marketMember = Value(marketMember),
        priceDiffId = Value(priceDiffId),
        priceDiffValue = Value(priceDiffValue),
        priceDiffType = Value(priceDiffType),
        priceDiffPercent = Value(priceDiffPercent),
        monthlyPriceId = Value(monthlyPriceId),
        monthlyPriceValue = Value(monthlyPriceValue),
        monthlyPriceYear = Value(monthlyPriceYear),
        monthlyPriceMonth = Value(monthlyPriceMonth),
        monthlyPriceTotal = Value(monthlyPriceTotal),
        scoreId = Value(scoreId),
        scoreValue = Value(scoreValue),
        lineTotal = Value(lineTotal),
        factorGrowthValue = Value(factorGrowthValue),
        factorGrowthName = Value(factorGrowthName),
        factorGrowthLevel = Value(factorGrowthLevel),
        factorRecentValue = Value(factorRecentValue),
        factorRecentName = Value(factorRecentName),
        factorRecentLevel = Value(factorRecentLevel),
        factorFinancialValue = Value(factorFinancialValue),
        factorFinancialName = Value(factorFinancialName),
        factorFinancialLevel = Value(factorFinancialLevel),
        factorReturnValue = Value(factorReturnValue),
        factorReturnName = Value(factorReturnName),
        factorReturnLevel = Value(factorReturnLevel),
        factorManagementValue = Value(factorManagementValue),
        factorManagementName = Value(factorManagementName),
        factorManagementLevel = Value(factorManagementLevel),
        signTitle = Value(signTitle),
        signType = Value(signType),
        signName = Value(signName),
        signValue = Value(signValue),
        signDisplayTitle = Value(signDisplayTitle),
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
    Expression<double>? lossChanceLast,
    Expression<DateTime>? lossChanceUpdatedAt,
    Expression<int>? marketRank,
    Expression<int>? marketMember,
    Expression<DateTime>? ipoDate,
    Expression<String>? companyUrl,
    Expression<String>? priceDiffId,
    Expression<double>? priceDiffValue,
    Expression<String>? priceDiffType,
    Expression<double>? priceDiffPercent,
    Expression<String>? monthlyPriceId,
    Expression<double>? monthlyPriceValue,
    Expression<int>? monthlyPriceYear,
    Expression<int>? monthlyPriceMonth,
    Expression<int>? monthlyPriceTotal,
    Expression<String>? scoreId,
    Expression<double>? scoreValue,
    Expression<int>? lineTotal,
    Expression<double>? factorGrowthValue,
    Expression<String>? factorGrowthName,
    Expression<String>? factorGrowthLevel,
    Expression<double>? factorRecentValue,
    Expression<String>? factorRecentName,
    Expression<String>? factorRecentLevel,
    Expression<double>? factorFinancialValue,
    Expression<String>? factorFinancialName,
    Expression<String>? factorFinancialLevel,
    Expression<double>? factorReturnValue,
    Expression<String>? factorReturnName,
    Expression<String>? factorReturnLevel,
    Expression<double>? factorManagementValue,
    Expression<String>? factorManagementName,
    Expression<String>? factorManagementLevel,
    Expression<String>? signTitle,
    Expression<String>? signType,
    Expression<String>? signName,
    Expression<String>? signValue,
    Expression<String>? signDisplayTitle,
    Expression<String>? signDisplayValue,
    Expression<String>? signDisplayColumnHead,
    Expression<String>? signDisplayFooter,
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
      if (lossChanceLast != null) 'loss_chance_last': lossChanceLast,
      if (lossChanceUpdatedAt != null)
        'loss_chance_updated_at': lossChanceUpdatedAt,
      if (marketRank != null) 'market_rank': marketRank,
      if (marketMember != null) 'market_member': marketMember,
      if (ipoDate != null) 'ipo_date': ipoDate,
      if (companyUrl != null) 'company_url': companyUrl,
      if (priceDiffId != null) 'price_diff_id': priceDiffId,
      if (priceDiffValue != null) 'price_diff_value': priceDiffValue,
      if (priceDiffType != null) 'price_diff_type': priceDiffType,
      if (priceDiffPercent != null) 'price_diff_percent': priceDiffPercent,
      if (monthlyPriceId != null) 'monthly_price_id': monthlyPriceId,
      if (monthlyPriceValue != null) 'monthly_price_value': monthlyPriceValue,
      if (monthlyPriceYear != null) 'monthly_price_year': monthlyPriceYear,
      if (monthlyPriceMonth != null) 'monthly_price_month': monthlyPriceMonth,
      if (monthlyPriceTotal != null) 'monthly_price_total': monthlyPriceTotal,
      if (scoreId != null) 'score_id': scoreId,
      if (scoreValue != null) 'score_value': scoreValue,
      if (lineTotal != null) 'line_total': lineTotal,
      if (factorGrowthValue != null) 'factor_growth_value': factorGrowthValue,
      if (factorGrowthName != null) 'factor_growth_name': factorGrowthName,
      if (factorGrowthLevel != null) 'factor_growth_level': factorGrowthLevel,
      if (factorRecentValue != null) 'factor_recent_value': factorRecentValue,
      if (factorRecentName != null) 'factor_recent_name': factorRecentName,
      if (factorRecentLevel != null) 'factor_recent_level': factorRecentLevel,
      if (factorFinancialValue != null)
        'factor_financial_value': factorFinancialValue,
      if (factorFinancialName != null)
        'factor_financial_name': factorFinancialName,
      if (factorFinancialLevel != null)
        'factor_financial_level': factorFinancialLevel,
      if (factorReturnValue != null) 'factor_return_value': factorReturnValue,
      if (factorReturnName != null) 'factor_return_name': factorReturnName,
      if (factorReturnLevel != null) 'factor_return_level': factorReturnLevel,
      if (factorManagementValue != null)
        'factor_management_value': factorManagementValue,
      if (factorManagementName != null)
        'factor_management_name': factorManagementName,
      if (factorManagementLevel != null)
        'factor_management_level': factorManagementLevel,
      if (signTitle != null) 'sign_title': signTitle,
      if (signType != null) 'sign_type': signType,
      if (signName != null) 'sign_name': signName,
      if (signValue != null) 'sign_value': signValue,
      if (signDisplayTitle != null) 'sign_display_title': signDisplayTitle,
      if (signDisplayValue != null) 'sign_display_value': signDisplayValue,
      if (signDisplayColumnHead != null)
        'sign_display_column_head': signDisplayColumnHead,
      if (signDisplayFooter != null) 'sign_display_footer': signDisplayFooter,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  StockDetailsCompanion copyWith(
      {Value<String>? id,
      Value<String?>? summary,
      Value<String>? currency,
      Value<String>? currencySign,
      Value<String>? priceCurrency,
      Value<String>? status,
      Value<double>? latestPrice,
      Value<DateTime>? priceDateTime,
      Value<double>? lossChanceLast,
      Value<DateTime>? lossChanceUpdatedAt,
      Value<int>? marketRank,
      Value<int>? marketMember,
      Value<DateTime?>? ipoDate,
      Value<String?>? companyUrl,
      Value<String>? priceDiffId,
      Value<double>? priceDiffValue,
      Value<String>? priceDiffType,
      Value<double>? priceDiffPercent,
      Value<String>? monthlyPriceId,
      Value<double>? monthlyPriceValue,
      Value<int>? monthlyPriceYear,
      Value<int>? monthlyPriceMonth,
      Value<int>? monthlyPriceTotal,
      Value<String>? scoreId,
      Value<double>? scoreValue,
      Value<int>? lineTotal,
      Value<double>? factorGrowthValue,
      Value<String>? factorGrowthName,
      Value<String>? factorGrowthLevel,
      Value<double>? factorRecentValue,
      Value<String>? factorRecentName,
      Value<String>? factorRecentLevel,
      Value<double>? factorFinancialValue,
      Value<String>? factorFinancialName,
      Value<String>? factorFinancialLevel,
      Value<double>? factorReturnValue,
      Value<String>? factorReturnName,
      Value<String>? factorReturnLevel,
      Value<double>? factorManagementValue,
      Value<String>? factorManagementName,
      Value<String>? factorManagementLevel,
      Value<String>? signTitle,
      Value<String>? signType,
      Value<String>? signName,
      Value<String>? signValue,
      Value<String>? signDisplayTitle,
      Value<String?>? signDisplayValue,
      Value<String?>? signDisplayColumnHead,
      Value<String?>? signDisplayFooter,
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
      lossChanceLast: lossChanceLast ?? this.lossChanceLast,
      lossChanceUpdatedAt: lossChanceUpdatedAt ?? this.lossChanceUpdatedAt,
      marketRank: marketRank ?? this.marketRank,
      marketMember: marketMember ?? this.marketMember,
      ipoDate: ipoDate ?? this.ipoDate,
      companyUrl: companyUrl ?? this.companyUrl,
      priceDiffId: priceDiffId ?? this.priceDiffId,
      priceDiffValue: priceDiffValue ?? this.priceDiffValue,
      priceDiffType: priceDiffType ?? this.priceDiffType,
      priceDiffPercent: priceDiffPercent ?? this.priceDiffPercent,
      monthlyPriceId: monthlyPriceId ?? this.monthlyPriceId,
      monthlyPriceValue: monthlyPriceValue ?? this.monthlyPriceValue,
      monthlyPriceYear: monthlyPriceYear ?? this.monthlyPriceYear,
      monthlyPriceMonth: monthlyPriceMonth ?? this.monthlyPriceMonth,
      monthlyPriceTotal: monthlyPriceTotal ?? this.monthlyPriceTotal,
      scoreId: scoreId ?? this.scoreId,
      scoreValue: scoreValue ?? this.scoreValue,
      lineTotal: lineTotal ?? this.lineTotal,
      factorGrowthValue: factorGrowthValue ?? this.factorGrowthValue,
      factorGrowthName: factorGrowthName ?? this.factorGrowthName,
      factorGrowthLevel: factorGrowthLevel ?? this.factorGrowthLevel,
      factorRecentValue: factorRecentValue ?? this.factorRecentValue,
      factorRecentName: factorRecentName ?? this.factorRecentName,
      factorRecentLevel: factorRecentLevel ?? this.factorRecentLevel,
      factorFinancialValue: factorFinancialValue ?? this.factorFinancialValue,
      factorFinancialName: factorFinancialName ?? this.factorFinancialName,
      factorFinancialLevel: factorFinancialLevel ?? this.factorFinancialLevel,
      factorReturnValue: factorReturnValue ?? this.factorReturnValue,
      factorReturnName: factorReturnName ?? this.factorReturnName,
      factorReturnLevel: factorReturnLevel ?? this.factorReturnLevel,
      factorManagementValue:
          factorManagementValue ?? this.factorManagementValue,
      factorManagementName: factorManagementName ?? this.factorManagementName,
      factorManagementLevel:
          factorManagementLevel ?? this.factorManagementLevel,
      signTitle: signTitle ?? this.signTitle,
      signType: signType ?? this.signType,
      signName: signName ?? this.signName,
      signValue: signValue ?? this.signValue,
      signDisplayTitle: signDisplayTitle ?? this.signDisplayTitle,
      signDisplayValue: signDisplayValue ?? this.signDisplayValue,
      signDisplayColumnHead:
          signDisplayColumnHead ?? this.signDisplayColumnHead,
      signDisplayFooter: signDisplayFooter ?? this.signDisplayFooter,
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
    if (lossChanceLast.present) {
      map['loss_chance_last'] = Variable<double>(lossChanceLast.value);
    }
    if (lossChanceUpdatedAt.present) {
      map['loss_chance_updated_at'] =
          Variable<DateTime>(lossChanceUpdatedAt.value);
    }
    if (marketRank.present) {
      map['market_rank'] = Variable<int>(marketRank.value);
    }
    if (marketMember.present) {
      map['market_member'] = Variable<int>(marketMember.value);
    }
    if (ipoDate.present) {
      map['ipo_date'] = Variable<DateTime>(ipoDate.value);
    }
    if (companyUrl.present) {
      map['company_url'] = Variable<String>(companyUrl.value);
    }
    if (priceDiffId.present) {
      map['price_diff_id'] = Variable<String>(priceDiffId.value);
    }
    if (priceDiffValue.present) {
      map['price_diff_value'] = Variable<double>(priceDiffValue.value);
    }
    if (priceDiffType.present) {
      map['price_diff_type'] = Variable<String>(priceDiffType.value);
    }
    if (priceDiffPercent.present) {
      map['price_diff_percent'] = Variable<double>(priceDiffPercent.value);
    }
    if (monthlyPriceId.present) {
      map['monthly_price_id'] = Variable<String>(monthlyPriceId.value);
    }
    if (monthlyPriceValue.present) {
      map['monthly_price_value'] = Variable<double>(monthlyPriceValue.value);
    }
    if (monthlyPriceYear.present) {
      map['monthly_price_year'] = Variable<int>(monthlyPriceYear.value);
    }
    if (monthlyPriceMonth.present) {
      map['monthly_price_month'] = Variable<int>(monthlyPriceMonth.value);
    }
    if (monthlyPriceTotal.present) {
      map['monthly_price_total'] = Variable<int>(monthlyPriceTotal.value);
    }
    if (scoreId.present) {
      map['score_id'] = Variable<String>(scoreId.value);
    }
    if (scoreValue.present) {
      map['score_value'] = Variable<double>(scoreValue.value);
    }
    if (lineTotal.present) {
      map['line_total'] = Variable<int>(lineTotal.value);
    }
    if (factorGrowthValue.present) {
      map['factor_growth_value'] = Variable<double>(factorGrowthValue.value);
    }
    if (factorGrowthName.present) {
      map['factor_growth_name'] = Variable<String>(factorGrowthName.value);
    }
    if (factorGrowthLevel.present) {
      map['factor_growth_level'] = Variable<String>(factorGrowthLevel.value);
    }
    if (factorRecentValue.present) {
      map['factor_recent_value'] = Variable<double>(factorRecentValue.value);
    }
    if (factorRecentName.present) {
      map['factor_recent_name'] = Variable<String>(factorRecentName.value);
    }
    if (factorRecentLevel.present) {
      map['factor_recent_level'] = Variable<String>(factorRecentLevel.value);
    }
    if (factorFinancialValue.present) {
      map['factor_financial_value'] =
          Variable<double>(factorFinancialValue.value);
    }
    if (factorFinancialName.present) {
      map['factor_financial_name'] =
          Variable<String>(factorFinancialName.value);
    }
    if (factorFinancialLevel.present) {
      map['factor_financial_level'] =
          Variable<String>(factorFinancialLevel.value);
    }
    if (factorReturnValue.present) {
      map['factor_return_value'] = Variable<double>(factorReturnValue.value);
    }
    if (factorReturnName.present) {
      map['factor_return_name'] = Variable<String>(factorReturnName.value);
    }
    if (factorReturnLevel.present) {
      map['factor_return_level'] = Variable<String>(factorReturnLevel.value);
    }
    if (factorManagementValue.present) {
      map['factor_management_value'] =
          Variable<double>(factorManagementValue.value);
    }
    if (factorManagementName.present) {
      map['factor_management_name'] =
          Variable<String>(factorManagementName.value);
    }
    if (factorManagementLevel.present) {
      map['factor_management_level'] =
          Variable<String>(factorManagementLevel.value);
    }
    if (signTitle.present) {
      map['sign_title'] = Variable<String>(signTitle.value);
    }
    if (signType.present) {
      map['sign_type'] = Variable<String>(signType.value);
    }
    if (signName.present) {
      map['sign_name'] = Variable<String>(signName.value);
    }
    if (signValue.present) {
      map['sign_value'] = Variable<String>(signValue.value);
    }
    if (signDisplayTitle.present) {
      map['sign_display_title'] = Variable<String>(signDisplayTitle.value);
    }
    if (signDisplayValue.present) {
      map['sign_display_value'] = Variable<String>(signDisplayValue.value);
    }
    if (signDisplayColumnHead.present) {
      map['sign_display_column_head'] =
          Variable<String>(signDisplayColumnHead.value);
    }
    if (signDisplayFooter.present) {
      map['sign_display_footer'] = Variable<String>(signDisplayFooter.value);
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
          ..write('lossChanceLast: $lossChanceLast, ')
          ..write('lossChanceUpdatedAt: $lossChanceUpdatedAt, ')
          ..write('marketRank: $marketRank, ')
          ..write('marketMember: $marketMember, ')
          ..write('ipoDate: $ipoDate, ')
          ..write('companyUrl: $companyUrl, ')
          ..write('priceDiffId: $priceDiffId, ')
          ..write('priceDiffValue: $priceDiffValue, ')
          ..write('priceDiffType: $priceDiffType, ')
          ..write('priceDiffPercent: $priceDiffPercent, ')
          ..write('monthlyPriceId: $monthlyPriceId, ')
          ..write('monthlyPriceValue: $monthlyPriceValue, ')
          ..write('monthlyPriceYear: $monthlyPriceYear, ')
          ..write('monthlyPriceMonth: $monthlyPriceMonth, ')
          ..write('monthlyPriceTotal: $monthlyPriceTotal, ')
          ..write('scoreId: $scoreId, ')
          ..write('scoreValue: $scoreValue, ')
          ..write('lineTotal: $lineTotal, ')
          ..write('factorGrowthValue: $factorGrowthValue, ')
          ..write('factorGrowthName: $factorGrowthName, ')
          ..write('factorGrowthLevel: $factorGrowthLevel, ')
          ..write('factorRecentValue: $factorRecentValue, ')
          ..write('factorRecentName: $factorRecentName, ')
          ..write('factorRecentLevel: $factorRecentLevel, ')
          ..write('factorFinancialValue: $factorFinancialValue, ')
          ..write('factorFinancialName: $factorFinancialName, ')
          ..write('factorFinancialLevel: $factorFinancialLevel, ')
          ..write('factorReturnValue: $factorReturnValue, ')
          ..write('factorReturnName: $factorReturnName, ')
          ..write('factorReturnLevel: $factorReturnLevel, ')
          ..write('factorManagementValue: $factorManagementValue, ')
          ..write('factorManagementName: $factorManagementName, ')
          ..write('factorManagementLevel: $factorManagementLevel, ')
          ..write('signTitle: $signTitle, ')
          ..write('signType: $signType, ')
          ..write('signName: $signName, ')
          ..write('signValue: $signValue, ')
          ..write('signDisplayTitle: $signDisplayTitle, ')
          ..write('signDisplayValue: $signDisplayValue, ')
          ..write('signDisplayColumnHead: $signDisplayColumnHead, ')
          ..write('signDisplayFooter: $signDisplayFooter, ')
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

class $StockHistoricalDataTable extends StockHistoricalData
    with TableInfo<$StockHistoricalDataTable, StockHistoricalDataEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StockHistoricalDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _stockIdMeta =
      const VerificationMeta('stockId');
  @override
  late final GeneratedColumn<String> stockId = GeneratedColumn<String>(
      'stock_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES stocks (id)'));
  static const VerificationMeta _dataTypeMeta =
      const VerificationMeta('dataType');
  @override
  late final GeneratedColumn<String> dataType = GeneratedColumn<String>(
      'data_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<String> itemId = GeneratedColumn<String>(
      'item_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _percentMeta =
      const VerificationMeta('percent');
  @override
  late final GeneratedColumn<double> percent = GeneratedColumn<double>(
      'percent', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
      'year', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _monthMeta = const VerificationMeta('month');
  @override
  late final GeneratedColumn<int> month = GeneratedColumn<int>(
      'month', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _quarterMeta =
      const VerificationMeta('quarter');
  @override
  late final GeneratedColumn<int> quarter = GeneratedColumn<int>(
      'quarter', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
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
        dataType,
        itemId,
        value,
        percent,
        type,
        year,
        month,
        quarter,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stock_historical_data';
  @override
  VerificationContext validateIntegrity(
      Insertable<StockHistoricalDataEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('stock_id')) {
      context.handle(_stockIdMeta,
          stockId.isAcceptableOrUnknown(data['stock_id']!, _stockIdMeta));
    } else if (isInserting) {
      context.missing(_stockIdMeta);
    }
    if (data.containsKey('data_type')) {
      context.handle(_dataTypeMeta,
          dataType.isAcceptableOrUnknown(data['data_type']!, _dataTypeMeta));
    } else if (isInserting) {
      context.missing(_dataTypeMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('percent')) {
      context.handle(_percentMeta,
          percent.isAcceptableOrUnknown(data['percent']!, _percentMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('year')) {
      context.handle(
          _yearMeta, year.isAcceptableOrUnknown(data['year']!, _yearMeta));
    }
    if (data.containsKey('month')) {
      context.handle(
          _monthMeta, month.isAcceptableOrUnknown(data['month']!, _monthMeta));
    }
    if (data.containsKey('quarter')) {
      context.handle(_quarterMeta,
          quarter.isAcceptableOrUnknown(data['quarter']!, _quarterMeta));
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
  StockHistoricalDataEntity map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StockHistoricalDataEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      stockId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}stock_id'])!,
      dataType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}data_type'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_id'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value'])!,
      percent: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}percent']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
      year: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}year']),
      month: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}month']),
      quarter: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quarter']),
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $StockHistoricalDataTable createAlias(String alias) {
    return $StockHistoricalDataTable(attachedDatabase, alias);
  }
}

class StockHistoricalDataEntity extends DataClass
    implements Insertable<StockHistoricalDataEntity> {
  final int id;
  final String stockId;
  final String dataType;
  final String itemId;
  final double value;
  final double? percent;
  final String? type;
  final int? year;
  final int? month;
  final int? quarter;
  final DateTime updatedAt;
  const StockHistoricalDataEntity(
      {required this.id,
      required this.stockId,
      required this.dataType,
      required this.itemId,
      required this.value,
      this.percent,
      this.type,
      this.year,
      this.month,
      this.quarter,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['stock_id'] = Variable<String>(stockId);
    map['data_type'] = Variable<String>(dataType);
    map['item_id'] = Variable<String>(itemId);
    map['value'] = Variable<double>(value);
    if (!nullToAbsent || percent != null) {
      map['percent'] = Variable<double>(percent);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || year != null) {
      map['year'] = Variable<int>(year);
    }
    if (!nullToAbsent || month != null) {
      map['month'] = Variable<int>(month);
    }
    if (!nullToAbsent || quarter != null) {
      map['quarter'] = Variable<int>(quarter);
    }
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  StockHistoricalDataCompanion toCompanion(bool nullToAbsent) {
    return StockHistoricalDataCompanion(
      id: Value(id),
      stockId: Value(stockId),
      dataType: Value(dataType),
      itemId: Value(itemId),
      value: Value(value),
      percent: percent == null && nullToAbsent
          ? const Value.absent()
          : Value(percent),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      year: year == null && nullToAbsent ? const Value.absent() : Value(year),
      month:
          month == null && nullToAbsent ? const Value.absent() : Value(month),
      quarter: quarter == null && nullToAbsent
          ? const Value.absent()
          : Value(quarter),
      updatedAt: Value(updatedAt),
    );
  }

  factory StockHistoricalDataEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StockHistoricalDataEntity(
      id: serializer.fromJson<int>(json['id']),
      stockId: serializer.fromJson<String>(json['stockId']),
      dataType: serializer.fromJson<String>(json['dataType']),
      itemId: serializer.fromJson<String>(json['itemId']),
      value: serializer.fromJson<double>(json['value']),
      percent: serializer.fromJson<double?>(json['percent']),
      type: serializer.fromJson<String?>(json['type']),
      year: serializer.fromJson<int?>(json['year']),
      month: serializer.fromJson<int?>(json['month']),
      quarter: serializer.fromJson<int?>(json['quarter']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'stockId': serializer.toJson<String>(stockId),
      'dataType': serializer.toJson<String>(dataType),
      'itemId': serializer.toJson<String>(itemId),
      'value': serializer.toJson<double>(value),
      'percent': serializer.toJson<double?>(percent),
      'type': serializer.toJson<String?>(type),
      'year': serializer.toJson<int?>(year),
      'month': serializer.toJson<int?>(month),
      'quarter': serializer.toJson<int?>(quarter),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  StockHistoricalDataEntity copyWith(
          {int? id,
          String? stockId,
          String? dataType,
          String? itemId,
          double? value,
          Value<double?> percent = const Value.absent(),
          Value<String?> type = const Value.absent(),
          Value<int?> year = const Value.absent(),
          Value<int?> month = const Value.absent(),
          Value<int?> quarter = const Value.absent(),
          DateTime? updatedAt}) =>
      StockHistoricalDataEntity(
        id: id ?? this.id,
        stockId: stockId ?? this.stockId,
        dataType: dataType ?? this.dataType,
        itemId: itemId ?? this.itemId,
        value: value ?? this.value,
        percent: percent.present ? percent.value : this.percent,
        type: type.present ? type.value : this.type,
        year: year.present ? year.value : this.year,
        month: month.present ? month.value : this.month,
        quarter: quarter.present ? quarter.value : this.quarter,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  StockHistoricalDataEntity copyWithCompanion(
      StockHistoricalDataCompanion data) {
    return StockHistoricalDataEntity(
      id: data.id.present ? data.id.value : this.id,
      stockId: data.stockId.present ? data.stockId.value : this.stockId,
      dataType: data.dataType.present ? data.dataType.value : this.dataType,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      value: data.value.present ? data.value.value : this.value,
      percent: data.percent.present ? data.percent.value : this.percent,
      type: data.type.present ? data.type.value : this.type,
      year: data.year.present ? data.year.value : this.year,
      month: data.month.present ? data.month.value : this.month,
      quarter: data.quarter.present ? data.quarter.value : this.quarter,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StockHistoricalDataEntity(')
          ..write('id: $id, ')
          ..write('stockId: $stockId, ')
          ..write('dataType: $dataType, ')
          ..write('itemId: $itemId, ')
          ..write('value: $value, ')
          ..write('percent: $percent, ')
          ..write('type: $type, ')
          ..write('year: $year, ')
          ..write('month: $month, ')
          ..write('quarter: $quarter, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, stockId, dataType, itemId, value, percent,
      type, year, month, quarter, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StockHistoricalDataEntity &&
          other.id == this.id &&
          other.stockId == this.stockId &&
          other.dataType == this.dataType &&
          other.itemId == this.itemId &&
          other.value == this.value &&
          other.percent == this.percent &&
          other.type == this.type &&
          other.year == this.year &&
          other.month == this.month &&
          other.quarter == this.quarter &&
          other.updatedAt == this.updatedAt);
}

class StockHistoricalDataCompanion
    extends UpdateCompanion<StockHistoricalDataEntity> {
  final Value<int> id;
  final Value<String> stockId;
  final Value<String> dataType;
  final Value<String> itemId;
  final Value<double> value;
  final Value<double?> percent;
  final Value<String?> type;
  final Value<int?> year;
  final Value<int?> month;
  final Value<int?> quarter;
  final Value<DateTime> updatedAt;
  const StockHistoricalDataCompanion({
    this.id = const Value.absent(),
    this.stockId = const Value.absent(),
    this.dataType = const Value.absent(),
    this.itemId = const Value.absent(),
    this.value = const Value.absent(),
    this.percent = const Value.absent(),
    this.type = const Value.absent(),
    this.year = const Value.absent(),
    this.month = const Value.absent(),
    this.quarter = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  StockHistoricalDataCompanion.insert({
    this.id = const Value.absent(),
    required String stockId,
    required String dataType,
    required String itemId,
    required double value,
    this.percent = const Value.absent(),
    this.type = const Value.absent(),
    this.year = const Value.absent(),
    this.month = const Value.absent(),
    this.quarter = const Value.absent(),
    required DateTime updatedAt,
  })  : stockId = Value(stockId),
        dataType = Value(dataType),
        itemId = Value(itemId),
        value = Value(value),
        updatedAt = Value(updatedAt);
  static Insertable<StockHistoricalDataEntity> custom({
    Expression<int>? id,
    Expression<String>? stockId,
    Expression<String>? dataType,
    Expression<String>? itemId,
    Expression<double>? value,
    Expression<double>? percent,
    Expression<String>? type,
    Expression<int>? year,
    Expression<int>? month,
    Expression<int>? quarter,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (stockId != null) 'stock_id': stockId,
      if (dataType != null) 'data_type': dataType,
      if (itemId != null) 'item_id': itemId,
      if (value != null) 'value': value,
      if (percent != null) 'percent': percent,
      if (type != null) 'type': type,
      if (year != null) 'year': year,
      if (month != null) 'month': month,
      if (quarter != null) 'quarter': quarter,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  StockHistoricalDataCompanion copyWith(
      {Value<int>? id,
      Value<String>? stockId,
      Value<String>? dataType,
      Value<String>? itemId,
      Value<double>? value,
      Value<double?>? percent,
      Value<String?>? type,
      Value<int?>? year,
      Value<int?>? month,
      Value<int?>? quarter,
      Value<DateTime>? updatedAt}) {
    return StockHistoricalDataCompanion(
      id: id ?? this.id,
      stockId: stockId ?? this.stockId,
      dataType: dataType ?? this.dataType,
      itemId: itemId ?? this.itemId,
      value: value ?? this.value,
      percent: percent ?? this.percent,
      type: type ?? this.type,
      year: year ?? this.year,
      month: month ?? this.month,
      quarter: quarter ?? this.quarter,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (stockId.present) {
      map['stock_id'] = Variable<String>(stockId.value);
    }
    if (dataType.present) {
      map['data_type'] = Variable<String>(dataType.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<String>(itemId.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    if (percent.present) {
      map['percent'] = Variable<double>(percent.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (month.present) {
      map['month'] = Variable<int>(month.value);
    }
    if (quarter.present) {
      map['quarter'] = Variable<int>(quarter.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StockHistoricalDataCompanion(')
          ..write('id: $id, ')
          ..write('stockId: $stockId, ')
          ..write('dataType: $dataType, ')
          ..write('itemId: $itemId, ')
          ..write('value: $value, ')
          ..write('percent: $percent, ')
          ..write('type: $type, ')
          ..write('year: $year, ')
          ..write('month: $month, ')
          ..write('quarter: $quarter, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $StockSignColumnsTable extends StockSignColumns
    with TableInfo<$StockSignColumnsTable, StockSignColumnEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StockSignColumnsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _stockIdMeta =
      const VerificationMeta('stockId');
  @override
  late final GeneratedColumn<String> stockId = GeneratedColumn<String>(
      'stock_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES stocks (id)'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<String> data = GeneratedColumn<String>(
      'data', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, stockId, name, data, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stock_sign_columns';
  @override
  VerificationContext validateIntegrity(
      Insertable<StockSignColumnEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('stock_id')) {
      context.handle(_stockIdMeta,
          stockId.isAcceptableOrUnknown(data['stock_id']!, _stockIdMeta));
    } else if (isInserting) {
      context.missing(_stockIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('data')) {
      context.handle(
          _dataMeta, this.data.isAcceptableOrUnknown(data['data']!, _dataMeta));
    } else if (isInserting) {
      context.missing(_dataMeta);
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
  StockSignColumnEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StockSignColumnEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      stockId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}stock_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      data: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}data'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $StockSignColumnsTable createAlias(String alias) {
    return $StockSignColumnsTable(attachedDatabase, alias);
  }
}

class StockSignColumnEntity extends DataClass
    implements Insertable<StockSignColumnEntity> {
  final int id;
  final String stockId;
  final String name;
  final String data;
  final DateTime updatedAt;
  const StockSignColumnEntity(
      {required this.id,
      required this.stockId,
      required this.name,
      required this.data,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['stock_id'] = Variable<String>(stockId);
    map['name'] = Variable<String>(name);
    map['data'] = Variable<String>(data);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  StockSignColumnsCompanion toCompanion(bool nullToAbsent) {
    return StockSignColumnsCompanion(
      id: Value(id),
      stockId: Value(stockId),
      name: Value(name),
      data: Value(data),
      updatedAt: Value(updatedAt),
    );
  }

  factory StockSignColumnEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StockSignColumnEntity(
      id: serializer.fromJson<int>(json['id']),
      stockId: serializer.fromJson<String>(json['stockId']),
      name: serializer.fromJson<String>(json['name']),
      data: serializer.fromJson<String>(json['data']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'stockId': serializer.toJson<String>(stockId),
      'name': serializer.toJson<String>(name),
      'data': serializer.toJson<String>(data),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  StockSignColumnEntity copyWith(
          {int? id,
          String? stockId,
          String? name,
          String? data,
          DateTime? updatedAt}) =>
      StockSignColumnEntity(
        id: id ?? this.id,
        stockId: stockId ?? this.stockId,
        name: name ?? this.name,
        data: data ?? this.data,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  StockSignColumnEntity copyWithCompanion(StockSignColumnsCompanion data) {
    return StockSignColumnEntity(
      id: data.id.present ? data.id.value : this.id,
      stockId: data.stockId.present ? data.stockId.value : this.stockId,
      name: data.name.present ? data.name.value : this.name,
      data: data.data.present ? data.data.value : this.data,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StockSignColumnEntity(')
          ..write('id: $id, ')
          ..write('stockId: $stockId, ')
          ..write('name: $name, ')
          ..write('data: $data, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, stockId, name, data, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StockSignColumnEntity &&
          other.id == this.id &&
          other.stockId == this.stockId &&
          other.name == this.name &&
          other.data == this.data &&
          other.updatedAt == this.updatedAt);
}

class StockSignColumnsCompanion extends UpdateCompanion<StockSignColumnEntity> {
  final Value<int> id;
  final Value<String> stockId;
  final Value<String> name;
  final Value<String> data;
  final Value<DateTime> updatedAt;
  const StockSignColumnsCompanion({
    this.id = const Value.absent(),
    this.stockId = const Value.absent(),
    this.name = const Value.absent(),
    this.data = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  StockSignColumnsCompanion.insert({
    this.id = const Value.absent(),
    required String stockId,
    required String name,
    required String data,
    required DateTime updatedAt,
  })  : stockId = Value(stockId),
        name = Value(name),
        data = Value(data),
        updatedAt = Value(updatedAt);
  static Insertable<StockSignColumnEntity> custom({
    Expression<int>? id,
    Expression<String>? stockId,
    Expression<String>? name,
    Expression<String>? data,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (stockId != null) 'stock_id': stockId,
      if (name != null) 'name': name,
      if (data != null) 'data': data,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  StockSignColumnsCompanion copyWith(
      {Value<int>? id,
      Value<String>? stockId,
      Value<String>? name,
      Value<String>? data,
      Value<DateTime>? updatedAt}) {
    return StockSignColumnsCompanion(
      id: id ?? this.id,
      stockId: stockId ?? this.stockId,
      name: name ?? this.name,
      data: data ?? this.data,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (stockId.present) {
      map['stock_id'] = Variable<String>(stockId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (data.present) {
      map['data'] = Variable<String>(data.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StockSignColumnsCompanion(')
          ..write('id: $id, ')
          ..write('stockId: $stockId, ')
          ..write('name: $name, ')
          ..write('data: $data, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $MarketsTable extends Markets
    with TableInfo<$MarketsTable, MarketEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MarketsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [code, name, id, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'markets';
  @override
  VerificationContext validateIntegrity(Insertable<MarketEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
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
  MarketEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MarketEntity(
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $MarketsTable createAlias(String alias) {
    return $MarketsTable(attachedDatabase, alias);
  }
}

class MarketEntity extends DataClass implements Insertable<MarketEntity> {
  final String code;
  final String name;
  final int id;
  final DateTime updatedAt;
  const MarketEntity(
      {required this.code,
      required this.name,
      required this.id,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['code'] = Variable<String>(code);
    map['name'] = Variable<String>(name);
    map['id'] = Variable<int>(id);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  MarketsCompanion toCompanion(bool nullToAbsent) {
    return MarketsCompanion(
      code: Value(code),
      name: Value(name),
      id: Value(id),
      updatedAt: Value(updatedAt),
    );
  }

  factory MarketEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MarketEntity(
      code: serializer.fromJson<String>(json['code']),
      name: serializer.fromJson<String>(json['name']),
      id: serializer.fromJson<int>(json['id']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<String>(code),
      'name': serializer.toJson<String>(name),
      'id': serializer.toJson<int>(id),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  MarketEntity copyWith(
          {String? code, String? name, int? id, DateTime? updatedAt}) =>
      MarketEntity(
        code: code ?? this.code,
        name: name ?? this.name,
        id: id ?? this.id,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  MarketEntity copyWithCompanion(MarketsCompanion data) {
    return MarketEntity(
      code: data.code.present ? data.code.value : this.code,
      name: data.name.present ? data.name.value : this.name,
      id: data.id.present ? data.id.value : this.id,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MarketEntity(')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(code, name, id, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MarketEntity &&
          other.code == this.code &&
          other.name == this.name &&
          other.id == this.id &&
          other.updatedAt == this.updatedAt);
}

class MarketsCompanion extends UpdateCompanion<MarketEntity> {
  final Value<String> code;
  final Value<String> name;
  final Value<int> id;
  final Value<DateTime> updatedAt;
  const MarketsCompanion({
    this.code = const Value.absent(),
    this.name = const Value.absent(),
    this.id = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  MarketsCompanion.insert({
    required String code,
    required String name,
    this.id = const Value.absent(),
    required DateTime updatedAt,
  })  : code = Value(code),
        name = Value(name),
        updatedAt = Value(updatedAt);
  static Insertable<MarketEntity> custom({
    Expression<String>? code,
    Expression<String>? name,
    Expression<int>? id,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (name != null) 'name': name,
      if (id != null) 'id': id,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  MarketsCompanion copyWith(
      {Value<String>? code,
      Value<String>? name,
      Value<int>? id,
      Value<DateTime>? updatedAt}) {
    return MarketsCompanion(
      code: code ?? this.code,
      name: name ?? this.name,
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MarketsCompanion(')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('id: $id, ')
          ..write('updatedAt: $updatedAt')
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
  late final $StockHistoricalDataTable stockHistoricalData =
      $StockHistoricalDataTable(this);
  late final $StockSignColumnsTable stockSignColumns =
      $StockSignColumnsTable(this);
  late final $MarketsTable markets = $MarketsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        sectors,
        stocks,
        stockDetails,
        settings,
        stockHistoricalData,
        stockSignColumns,
        markets
      ];
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

  static MultiTypedResultKey<$StockHistoricalDataTable,
      List<StockHistoricalDataEntity>> _stockHistoricalDataRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.stockHistoricalData,
          aliasName: $_aliasNameGenerator(
              db.stocks.id, db.stockHistoricalData.stockId));

  $$StockHistoricalDataTableProcessedTableManager get stockHistoricalDataRefs {
    final manager =
        $$StockHistoricalDataTableTableManager($_db, $_db.stockHistoricalData)
            .filter((f) => f.stockId.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_stockHistoricalDataRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$StockSignColumnsTable,
      List<StockSignColumnEntity>> _stockSignColumnsRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.stockSignColumns,
          aliasName:
              $_aliasNameGenerator(db.stocks.id, db.stockSignColumns.stockId));

  $$StockSignColumnsTableProcessedTableManager get stockSignColumnsRefs {
    final manager =
        $$StockSignColumnsTableTableManager($_db, $_db.stockSignColumns)
            .filter((f) => f.stockId.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_stockSignColumnsRefsTable($_db));
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

  Expression<bool> stockHistoricalDataRefs(
      Expression<bool> Function($$StockHistoricalDataTableFilterComposer f) f) {
    final $$StockHistoricalDataTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stockHistoricalData,
        getReferencedColumn: (t) => t.stockId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StockHistoricalDataTableFilterComposer(
              $db: $db,
              $table: $db.stockHistoricalData,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> stockSignColumnsRefs(
      Expression<bool> Function($$StockSignColumnsTableFilterComposer f) f) {
    final $$StockSignColumnsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stockSignColumns,
        getReferencedColumn: (t) => t.stockId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StockSignColumnsTableFilterComposer(
              $db: $db,
              $table: $db.stockSignColumns,
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

  Expression<T> stockHistoricalDataRefs<T extends Object>(
      Expression<T> Function($$StockHistoricalDataTableAnnotationComposer a)
          f) {
    final $$StockHistoricalDataTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.stockHistoricalData,
            getReferencedColumn: (t) => t.stockId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$StockHistoricalDataTableAnnotationComposer(
                  $db: $db,
                  $table: $db.stockHistoricalData,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> stockSignColumnsRefs<T extends Object>(
      Expression<T> Function($$StockSignColumnsTableAnnotationComposer a) f) {
    final $$StockSignColumnsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stockSignColumns,
        getReferencedColumn: (t) => t.stockId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StockSignColumnsTableAnnotationComposer(
              $db: $db,
              $table: $db.stockSignColumns,
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
    PrefetchHooks Function(
        {bool sectorId,
        bool stockDetailsRefs,
        bool stockHistoricalDataRefs,
        bool stockSignColumnsRefs})> {
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
              {sectorId = false,
              stockDetailsRefs = false,
              stockHistoricalDataRefs = false,
              stockSignColumnsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (stockDetailsRefs) db.stockDetails,
                if (stockHistoricalDataRefs) db.stockHistoricalData,
                if (stockSignColumnsRefs) db.stockSignColumns
              ],
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
                        typedResults: items),
                  if (stockHistoricalDataRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$StocksTableReferences
                            ._stockHistoricalDataRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$StocksTableReferences(db, table, p0)
                                .stockHistoricalDataRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.stockId == item.id),
                        typedResults: items),
                  if (stockSignColumnsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$StocksTableReferences
                            ._stockSignColumnsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$StocksTableReferences(db, table, p0)
                                .stockSignColumnsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.stockId == item.id),
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
    PrefetchHooks Function(
        {bool sectorId,
        bool stockDetailsRefs,
        bool stockHistoricalDataRefs,
        bool stockSignColumnsRefs})>;
typedef $$StockDetailsTableCreateCompanionBuilder = StockDetailsCompanion
    Function({
  required String id,
  Value<String?> summary,
  required String currency,
  required String currencySign,
  required String priceCurrency,
  required String status,
  required double latestPrice,
  required DateTime priceDateTime,
  required double lossChanceLast,
  required DateTime lossChanceUpdatedAt,
  required int marketRank,
  required int marketMember,
  Value<DateTime?> ipoDate,
  Value<String?> companyUrl,
  required String priceDiffId,
  required double priceDiffValue,
  required String priceDiffType,
  required double priceDiffPercent,
  required String monthlyPriceId,
  required double monthlyPriceValue,
  required int monthlyPriceYear,
  required int monthlyPriceMonth,
  required int monthlyPriceTotal,
  required String scoreId,
  required double scoreValue,
  required int lineTotal,
  required double factorGrowthValue,
  required String factorGrowthName,
  required String factorGrowthLevel,
  required double factorRecentValue,
  required String factorRecentName,
  required String factorRecentLevel,
  required double factorFinancialValue,
  required String factorFinancialName,
  required String factorFinancialLevel,
  required double factorReturnValue,
  required String factorReturnName,
  required String factorReturnLevel,
  required double factorManagementValue,
  required String factorManagementName,
  required String factorManagementLevel,
  required String signTitle,
  required String signType,
  required String signName,
  required String signValue,
  required String signDisplayTitle,
  Value<String?> signDisplayValue,
  Value<String?> signDisplayColumnHead,
  Value<String?> signDisplayFooter,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$StockDetailsTableUpdateCompanionBuilder = StockDetailsCompanion
    Function({
  Value<String> id,
  Value<String?> summary,
  Value<String> currency,
  Value<String> currencySign,
  Value<String> priceCurrency,
  Value<String> status,
  Value<double> latestPrice,
  Value<DateTime> priceDateTime,
  Value<double> lossChanceLast,
  Value<DateTime> lossChanceUpdatedAt,
  Value<int> marketRank,
  Value<int> marketMember,
  Value<DateTime?> ipoDate,
  Value<String?> companyUrl,
  Value<String> priceDiffId,
  Value<double> priceDiffValue,
  Value<String> priceDiffType,
  Value<double> priceDiffPercent,
  Value<String> monthlyPriceId,
  Value<double> monthlyPriceValue,
  Value<int> monthlyPriceYear,
  Value<int> monthlyPriceMonth,
  Value<int> monthlyPriceTotal,
  Value<String> scoreId,
  Value<double> scoreValue,
  Value<int> lineTotal,
  Value<double> factorGrowthValue,
  Value<String> factorGrowthName,
  Value<String> factorGrowthLevel,
  Value<double> factorRecentValue,
  Value<String> factorRecentName,
  Value<String> factorRecentLevel,
  Value<double> factorFinancialValue,
  Value<String> factorFinancialName,
  Value<String> factorFinancialLevel,
  Value<double> factorReturnValue,
  Value<String> factorReturnName,
  Value<String> factorReturnLevel,
  Value<double> factorManagementValue,
  Value<String> factorManagementName,
  Value<String> factorManagementLevel,
  Value<String> signTitle,
  Value<String> signType,
  Value<String> signName,
  Value<String> signValue,
  Value<String> signDisplayTitle,
  Value<String?> signDisplayValue,
  Value<String?> signDisplayColumnHead,
  Value<String?> signDisplayFooter,
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

  ColumnFilters<double> get lossChanceLast => $composableBuilder(
      column: $table.lossChanceLast,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lossChanceUpdatedAt => $composableBuilder(
      column: $table.lossChanceUpdatedAt,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get marketRank => $composableBuilder(
      column: $table.marketRank, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get marketMember => $composableBuilder(
      column: $table.marketMember, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get ipoDate => $composableBuilder(
      column: $table.ipoDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get companyUrl => $composableBuilder(
      column: $table.companyUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get priceDiffId => $composableBuilder(
      column: $table.priceDiffId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get priceDiffValue => $composableBuilder(
      column: $table.priceDiffValue,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get priceDiffType => $composableBuilder(
      column: $table.priceDiffType, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get priceDiffPercent => $composableBuilder(
      column: $table.priceDiffPercent,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get monthlyPriceId => $composableBuilder(
      column: $table.monthlyPriceId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get monthlyPriceValue => $composableBuilder(
      column: $table.monthlyPriceValue,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get monthlyPriceYear => $composableBuilder(
      column: $table.monthlyPriceYear,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get monthlyPriceMonth => $composableBuilder(
      column: $table.monthlyPriceMonth,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get monthlyPriceTotal => $composableBuilder(
      column: $table.monthlyPriceTotal,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get scoreId => $composableBuilder(
      column: $table.scoreId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get scoreValue => $composableBuilder(
      column: $table.scoreValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lineTotal => $composableBuilder(
      column: $table.lineTotal, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get factorGrowthValue => $composableBuilder(
      column: $table.factorGrowthValue,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get factorGrowthName => $composableBuilder(
      column: $table.factorGrowthName,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get factorGrowthLevel => $composableBuilder(
      column: $table.factorGrowthLevel,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get factorRecentValue => $composableBuilder(
      column: $table.factorRecentValue,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get factorRecentName => $composableBuilder(
      column: $table.factorRecentName,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get factorRecentLevel => $composableBuilder(
      column: $table.factorRecentLevel,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get factorFinancialValue => $composableBuilder(
      column: $table.factorFinancialValue,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get factorFinancialName => $composableBuilder(
      column: $table.factorFinancialName,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get factorFinancialLevel => $composableBuilder(
      column: $table.factorFinancialLevel,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get factorReturnValue => $composableBuilder(
      column: $table.factorReturnValue,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get factorReturnName => $composableBuilder(
      column: $table.factorReturnName,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get factorReturnLevel => $composableBuilder(
      column: $table.factorReturnLevel,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get factorManagementValue => $composableBuilder(
      column: $table.factorManagementValue,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get factorManagementName => $composableBuilder(
      column: $table.factorManagementName,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get factorManagementLevel => $composableBuilder(
      column: $table.factorManagementLevel,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get signTitle => $composableBuilder(
      column: $table.signTitle, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get signType => $composableBuilder(
      column: $table.signType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get signName => $composableBuilder(
      column: $table.signName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get signValue => $composableBuilder(
      column: $table.signValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get signDisplayTitle => $composableBuilder(
      column: $table.signDisplayTitle,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get signDisplayValue => $composableBuilder(
      column: $table.signDisplayValue,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get signDisplayColumnHead => $composableBuilder(
      column: $table.signDisplayColumnHead,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get signDisplayFooter => $composableBuilder(
      column: $table.signDisplayFooter,
      builder: (column) => ColumnFilters(column));

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

  ColumnOrderings<double> get lossChanceLast => $composableBuilder(
      column: $table.lossChanceLast,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lossChanceUpdatedAt => $composableBuilder(
      column: $table.lossChanceUpdatedAt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get marketRank => $composableBuilder(
      column: $table.marketRank, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get marketMember => $composableBuilder(
      column: $table.marketMember,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get ipoDate => $composableBuilder(
      column: $table.ipoDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get companyUrl => $composableBuilder(
      column: $table.companyUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get priceDiffId => $composableBuilder(
      column: $table.priceDiffId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get priceDiffValue => $composableBuilder(
      column: $table.priceDiffValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get priceDiffType => $composableBuilder(
      column: $table.priceDiffType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get priceDiffPercent => $composableBuilder(
      column: $table.priceDiffPercent,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get monthlyPriceId => $composableBuilder(
      column: $table.monthlyPriceId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get monthlyPriceValue => $composableBuilder(
      column: $table.monthlyPriceValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get monthlyPriceYear => $composableBuilder(
      column: $table.monthlyPriceYear,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get monthlyPriceMonth => $composableBuilder(
      column: $table.monthlyPriceMonth,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get monthlyPriceTotal => $composableBuilder(
      column: $table.monthlyPriceTotal,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get scoreId => $composableBuilder(
      column: $table.scoreId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get scoreValue => $composableBuilder(
      column: $table.scoreValue, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lineTotal => $composableBuilder(
      column: $table.lineTotal, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get factorGrowthValue => $composableBuilder(
      column: $table.factorGrowthValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get factorGrowthName => $composableBuilder(
      column: $table.factorGrowthName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get factorGrowthLevel => $composableBuilder(
      column: $table.factorGrowthLevel,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get factorRecentValue => $composableBuilder(
      column: $table.factorRecentValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get factorRecentName => $composableBuilder(
      column: $table.factorRecentName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get factorRecentLevel => $composableBuilder(
      column: $table.factorRecentLevel,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get factorFinancialValue => $composableBuilder(
      column: $table.factorFinancialValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get factorFinancialName => $composableBuilder(
      column: $table.factorFinancialName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get factorFinancialLevel => $composableBuilder(
      column: $table.factorFinancialLevel,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get factorReturnValue => $composableBuilder(
      column: $table.factorReturnValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get factorReturnName => $composableBuilder(
      column: $table.factorReturnName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get factorReturnLevel => $composableBuilder(
      column: $table.factorReturnLevel,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get factorManagementValue => $composableBuilder(
      column: $table.factorManagementValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get factorManagementName => $composableBuilder(
      column: $table.factorManagementName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get factorManagementLevel => $composableBuilder(
      column: $table.factorManagementLevel,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get signTitle => $composableBuilder(
      column: $table.signTitle, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get signType => $composableBuilder(
      column: $table.signType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get signName => $composableBuilder(
      column: $table.signName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get signValue => $composableBuilder(
      column: $table.signValue, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get signDisplayTitle => $composableBuilder(
      column: $table.signDisplayTitle,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get signDisplayValue => $composableBuilder(
      column: $table.signDisplayValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get signDisplayColumnHead => $composableBuilder(
      column: $table.signDisplayColumnHead,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get signDisplayFooter => $composableBuilder(
      column: $table.signDisplayFooter,
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

  GeneratedColumn<double> get lossChanceLast => $composableBuilder(
      column: $table.lossChanceLast, builder: (column) => column);

  GeneratedColumn<DateTime> get lossChanceUpdatedAt => $composableBuilder(
      column: $table.lossChanceUpdatedAt, builder: (column) => column);

  GeneratedColumn<int> get marketRank => $composableBuilder(
      column: $table.marketRank, builder: (column) => column);

  GeneratedColumn<int> get marketMember => $composableBuilder(
      column: $table.marketMember, builder: (column) => column);

  GeneratedColumn<DateTime> get ipoDate =>
      $composableBuilder(column: $table.ipoDate, builder: (column) => column);

  GeneratedColumn<String> get companyUrl => $composableBuilder(
      column: $table.companyUrl, builder: (column) => column);

  GeneratedColumn<String> get priceDiffId => $composableBuilder(
      column: $table.priceDiffId, builder: (column) => column);

  GeneratedColumn<double> get priceDiffValue => $composableBuilder(
      column: $table.priceDiffValue, builder: (column) => column);

  GeneratedColumn<String> get priceDiffType => $composableBuilder(
      column: $table.priceDiffType, builder: (column) => column);

  GeneratedColumn<double> get priceDiffPercent => $composableBuilder(
      column: $table.priceDiffPercent, builder: (column) => column);

  GeneratedColumn<String> get monthlyPriceId => $composableBuilder(
      column: $table.monthlyPriceId, builder: (column) => column);

  GeneratedColumn<double> get monthlyPriceValue => $composableBuilder(
      column: $table.monthlyPriceValue, builder: (column) => column);

  GeneratedColumn<int> get monthlyPriceYear => $composableBuilder(
      column: $table.monthlyPriceYear, builder: (column) => column);

  GeneratedColumn<int> get monthlyPriceMonth => $composableBuilder(
      column: $table.monthlyPriceMonth, builder: (column) => column);

  GeneratedColumn<int> get monthlyPriceTotal => $composableBuilder(
      column: $table.monthlyPriceTotal, builder: (column) => column);

  GeneratedColumn<String> get scoreId =>
      $composableBuilder(column: $table.scoreId, builder: (column) => column);

  GeneratedColumn<double> get scoreValue => $composableBuilder(
      column: $table.scoreValue, builder: (column) => column);

  GeneratedColumn<int> get lineTotal =>
      $composableBuilder(column: $table.lineTotal, builder: (column) => column);

  GeneratedColumn<double> get factorGrowthValue => $composableBuilder(
      column: $table.factorGrowthValue, builder: (column) => column);

  GeneratedColumn<String> get factorGrowthName => $composableBuilder(
      column: $table.factorGrowthName, builder: (column) => column);

  GeneratedColumn<String> get factorGrowthLevel => $composableBuilder(
      column: $table.factorGrowthLevel, builder: (column) => column);

  GeneratedColumn<double> get factorRecentValue => $composableBuilder(
      column: $table.factorRecentValue, builder: (column) => column);

  GeneratedColumn<String> get factorRecentName => $composableBuilder(
      column: $table.factorRecentName, builder: (column) => column);

  GeneratedColumn<String> get factorRecentLevel => $composableBuilder(
      column: $table.factorRecentLevel, builder: (column) => column);

  GeneratedColumn<double> get factorFinancialValue => $composableBuilder(
      column: $table.factorFinancialValue, builder: (column) => column);

  GeneratedColumn<String> get factorFinancialName => $composableBuilder(
      column: $table.factorFinancialName, builder: (column) => column);

  GeneratedColumn<String> get factorFinancialLevel => $composableBuilder(
      column: $table.factorFinancialLevel, builder: (column) => column);

  GeneratedColumn<double> get factorReturnValue => $composableBuilder(
      column: $table.factorReturnValue, builder: (column) => column);

  GeneratedColumn<String> get factorReturnName => $composableBuilder(
      column: $table.factorReturnName, builder: (column) => column);

  GeneratedColumn<String> get factorReturnLevel => $composableBuilder(
      column: $table.factorReturnLevel, builder: (column) => column);

  GeneratedColumn<double> get factorManagementValue => $composableBuilder(
      column: $table.factorManagementValue, builder: (column) => column);

  GeneratedColumn<String> get factorManagementName => $composableBuilder(
      column: $table.factorManagementName, builder: (column) => column);

  GeneratedColumn<String> get factorManagementLevel => $composableBuilder(
      column: $table.factorManagementLevel, builder: (column) => column);

  GeneratedColumn<String> get signTitle =>
      $composableBuilder(column: $table.signTitle, builder: (column) => column);

  GeneratedColumn<String> get signType =>
      $composableBuilder(column: $table.signType, builder: (column) => column);

  GeneratedColumn<String> get signName =>
      $composableBuilder(column: $table.signName, builder: (column) => column);

  GeneratedColumn<String> get signValue =>
      $composableBuilder(column: $table.signValue, builder: (column) => column);

  GeneratedColumn<String> get signDisplayTitle => $composableBuilder(
      column: $table.signDisplayTitle, builder: (column) => column);

  GeneratedColumn<String> get signDisplayValue => $composableBuilder(
      column: $table.signDisplayValue, builder: (column) => column);

  GeneratedColumn<String> get signDisplayColumnHead => $composableBuilder(
      column: $table.signDisplayColumnHead, builder: (column) => column);

  GeneratedColumn<String> get signDisplayFooter => $composableBuilder(
      column: $table.signDisplayFooter, builder: (column) => column);

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
            Value<String> currency = const Value.absent(),
            Value<String> currencySign = const Value.absent(),
            Value<String> priceCurrency = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<double> latestPrice = const Value.absent(),
            Value<DateTime> priceDateTime = const Value.absent(),
            Value<double> lossChanceLast = const Value.absent(),
            Value<DateTime> lossChanceUpdatedAt = const Value.absent(),
            Value<int> marketRank = const Value.absent(),
            Value<int> marketMember = const Value.absent(),
            Value<DateTime?> ipoDate = const Value.absent(),
            Value<String?> companyUrl = const Value.absent(),
            Value<String> priceDiffId = const Value.absent(),
            Value<double> priceDiffValue = const Value.absent(),
            Value<String> priceDiffType = const Value.absent(),
            Value<double> priceDiffPercent = const Value.absent(),
            Value<String> monthlyPriceId = const Value.absent(),
            Value<double> monthlyPriceValue = const Value.absent(),
            Value<int> monthlyPriceYear = const Value.absent(),
            Value<int> monthlyPriceMonth = const Value.absent(),
            Value<int> monthlyPriceTotal = const Value.absent(),
            Value<String> scoreId = const Value.absent(),
            Value<double> scoreValue = const Value.absent(),
            Value<int> lineTotal = const Value.absent(),
            Value<double> factorGrowthValue = const Value.absent(),
            Value<String> factorGrowthName = const Value.absent(),
            Value<String> factorGrowthLevel = const Value.absent(),
            Value<double> factorRecentValue = const Value.absent(),
            Value<String> factorRecentName = const Value.absent(),
            Value<String> factorRecentLevel = const Value.absent(),
            Value<double> factorFinancialValue = const Value.absent(),
            Value<String> factorFinancialName = const Value.absent(),
            Value<String> factorFinancialLevel = const Value.absent(),
            Value<double> factorReturnValue = const Value.absent(),
            Value<String> factorReturnName = const Value.absent(),
            Value<String> factorReturnLevel = const Value.absent(),
            Value<double> factorManagementValue = const Value.absent(),
            Value<String> factorManagementName = const Value.absent(),
            Value<String> factorManagementLevel = const Value.absent(),
            Value<String> signTitle = const Value.absent(),
            Value<String> signType = const Value.absent(),
            Value<String> signName = const Value.absent(),
            Value<String> signValue = const Value.absent(),
            Value<String> signDisplayTitle = const Value.absent(),
            Value<String?> signDisplayValue = const Value.absent(),
            Value<String?> signDisplayColumnHead = const Value.absent(),
            Value<String?> signDisplayFooter = const Value.absent(),
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
            lossChanceLast: lossChanceLast,
            lossChanceUpdatedAt: lossChanceUpdatedAt,
            marketRank: marketRank,
            marketMember: marketMember,
            ipoDate: ipoDate,
            companyUrl: companyUrl,
            priceDiffId: priceDiffId,
            priceDiffValue: priceDiffValue,
            priceDiffType: priceDiffType,
            priceDiffPercent: priceDiffPercent,
            monthlyPriceId: monthlyPriceId,
            monthlyPriceValue: monthlyPriceValue,
            monthlyPriceYear: monthlyPriceYear,
            monthlyPriceMonth: monthlyPriceMonth,
            monthlyPriceTotal: monthlyPriceTotal,
            scoreId: scoreId,
            scoreValue: scoreValue,
            lineTotal: lineTotal,
            factorGrowthValue: factorGrowthValue,
            factorGrowthName: factorGrowthName,
            factorGrowthLevel: factorGrowthLevel,
            factorRecentValue: factorRecentValue,
            factorRecentName: factorRecentName,
            factorRecentLevel: factorRecentLevel,
            factorFinancialValue: factorFinancialValue,
            factorFinancialName: factorFinancialName,
            factorFinancialLevel: factorFinancialLevel,
            factorReturnValue: factorReturnValue,
            factorReturnName: factorReturnName,
            factorReturnLevel: factorReturnLevel,
            factorManagementValue: factorManagementValue,
            factorManagementName: factorManagementName,
            factorManagementLevel: factorManagementLevel,
            signTitle: signTitle,
            signType: signType,
            signName: signName,
            signValue: signValue,
            signDisplayTitle: signDisplayTitle,
            signDisplayValue: signDisplayValue,
            signDisplayColumnHead: signDisplayColumnHead,
            signDisplayFooter: signDisplayFooter,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> summary = const Value.absent(),
            required String currency,
            required String currencySign,
            required String priceCurrency,
            required String status,
            required double latestPrice,
            required DateTime priceDateTime,
            required double lossChanceLast,
            required DateTime lossChanceUpdatedAt,
            required int marketRank,
            required int marketMember,
            Value<DateTime?> ipoDate = const Value.absent(),
            Value<String?> companyUrl = const Value.absent(),
            required String priceDiffId,
            required double priceDiffValue,
            required String priceDiffType,
            required double priceDiffPercent,
            required String monthlyPriceId,
            required double monthlyPriceValue,
            required int monthlyPriceYear,
            required int monthlyPriceMonth,
            required int monthlyPriceTotal,
            required String scoreId,
            required double scoreValue,
            required int lineTotal,
            required double factorGrowthValue,
            required String factorGrowthName,
            required String factorGrowthLevel,
            required double factorRecentValue,
            required String factorRecentName,
            required String factorRecentLevel,
            required double factorFinancialValue,
            required String factorFinancialName,
            required String factorFinancialLevel,
            required double factorReturnValue,
            required String factorReturnName,
            required String factorReturnLevel,
            required double factorManagementValue,
            required String factorManagementName,
            required String factorManagementLevel,
            required String signTitle,
            required String signType,
            required String signName,
            required String signValue,
            required String signDisplayTitle,
            Value<String?> signDisplayValue = const Value.absent(),
            Value<String?> signDisplayColumnHead = const Value.absent(),
            Value<String?> signDisplayFooter = const Value.absent(),
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
            lossChanceLast: lossChanceLast,
            lossChanceUpdatedAt: lossChanceUpdatedAt,
            marketRank: marketRank,
            marketMember: marketMember,
            ipoDate: ipoDate,
            companyUrl: companyUrl,
            priceDiffId: priceDiffId,
            priceDiffValue: priceDiffValue,
            priceDiffType: priceDiffType,
            priceDiffPercent: priceDiffPercent,
            monthlyPriceId: monthlyPriceId,
            monthlyPriceValue: monthlyPriceValue,
            monthlyPriceYear: monthlyPriceYear,
            monthlyPriceMonth: monthlyPriceMonth,
            monthlyPriceTotal: monthlyPriceTotal,
            scoreId: scoreId,
            scoreValue: scoreValue,
            lineTotal: lineTotal,
            factorGrowthValue: factorGrowthValue,
            factorGrowthName: factorGrowthName,
            factorGrowthLevel: factorGrowthLevel,
            factorRecentValue: factorRecentValue,
            factorRecentName: factorRecentName,
            factorRecentLevel: factorRecentLevel,
            factorFinancialValue: factorFinancialValue,
            factorFinancialName: factorFinancialName,
            factorFinancialLevel: factorFinancialLevel,
            factorReturnValue: factorReturnValue,
            factorReturnName: factorReturnName,
            factorReturnLevel: factorReturnLevel,
            factorManagementValue: factorManagementValue,
            factorManagementName: factorManagementName,
            factorManagementLevel: factorManagementLevel,
            signTitle: signTitle,
            signType: signType,
            signName: signName,
            signValue: signValue,
            signDisplayTitle: signDisplayTitle,
            signDisplayValue: signDisplayValue,
            signDisplayColumnHead: signDisplayColumnHead,
            signDisplayFooter: signDisplayFooter,
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
typedef $$StockHistoricalDataTableCreateCompanionBuilder
    = StockHistoricalDataCompanion Function({
  Value<int> id,
  required String stockId,
  required String dataType,
  required String itemId,
  required double value,
  Value<double?> percent,
  Value<String?> type,
  Value<int?> year,
  Value<int?> month,
  Value<int?> quarter,
  required DateTime updatedAt,
});
typedef $$StockHistoricalDataTableUpdateCompanionBuilder
    = StockHistoricalDataCompanion Function({
  Value<int> id,
  Value<String> stockId,
  Value<String> dataType,
  Value<String> itemId,
  Value<double> value,
  Value<double?> percent,
  Value<String?> type,
  Value<int?> year,
  Value<int?> month,
  Value<int?> quarter,
  Value<DateTime> updatedAt,
});

final class $$StockHistoricalDataTableReferences extends BaseReferences<
    _$AppDatabase, $StockHistoricalDataTable, StockHistoricalDataEntity> {
  $$StockHistoricalDataTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $StocksTable _stockIdTable(_$AppDatabase db) => db.stocks.createAlias(
      $_aliasNameGenerator(db.stockHistoricalData.stockId, db.stocks.id));

  $$StocksTableProcessedTableManager get stockId {
    final manager = $$StocksTableTableManager($_db, $_db.stocks)
        .filter((f) => f.id($_item.stockId!));
    final item = $_typedResult.readTableOrNull(_stockIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$StockHistoricalDataTableFilterComposer
    extends Composer<_$AppDatabase, $StockHistoricalDataTable> {
  $$StockHistoricalDataTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get dataType => $composableBuilder(
      column: $table.dataType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemId => $composableBuilder(
      column: $table.itemId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get percent => $composableBuilder(
      column: $table.percent, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get year => $composableBuilder(
      column: $table.year, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get month => $composableBuilder(
      column: $table.month, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get quarter => $composableBuilder(
      column: $table.quarter, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  $$StocksTableFilterComposer get stockId {
    final $$StocksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.stockId,
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

class $$StockHistoricalDataTableOrderingComposer
    extends Composer<_$AppDatabase, $StockHistoricalDataTable> {
  $$StockHistoricalDataTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get dataType => $composableBuilder(
      column: $table.dataType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemId => $composableBuilder(
      column: $table.itemId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get percent => $composableBuilder(
      column: $table.percent, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get year => $composableBuilder(
      column: $table.year, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get month => $composableBuilder(
      column: $table.month, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get quarter => $composableBuilder(
      column: $table.quarter, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  $$StocksTableOrderingComposer get stockId {
    final $$StocksTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.stockId,
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

class $$StockHistoricalDataTableAnnotationComposer
    extends Composer<_$AppDatabase, $StockHistoricalDataTable> {
  $$StockHistoricalDataTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get dataType =>
      $composableBuilder(column: $table.dataType, builder: (column) => column);

  GeneratedColumn<String> get itemId =>
      $composableBuilder(column: $table.itemId, builder: (column) => column);

  GeneratedColumn<double> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<double> get percent =>
      $composableBuilder(column: $table.percent, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);

  GeneratedColumn<int> get month =>
      $composableBuilder(column: $table.month, builder: (column) => column);

  GeneratedColumn<int> get quarter =>
      $composableBuilder(column: $table.quarter, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$StocksTableAnnotationComposer get stockId {
    final $$StocksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.stockId,
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

class $$StockHistoricalDataTableTableManager extends RootTableManager<
    _$AppDatabase,
    $StockHistoricalDataTable,
    StockHistoricalDataEntity,
    $$StockHistoricalDataTableFilterComposer,
    $$StockHistoricalDataTableOrderingComposer,
    $$StockHistoricalDataTableAnnotationComposer,
    $$StockHistoricalDataTableCreateCompanionBuilder,
    $$StockHistoricalDataTableUpdateCompanionBuilder,
    (StockHistoricalDataEntity, $$StockHistoricalDataTableReferences),
    StockHistoricalDataEntity,
    PrefetchHooks Function({bool stockId})> {
  $$StockHistoricalDataTableTableManager(
      _$AppDatabase db, $StockHistoricalDataTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StockHistoricalDataTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StockHistoricalDataTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StockHistoricalDataTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> stockId = const Value.absent(),
            Value<String> dataType = const Value.absent(),
            Value<String> itemId = const Value.absent(),
            Value<double> value = const Value.absent(),
            Value<double?> percent = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<int?> year = const Value.absent(),
            Value<int?> month = const Value.absent(),
            Value<int?> quarter = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              StockHistoricalDataCompanion(
            id: id,
            stockId: stockId,
            dataType: dataType,
            itemId: itemId,
            value: value,
            percent: percent,
            type: type,
            year: year,
            month: month,
            quarter: quarter,
            updatedAt: updatedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String stockId,
            required String dataType,
            required String itemId,
            required double value,
            Value<double?> percent = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<int?> year = const Value.absent(),
            Value<int?> month = const Value.absent(),
            Value<int?> quarter = const Value.absent(),
            required DateTime updatedAt,
          }) =>
              StockHistoricalDataCompanion.insert(
            id: id,
            stockId: stockId,
            dataType: dataType,
            itemId: itemId,
            value: value,
            percent: percent,
            type: type,
            year: year,
            month: month,
            quarter: quarter,
            updatedAt: updatedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$StockHistoricalDataTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({stockId = false}) {
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
                if (stockId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.stockId,
                    referencedTable:
                        $$StockHistoricalDataTableReferences._stockIdTable(db),
                    referencedColumn: $$StockHistoricalDataTableReferences
                        ._stockIdTable(db)
                        .id,
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

typedef $$StockHistoricalDataTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $StockHistoricalDataTable,
    StockHistoricalDataEntity,
    $$StockHistoricalDataTableFilterComposer,
    $$StockHistoricalDataTableOrderingComposer,
    $$StockHistoricalDataTableAnnotationComposer,
    $$StockHistoricalDataTableCreateCompanionBuilder,
    $$StockHistoricalDataTableUpdateCompanionBuilder,
    (StockHistoricalDataEntity, $$StockHistoricalDataTableReferences),
    StockHistoricalDataEntity,
    PrefetchHooks Function({bool stockId})>;
typedef $$StockSignColumnsTableCreateCompanionBuilder
    = StockSignColumnsCompanion Function({
  Value<int> id,
  required String stockId,
  required String name,
  required String data,
  required DateTime updatedAt,
});
typedef $$StockSignColumnsTableUpdateCompanionBuilder
    = StockSignColumnsCompanion Function({
  Value<int> id,
  Value<String> stockId,
  Value<String> name,
  Value<String> data,
  Value<DateTime> updatedAt,
});

final class $$StockSignColumnsTableReferences extends BaseReferences<
    _$AppDatabase, $StockSignColumnsTable, StockSignColumnEntity> {
  $$StockSignColumnsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $StocksTable _stockIdTable(_$AppDatabase db) => db.stocks.createAlias(
      $_aliasNameGenerator(db.stockSignColumns.stockId, db.stocks.id));

  $$StocksTableProcessedTableManager get stockId {
    final manager = $$StocksTableTableManager($_db, $_db.stocks)
        .filter((f) => f.id($_item.stockId!));
    final item = $_typedResult.readTableOrNull(_stockIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$StockSignColumnsTableFilterComposer
    extends Composer<_$AppDatabase, $StockSignColumnsTable> {
  $$StockSignColumnsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get data => $composableBuilder(
      column: $table.data, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  $$StocksTableFilterComposer get stockId {
    final $$StocksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.stockId,
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

class $$StockSignColumnsTableOrderingComposer
    extends Composer<_$AppDatabase, $StockSignColumnsTable> {
  $$StockSignColumnsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get data => $composableBuilder(
      column: $table.data, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  $$StocksTableOrderingComposer get stockId {
    final $$StocksTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.stockId,
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

class $$StockSignColumnsTableAnnotationComposer
    extends Composer<_$AppDatabase, $StockSignColumnsTable> {
  $$StockSignColumnsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$StocksTableAnnotationComposer get stockId {
    final $$StocksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.stockId,
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

class $$StockSignColumnsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $StockSignColumnsTable,
    StockSignColumnEntity,
    $$StockSignColumnsTableFilterComposer,
    $$StockSignColumnsTableOrderingComposer,
    $$StockSignColumnsTableAnnotationComposer,
    $$StockSignColumnsTableCreateCompanionBuilder,
    $$StockSignColumnsTableUpdateCompanionBuilder,
    (StockSignColumnEntity, $$StockSignColumnsTableReferences),
    StockSignColumnEntity,
    PrefetchHooks Function({bool stockId})> {
  $$StockSignColumnsTableTableManager(
      _$AppDatabase db, $StockSignColumnsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StockSignColumnsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StockSignColumnsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StockSignColumnsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> stockId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> data = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              StockSignColumnsCompanion(
            id: id,
            stockId: stockId,
            name: name,
            data: data,
            updatedAt: updatedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String stockId,
            required String name,
            required String data,
            required DateTime updatedAt,
          }) =>
              StockSignColumnsCompanion.insert(
            id: id,
            stockId: stockId,
            name: name,
            data: data,
            updatedAt: updatedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$StockSignColumnsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({stockId = false}) {
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
                if (stockId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.stockId,
                    referencedTable:
                        $$StockSignColumnsTableReferences._stockIdTable(db),
                    referencedColumn:
                        $$StockSignColumnsTableReferences._stockIdTable(db).id,
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

typedef $$StockSignColumnsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $StockSignColumnsTable,
    StockSignColumnEntity,
    $$StockSignColumnsTableFilterComposer,
    $$StockSignColumnsTableOrderingComposer,
    $$StockSignColumnsTableAnnotationComposer,
    $$StockSignColumnsTableCreateCompanionBuilder,
    $$StockSignColumnsTableUpdateCompanionBuilder,
    (StockSignColumnEntity, $$StockSignColumnsTableReferences),
    StockSignColumnEntity,
    PrefetchHooks Function({bool stockId})>;
typedef $$MarketsTableCreateCompanionBuilder = MarketsCompanion Function({
  required String code,
  required String name,
  Value<int> id,
  required DateTime updatedAt,
});
typedef $$MarketsTableUpdateCompanionBuilder = MarketsCompanion Function({
  Value<String> code,
  Value<String> name,
  Value<int> id,
  Value<DateTime> updatedAt,
});

class $$MarketsTableFilterComposer
    extends Composer<_$AppDatabase, $MarketsTable> {
  $$MarketsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $$MarketsTableOrderingComposer
    extends Composer<_$AppDatabase, $MarketsTable> {
  $$MarketsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$MarketsTableAnnotationComposer
    extends Composer<_$AppDatabase, $MarketsTable> {
  $$MarketsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$MarketsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MarketsTable,
    MarketEntity,
    $$MarketsTableFilterComposer,
    $$MarketsTableOrderingComposer,
    $$MarketsTableAnnotationComposer,
    $$MarketsTableCreateCompanionBuilder,
    $$MarketsTableUpdateCompanionBuilder,
    (MarketEntity, BaseReferences<_$AppDatabase, $MarketsTable, MarketEntity>),
    MarketEntity,
    PrefetchHooks Function()> {
  $$MarketsTableTableManager(_$AppDatabase db, $MarketsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MarketsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MarketsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MarketsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> code = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> id = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              MarketsCompanion(
            code: code,
            name: name,
            id: id,
            updatedAt: updatedAt,
          ),
          createCompanionCallback: ({
            required String code,
            required String name,
            Value<int> id = const Value.absent(),
            required DateTime updatedAt,
          }) =>
              MarketsCompanion.insert(
            code: code,
            name: name,
            id: id,
            updatedAt: updatedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MarketsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MarketsTable,
    MarketEntity,
    $$MarketsTableFilterComposer,
    $$MarketsTableOrderingComposer,
    $$MarketsTableAnnotationComposer,
    $$MarketsTableCreateCompanionBuilder,
    $$MarketsTableUpdateCompanionBuilder,
    (MarketEntity, BaseReferences<_$AppDatabase, $MarketsTable, MarketEntity>),
    MarketEntity,
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
  $$StockHistoricalDataTableTableManager get stockHistoricalData =>
      $$StockHistoricalDataTableTableManager(_db, _db.stockHistoricalData);
  $$StockSignColumnsTableTableManager get stockSignColumns =>
      $$StockSignColumnsTableTableManager(_db, _db.stockSignColumns);
  $$MarketsTableTableManager get markets =>
      $$MarketsTableTableManager(_db, _db.markets);
}
