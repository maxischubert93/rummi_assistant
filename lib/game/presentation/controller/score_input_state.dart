import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_input_state.freezed.dart';

@freezed
class ScoreInputState with _$ScoreInputState {
  const factory ScoreInputState({
    required List<PlayerRoundScore> playerScores,
  }) = _ScoreInputState;

  factory ScoreInputState.initial({required List<String> playerNames}) => ScoreInputState(
        playerScores: playerNames
            .map(
              (name) => PlayerRoundScore(
                playerName: name,
                focusNode: FocusNode(),
              ),
            )
            .toList(),
      );

  const ScoreInputState._();

  int get playerCount => playerScores.length;

  bool get isSubmitEnabled => playerScores.every((score) => score.isScoreValid) && hasWinner;

  List<PlayerRoundScore> get losingPlayerScores =>
      playerScores.where((score) => !score.wonRound).toList();

  bool get hasWinner => playerScores.any((score) => score.wonRound);
}

@freezed
class PlayerRoundScore with _$PlayerRoundScore {
  const factory PlayerRoundScore({
    required String playerName,
    required FocusNode focusNode,
    String? score,
    @Default(false) bool wonRound,
  }) = _PlayerRoundScore;

  const PlayerRoundScore._();

  bool get isScoreValid => score != null && score!.isNotEmpty || wonRound;

  int get scoreValue => int.tryParse(score ?? '') ?? 0;
}
