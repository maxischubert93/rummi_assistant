import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rummi_assistant/feature/game/domain/model/player.dart';

part 'game.freezed.dart';

@freezed
class Game with _$Game {
  const factory Game({
    required int id,
    required Duration timerDuration,
    required bool isFinished,
    required List<Player> players,
    required DateTime createdAt,
  }) = _Game;

  const Game._();

  // Multiple players could have the same score
  List<Player>? get winners {
    if (players.where((player) => player.scores.isEmpty).isNotEmpty) return null;

    final minScore = players.map((player) => player.totalScore).reduce(
          (value, element) => value < element ? value : element,
        );

    return players.where((player) => player.totalScore == minScore).toList();
  }
}
