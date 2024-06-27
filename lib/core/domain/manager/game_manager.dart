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

  Future<void> init() async {
    final game = await _gameRepository.getCurrentGame();
    _currentGameSubject.add(game);
  }

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
    if (currentGame == null) return;

    final updatedPlayers = currentGame!.players.map((player) {
      final roundScore = round.scores.firstWhere((score) => score.playerName == player.name);
      final newScores = [...player.scores, roundScore.score];
      return player.copyWith(scores: newScores);
    }).toList();

    final updatedGame = currentGame!.copyWith(
      players: updatedPlayers,
    );

    await _gameRepository.updateGame(updatedGame);
  }

  Future<void> finishCurrentGame() async {
    if (currentGame == null) return;

    final finishedGame = currentGame!.copyWith(
      isFinished: true,
    );

    await _gameRepository.updateGame(finishedGame);
  }

  Future<void> updatePlayerNames(List<String> names) async {
    if (currentGame == null) return;

    final updatedPlayers = names.map((name) {
      final player = currentGame!.players.firstWhere((player) => player.name == name);
      return player;
    }).toList();

    final updatedGame = currentGame!.copyWith(
      players: updatedPlayers,
    );

    await _gameRepository.updateGame(updatedGame);
  }

  void dispose() {
    _currentGameSubject.close();
    _gameSubscription.cancel();
  }
}
