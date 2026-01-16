import 'package:drift/drift.dart';
import 'package:rummi_assistant/core/data/stored/app_database.dart';
import 'package:rummi_assistant/feature/game/data/stored/model/stored_game.dart';

part 'games_dao.g.dart';

@DriftAccessor(tables: [StoredGames])
class GamesDao extends DatabaseAccessor<AppDatabase> with _$GamesDaoMixin {
  GamesDao(super.attachedDatabase);

  /// Get the current game (not finished)
  Future<StoredGame?> getCurrentGame() =>
      (select(storedGames)..where((tbl) => tbl.isFinished.equals(false))).getSingleOrNull();

  /// Watch the current game (not finished)
  Stream<StoredGame?> watchCurrentGame() =>
      (select(storedGames)..where((tbl) => tbl.isFinished.equals(false))).watchSingleOrNull();

  /// Watch all finished games ordered by creation date descending
  Stream<List<StoredGame>> watchFinishedGames() => (select(storedGames)
        ..where((tbl) => tbl.isFinished.equals(true))
        ..orderBy([(tbl) => OrderingTerm.desc(tbl.createdAt)]))
      .watch();

  /// Watch a specific game by ID
  Stream<StoredGame?> watchGameById(int id) =>
      (select(storedGames)..where((tbl) => tbl.id.equals(id))).watchSingleOrNull();

  /// Delete all current (unfinished) games
  Future<int> deleteAllCurrentGames() =>
      (delete(storedGames)..where((tbl) => tbl.isFinished.equals(false))).go();

  /// Insert or update a game
  Future<int> insertGame(StoredGamesCompanion game) =>
      into(storedGames).insert(game, mode: InsertMode.insertOrReplace);

  /// Delete a game by ID (cascade will delete related players)
  Future<int> deleteGameById(int id) =>
      (delete(storedGames)..where((tbl) => tbl.id.equals(id))).go();
}
