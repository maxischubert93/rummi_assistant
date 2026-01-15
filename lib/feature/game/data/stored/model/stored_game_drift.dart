import 'package:drift/drift.dart';

/// Drift table definition for games
class StoredGames extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get timerDurationInSeconds => integer()();

  BoolColumn get isFinished => boolean().withDefault(const Constant(false))();

  DateTimeColumn get createdAt => dateTime()();

  @override
  String get tableName => 'games';
}

/// Drift table definition for players (as separate table with foreign key)
class StoredPlayers extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get gameId => integer().references(StoredGames, #id, onDelete: KeyAction.cascade)();

  TextColumn get name => text()();

  /// Scores stored as comma-separated values
  /// We'll need to parse this when reading/writing
  TextColumn get scores => text()();

  @override
  String get tableName => 'players';
}
