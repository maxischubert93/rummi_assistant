import 'package:rummi_assistant/core/domain/game.dart';

abstract class GameRepository {
  Future<Game> newGame({required Duration timerDuration});

  Future<void> updateGame(Game game);

  Stream<Game?> currentGame();
}
