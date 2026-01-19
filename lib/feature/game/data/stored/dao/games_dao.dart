import 'package:drift/drift.dart';
import 'package:rummi_assistant/core/data/stored/app_database.dart';
import 'package:rummi_assistant/feature/game/data/stored/model/stored_game.dart';
import 'package:rummi_assistant/feature/game/data/stored/model/stored_game_with_players.dart';

part 'games_dao.g.dart';

@DriftAccessor(tables: [StoredGames, StoredPlayers])
class GamesDao extends DatabaseAccessor<AppDatabase> with _$GamesDaoMixin {
  GamesDao(super.attachedDatabase);

  Join<HasResultSet, dynamic> get _playersJoin => leftOuterJoin(
    storedPlayers,
    storedPlayers.gameId.equalsExp(storedGames.id),
  );

  /// Get the current game (not finished) with players using JOIN
  Future<StoredGameWithPlayers?> getCurrentGame() async {
    final query = select(storedGames).join([_playersJoin])
      ..where(storedGames.isFinished.equals(false));

    final results = await query.get();
    return _mapToGameWithPlayers(results);
  }

  /// Get the last finished game with players using JOIN
  Future<StoredGameWithPlayers?> getLastGame() async {
    final query = select(storedGames).join([_playersJoin])
      ..where(storedGames.isFinished.equals(true))
      ..orderBy([OrderingTerm.desc(storedGames.createdAt)]);

    final results = await query.get();
    if (results.isEmpty) return null;

    // Get only the first game's results
    final firstGameId = results.first.readTable(storedGames).id;
    final firstGameResults = results
        .where((row) => row.readTable(storedGames).id == firstGameId)
        .toList();
    return _mapToGameWithPlayers(firstGameResults);
  }

  /// Watch the current game (not finished) with players using JOIN
  Stream<StoredGameWithPlayers?> watchCurrentGame() {
    final query = select(storedGames).join([_playersJoin])
      ..where(storedGames.isFinished.equals(false));

    return query.watch().map(_mapToGameWithPlayers);
  }

  /// Watch all finished games with players using JOIN
  Stream<List<StoredGameWithPlayers>> watchFinishedGames() {
    final query = select(storedGames).join([_playersJoin])
      ..where(storedGames.isFinished.equals(true))
      ..orderBy([OrderingTerm.desc(storedGames.createdAt)]);

    return query.watch().map(_mapToGameWithPlayersList);
  }

  /// Watch a specific game by ID with players using JOIN
  Stream<StoredGameWithPlayers?> watchGameById(int id) {
    final query = select(storedGames).join([_playersJoin])..where(storedGames.id.equals(id));

    return query.watch().map(_mapToGameWithPlayers);
  }

  /// Delete all current (unfinished) games
  Future<void> deleteAllCurrentGames() =>
      (delete(storedGames)..where((tbl) => tbl.isFinished.equals(false))).go();

  /// Create a new game with players
  Future<StoredGameWithPlayers> createGame({
    required Duration timerDuration,
    required List<String> playerNames,
  }) async {
    final gameCompanion = StoredGamesCompanion(
      timerDurationInSeconds: Value(timerDuration.inSeconds),
      isFinished: const Value(false),
      createdAt: Value(DateTime.now()),
    );

    await transaction(() async {
      final gameId = await into(storedGames).insert(gameCompanion);
      final players = playerNames
          .map(
            (playerName) => StoredPlayersCompanion(
              gameId: Value(gameId),
              name: Value(playerName),
              scores: const Value(<int>[]),
            ),
          )
          .toList();
      await batch((batch) {
        batch.insertAllOnConflictUpdate(
          storedPlayers,
          players,
        );
      });
    });

    final created = await getCurrentGame();
    assert(created != null, 'Created game should exist after insertion');

    return created!;
  }

  Future<void> updateGame(StoredGameWithPlayers game) async {
    await transaction(() async {
      await update(storedGames).replace(game.game);
      await batch((batch) {
        batch.insertAllOnConflictUpdate(
          storedPlayers,
          game.players,
        );
      });
    });
  }

  /// Delete a game by ID (cascade will delete related players)
  Future<void> deleteGameById(int id) =>
      (delete(storedGames)..where((tbl) => tbl.id.equals(id))).go();

  /// Helper to map JOIN results to a single StoredGameWithPlayers
  StoredGameWithPlayers? _mapToGameWithPlayers(List<TypedResult> results) {
    if (results.isEmpty) return null;

    final game = results.first.readTable(storedGames);
    final players = results
        .map((row) => row.readTableOrNull(storedPlayers))
        .whereType<StoredPlayer>()
        .toList();

    return StoredGameWithPlayers(game, players);
  }

  /// Helper to map JOIN results to a list of StoredGameWithPlayers
  List<StoredGameWithPlayers> _mapToGameWithPlayersList(List<TypedResult> results) {
    final gameMap = <int, StoredGameWithPlayers>{};

    for (final row in results) {
      final game = row.readTable(storedGames);
      final player = row.readTableOrNull(storedPlayers);

      if (!gameMap.containsKey(game.id)) {
        gameMap[game.id] = StoredGameWithPlayers(game, []);
      }

      if (player != null) {
        gameMap[game.id]!.players.add(player);
      }
    }

    return gameMap.values.toList();
  }
}
