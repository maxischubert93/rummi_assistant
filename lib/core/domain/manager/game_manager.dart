import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:rummi_assistant/core/domain/model/game.dart';
import 'package:rummi_assistant/core/domain/model/game_round.dart';
import 'package:rummi_assistant/core/domain/model/player.dart';
import 'package:rummi_assistant/core/domain/repository/game_repository.dart';
import 'package:rxdart/rxdart.dart';

class GameManager {
  GameManager() {
    _gameSubscription = _gameRepository.currentGame().listen(_currentGameSubject.add);
  }

  final GameRepository _gameRepository = GetIt.instance.get();
  final BehaviorSubject<Game?> _currentGameSubject = BehaviorSubject.seeded(null);

  Game? get currentGame => _currentGameSubject.value;

  Stream<Game?> get currentGameStream => _currentGameSubject.stream;

  bool get hasRunningGame => currentGame != null;

  late StreamSubscription<Game?> _gameSubscription;

  Future<void> newGame({
    required Duration timerDuration,
    required List<Player> players,
  }) async {
    final game = await _gameRepository.newGame(
      timerDuration: timerDuration,
      players: players,
    );
    _currentGameSubject.add(game);
  }

  Future<void> submitRoundScores(GameRound round) async {

  }

  void dispose() {
    _currentGameSubject.close();
    _gameSubscription.cancel();
  }
}
