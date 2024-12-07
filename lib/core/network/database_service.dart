import 'package:jitta_ranking_app/core/error/exceptions.dart';
import 'package:jitta_ranking_app/data/models/stock_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  static Database? _database;

  Future<Database> getDatabase() async {
    if (_database == null) return _database!;

    _database = await _initDatabase();

    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'stock_db.db');

    return await openDatabase(path, version: 1, onCreate: (db, version) async {
      await db.execute('''
          CREATE TABLE stocks (
            id TEXT PRIMARY KEY,
            stockId INTEGER,
            rank INTEGER,
            symbol TEXT,
            exchange TEXT,
            title TEXT,
            nativeName TEXT,
            sector TEXT,
            industry TEXT,
            jittaScore REAL,
            lastUpdated TEXT
          )
        ''');
    });
  }

  Future<void> insertStock(StockModel stock) async {
    try {
      final db = await getDatabase();
      await db.insert('stocks', stock.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
    } catch (e) {
      throw LocalDatabaseException('Error inserting stock: $e');
    }
  }

  Future<List<StockModel>> getStocks({
    String? market,
    List<String>? sectors,
    int limit = 20,
    int offset = 0,
  }) async {
    try {
      String query = 'SELECT * FROM stocks';
      List<String> conditions = [];
      List<dynamic> args = [];

      if (market != null) {
        conditions.add('market = ?');
        args.add(market);
      }

      if (sectors != null && sectors.isNotEmpty) {
        conditions.add('sector IN (${sectors.map((e) => '?').join(',')})');
        args.addAll(sectors);
      }

      if (conditions.isNotEmpty) {
        query += ' WHERE ${conditions.join(' AND ')}';
      }

      query += ' LIMIT ? OFFSET ?';
      args.addAll([limit, offset]);

      final db = await getDatabase();

      final List<Map<String, dynamic>> maps = await db.rawQuery(query, args);

      return List.generate(maps.length, (i) => StockModel.fromMap(maps[i]));
    } catch (e) {
      throw LocalDatabaseException('Error getting stocks: $e');
    }
  }
}
