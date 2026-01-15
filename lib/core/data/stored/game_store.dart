import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:rummi_assistant/game/domain/repository/game_repository.dart';
import 'package:rummi_assistant/game/data/stored/mapping/game.dart';
import 'package:rummi_assistant/game/data/stored/mapping/player.dart';
import 'package:rummi_assistant/game/data/stored/model/stored_game.dart';
import 'package:rummi_assistant/game/domain/model/game.dart';
import 'package:rummi_assistant/game/domain/model/player.dart';

class GameStore implements GameRepository {
  late final Isar _isar = GetIt.instance.get();

  IsarCollection<StoredGame> get games => _isar.storedGames;

  @override
  Future<void> performMigrationIfNeeded() async {
    // No migration required
  }

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
}
