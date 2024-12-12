import 'package:equatable/equatable.dart';

class Sector extends Equatable {
  final String id;
  final String name;
  final DateTime updatedAt;

  const Sector({
    required this.id,
    required this.name,
    required this.updatedAt,
  });

  @override
  List<Object> get props => [id, name, updatedAt];
} 