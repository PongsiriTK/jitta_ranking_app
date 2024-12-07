import 'dart:convert';

class StockModel {
  final String id;
  final String symbol;
  final String name;
  StockModel({
    required this.id,
    required this.symbol,
    required this.name,
  });

  StockModel copyWith({
    String? id,
    String? symbol,
    String? name,
  }) {
    return StockModel(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'symbol': symbol,
      'name': name,
    };
  }

  factory StockModel.fromMap(Map<String, dynamic> map) {
    return StockModel(
      id: map['id'] ?? '',
      symbol: map['symbol'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory StockModel.fromJson(String source) => StockModel.fromMap(json.decode(source));

  @override
  String toString() => 'StockModel(id: $id, symbol: $symbol, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is StockModel &&
      other.id == id &&
      other.symbol == symbol &&
      other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ symbol.hashCode ^ name.hashCode;
}
