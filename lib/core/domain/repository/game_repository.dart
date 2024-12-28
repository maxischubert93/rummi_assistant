import 'package:rummi_assistant/core/domain/model/game.dart';
import 'package:rummi_assistant/core/domain/model/player.dart';

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
}
