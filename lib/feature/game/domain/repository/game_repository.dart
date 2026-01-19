import 'package:rummi_assistant/feature/game/game.dart';

abstract class GameRepository {
  Future<Game> newGame({
    required Duration timerDuration,
    required List<String> playerNames,
  });

  Future<void> updateGame(Game game);

  Future<void> deleteGame(Game game);

  Future<void> deleteRunningGames();

  Stream<Game?> watchCurrentGame();

  Stream<List<Game>> watchFinishedGames();

  Future<Game?> getCurrentGame();

  Future<Game?> getLastGame();

  Stream<Game?> watchGameWithId(int gameId);
}
