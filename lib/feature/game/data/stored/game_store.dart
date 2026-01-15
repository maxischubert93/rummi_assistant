import 'package:isar/isar.dart';
import 'package:rummi_assistant/feature/game/data/stored/mapping/game.dart';
import 'package:rummi_assistant/feature/game/data/stored/mapping/player.dart';
import 'package:rummi_assistant/feature/game/data/stored/model/stored_game.dart';
import 'package:rummi_assistant/feature/game/domain/model/game.dart';
import 'package:rummi_assistant/feature/game/domain/model/player.dart';
import 'package:rummi_assistant/feature/game/domain/repository/game_repository.dart';

class GameStore implements GameRepository {
  GameStore(this._isar);

  final Isar _isar;

  IsarCollection<StoredGame> get games => _isar.storedGames;

  @override
  Future<Game> newGame({
    required Duration timerDuration,
    required List<Player> players,
  }) async {
    final game = StoredGame()
      ..timerDurationInSeconds = timerDuration.inSeconds
      ..isFinished = false
      ..createdAt = DateTime.now()
      ..players = players.map((player) => player.toStored()).toList();
    await _isar.writeTxn(() async {
      await games.filter().isFinishedEqualTo(false).deleteAll();
      await games.put(game);
    });
    return game.toDomain();
  }

  @override
  Future<void> updateGame(Game game) async {
    await _isar.writeTxn(() async {
      await games.put(game.toStored());
    });
  }

  @override
  Stream<Game?> watchCurrentGame() {
    return games
        .filter()
        .isFinishedEqualTo(false)
        .watch()
        .map((game) => game.firstOrNull?.toDomain());
  }

  @override
  Stream<List<Game>> watchFinishedGames() {
    return games
        .filter()
        .isFinishedEqualTo(true)
        .sortByCreatedAtDesc()
        .watch(fireImmediately: true)
        .map((games) => games.map((game) => game.toDomain()).toList());
  }

  @override
  Future<Game?> getCurrentGame() async {
    final storedGame = await games.filter().isFinishedEqualTo(false).findFirst();
    return storedGame?.toDomain();
  }

  @override
  Future<void> deleteGame(Game game) {
    return _isar.writeTxn(() async {
      await games.delete(game.id);
    });
  }

  @override
  Stream<Game?> watchGameWithId(int gameId) {
    return games
        .filter()
        .idEqualTo(gameId)
        .watch(fireImmediately: true)
        .map((game) => game.firstOrNull?.toDomain());
  }

  /// Get all games (internal use only, e.g., for migration)
  /// Not part of GameRepository interface
  Future<List<Game>> getAllGames() async {
    final storedGames = await games.where().findAll();
    return storedGames.map((game) => game.toDomain()).toList();
  }
}
