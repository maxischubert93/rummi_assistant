import 'package:rummi_assistant/feature/game/game.dart';

abstract class GameRepository {
  Future<Game> newGame({
    required Duration timerDuration,
    required List<Player> players,
  });

  Future<void> updateGame(Game game);

  Future<void> deleteGame(Game game);

  Future<void> performMigrationIfNeeded();

  Stream<Game?> watchCurrentGame();

  Stream<List<Game>> watchFinishedGames();

  Future<Game?> getCurrentGame();

  Stream<Game?> watchGameWithId(int gameId);
}
