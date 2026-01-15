import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';
import 'package:rummi_assistant/core/data/stored/app_database.dart';
import 'package:rummi_assistant/feature/game/data/stored/dao/games_dao.dart';
import 'package:rummi_assistant/feature/game/data/stored/dao/players_dao.dart';
import 'package:rummi_assistant/feature/game/data/stored/mapping/game_drift.dart';
import 'package:rummi_assistant/feature/game/data/stored/mapping/player_drift.dart';
import 'package:rummi_assistant/feature/game/domain/model/game.dart';
import 'package:rummi_assistant/feature/game/domain/model/player.dart';
import 'package:rummi_assistant/feature/game/domain/repository/game_repository.dart';

class GameStoreDrift implements GameRepository {
  late final AppDatabase _db = GetIt.instance.get();

  GamesDao get _gamesDao => _db.gamesDao;

  PlayersDao get _playersDao => _db.playersDao;

  @override
  Future<Game> newGame({
    required Duration timerDuration,
    required List<Player> players,
  }) async {
    // Delete any existing current game
    await _gamesDao.deleteAllCurrentGames();

    // Insert the new game
    final gameId = await _gamesDao.insertGame(
      StoredGamesCompanion.insert(
        timerDurationInSeconds: timerDuration.inSeconds,
        isFinished: const Value(false),
        createdAt: DateTime.now(),
      ),
    );

    // Insert players for the new game
    final playerCompanions = players.map((player) => player.toStoredCompanion(gameId)).toList();
    await _playersDao.insertPlayers(playerCompanions);

    // Fetch and return the newly created game
    final storedGame = await _gamesDao.getCurrentGame();
    final storedPlayers = await _playersDao.getPlayersByGameId(gameId);

    return storedGame!.toDomain(storedPlayers);
  }

  @override
  Future<void> updateGame(Game game) async {
    // Update the game
    await _gamesDao.insertGame(game.toStoredCompanion());

    // Update players - delete existing and re-insert
    await _db.transaction(() async {
      // Delete existing players for this game
      await (_db.delete(_db.storedPlayers)..where((tbl) => tbl.gameId.equals(game.id))).go();

      // Insert updated players
      final playerCompanions =
          game.players.map((player) => player.toStoredCompanion(game.id)).toList();
      await _playersDao.insertPlayers(playerCompanions);
    });
  }

  @override
  Stream<Game?> watchCurrentGame() {
    return _gamesDao.watchCurrentGame().asyncMap((storedGame) async {
      if (storedGame == null) return null;
      final players = await _playersDao.getPlayersByGameId(storedGame.id);
      return storedGame.toDomain(players);
    });
  }

  @override
  Stream<List<Game>> watchFinishedGames() {
    return _gamesDao.watchFinishedGames().asyncMap((storedGames) async {
      final games = <Game>[];
      for (final storedGame in storedGames) {
        final players = await _playersDao.getPlayersByGameId(storedGame.id);
        games.add(storedGame.toDomain(players));
      }
      return games;
    });
  }

  @override
  Future<Game?> getCurrentGame() async {
    final storedGame = await _gamesDao.getCurrentGame();
    if (storedGame == null) return null;

    final players = await _playersDao.getPlayersByGameId(storedGame.id);
    return storedGame.toDomain(players);
  }

  @override
  Future<void> deleteGame(Game game) async {
    await _gamesDao.deleteGameById(game.id);
  }

  @override
  Stream<Game?> watchGameWithId(int gameId) {
    return _gamesDao.watchGameById(gameId).asyncMap((storedGame) async {
      if (storedGame == null) return null;
      final players = await _playersDao.getPlayersByGameId(storedGame.id);
      return storedGame.toDomain(players);
    });
  }
}
