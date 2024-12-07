import 'package:equatable/equatable.dart';

sealed class Exceptions extends Equatable {
  final String message;

  const Exceptions(this.message);
}

class LocalDatabaseException extends Exceptions {
  const LocalDatabaseException(super.message);

  @override
  List<Object?> get props => [message];
}
