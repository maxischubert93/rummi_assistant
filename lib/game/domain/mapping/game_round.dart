import 'package:collection/collection.dart';
import 'package:rummi_assistant/core/domain/model/game_round.dart';
import 'package:rummi_assistant/game/presentation/controller/score_input_state.dart';

extension ToGameRound on List<PlayerRoundScore> {
  GameRound toGameRound() {
    final roundWinner = firstWhereOrNull((playerRoundScore) => playerRoundScore.wonRound);

    if (roundWinner == null) {
      throw Exception('Round winner not found');
    }

    final otherPlayers = where((playerRoundScore) => playerRoundScore != roundWinner);

    final scores = [
      PlayerScore(
        playerName: roundWinner.playerName,
        score: -1 *
            otherPlayers
                .map((playerRoundScore) => playerRoundScore.scoreValue)
                .reduce((value, element) => value + element),
      ),
      ...otherPlayers.map(
        (playerRoundScore) => PlayerScore(
          playerName: playerRoundScore.playerName,
          score: playerRoundScore.scoreValue,
        ),
      ),
    ];

    return GameRound(scores: scores);
  }
}
