import 'package:rummi_assistant/core/domain/model/game.dart';
import 'package:rummi_assistant/core/domain/model/player.dart';

abstract class GameRepository {
  Future<Game> newGame({
    required Duration timerDuration,
    required List<Player> players,
  });

  Future<void> updateGame(Game game);

  Stream<Game?> currentGame();
}
