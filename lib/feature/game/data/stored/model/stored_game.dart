import 'package:drift/drift.dart';
import 'package:rummi_assistant/feature/game/data/stored/converter/scores_list_converter.dart';

class StoredGames extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get timerDurationInSeconds => integer()();

  BoolColumn get isFinished => boolean().withDefault(const Constant(false))();

  DateTimeColumn get createdAt => dateTime()();

  @override
  String get tableName => 'games';
}

class StoredPlayers extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get gameId => integer().references(StoredGames, #id, onDelete: KeyAction.cascade)();

  TextColumn get name => text()();

  TextColumn get scores => text().map(const ScoresListConverter())();

  @override
  String get tableName => 'players';
}
