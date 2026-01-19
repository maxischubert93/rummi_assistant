import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rummi_assistant/feature/game/game.dart';

part 'score_state.freezed.dart';

@freezed
abstract class ScoreState with _$ScoreState {
  const factory ScoreState({
    required List<Player> players,
    required bool canEdit,
  }) = _ScoreState;

  factory ScoreState.initial({required bool canEdit}) => ScoreState(
        canEdit: canEdit,
        players: [],
      );

  const ScoreState._();

  int get maxScoreRowCount {
    return players.map((player) => player.scores.length).reduce(
          (value, element) => value > element ? value : element,
        );
  }

  List<TotalPlayerScore> get totalPlayerScores {
    final minScore = players.map((player) => player.totalScore).reduce(
          (value, element) => value < element ? value : element,
        );
    return players.map((player) {
      final totalScore = player.totalScore;
      return TotalPlayerScore(
        totalScore: totalScore,
        isWinning: totalScore == minScore,
      );
    }).toList();
  }
}

@freezed
abstract class TotalPlayerScore with _$TotalPlayerScore {
  const factory TotalPlayerScore({
    required int totalScore,
    required bool isWinning,
  }) = _TotalPlayerScore;
}
