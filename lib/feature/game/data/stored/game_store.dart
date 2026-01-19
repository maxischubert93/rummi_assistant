import 'package:get_it/get_it.dart';
import 'package:rummi_assistant/core/data/stored/app_database.dart';
import 'package:rummi_assistant/feature/game/data/stored/dao/games_dao.dart';
import 'package:rummi_assistant/feature/game/data/stored/mapping/game.dart';
import 'package:rummi_assistant/feature/game/domain/model/game.dart';
import 'package:rummi_assistant/feature/game/domain/repository/game_repository.dart';

class GameStoreDrift implements GameRepository {
  late final AppDatabase _db = GetIt.instance.get();

  GamesDao get _gamesDao => _db.gamesDao;

  @override
  Future<void> deleteRunningGames() async {
    await _gamesDao.deleteAllCurrentGames();
  }

  @override
  Future<Game> newGame({
    required Duration timerDuration,
    required List<String> playerNames,
  }) async {
    final created = await _gamesDao.createGame(
      timerDuration: timerDuration,
      playerNames: playerNames,
    );
    return created.toDomain();
  }

  @override
  Future<void> updateGame(Game game) async {
    await _gamesDao.updateGame(game.toStored());
  }

  @override
  Stream<Game?> watchCurrentGame() {
    return _gamesDao.watchCurrentGame().map((game) {
      return game?.toDomain();
    });
  }

  @override
  Stream<List<Game>> watchFinishedGames() {
    return _gamesDao.watchFinishedGames().map((gamesWithPlayers) {
      return gamesWithPlayers.map((game) => game.toDomain()).toList();
    });
  }

  Future<Game?> getLastGame() async {
    final game = await _gamesDao.getLastGame();
    return game?.toDomain();
  }

  @override
  Future<Game?> getCurrentGame() async {
    final game = await _gamesDao.getCurrentGame();
    return game?.toDomain();
  }

  @override
  Future<void> deleteGame(Game game) async {
    await _gamesDao.deleteGameById(game.id);
  }

  @override
  Stream<Game?> watchGameWithId(int gameId) {
    return _gamesDao.watchGameById(gameId).map((game) {
      return game?.toDomain();
    });
  }
}
