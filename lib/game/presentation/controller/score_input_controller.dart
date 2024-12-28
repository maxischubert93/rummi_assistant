import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/game/domain/mapping/game_round.dart';
import 'package:rummi_assistant/game/presentation/controller/score_controller.dart';
import 'package:rummi_assistant/game/presentation/controller/score_input_state.dart';

final scoreInputControllerProvider =
    AutoDisposeNotifierProvider<ScoreInputController, ScoreInputState>(ScoreInputController.new);

class ScoreInputController extends AutoDisposeNotifier<ScoreInputState> {
  late final GoRouter _router = GetIt.instance.get();
  late final GameManager _gameManager = GetIt.instance.get();

  @override
  ScoreInputState build() {
    return ScoreInputState.initial(
      playerNames: ref.watch(
        scoreControllerProvider
            .select((state) => state.players.map((player) => player.name).toList()),
      ),
    );
  }

  Future<void> submitScore() async {
    await _gameManager.submitRoundScores(state.playerScores.toGameRound());
    _router.pop();
  }

  void onWinnerSelected({required int index}) {
    final updated = state.playerScores.mapIndexed((i, score) {
      if (i == index) {
        return score.copyWith(wonRound: true, score: null);
      }
      return score.copyWith(wonRound: false);
    }).toList();
    state = state.copyWith(playerScores: updated);
  }

  void onScoreChanged({required String playerName, required String? points}) {
    final updated = state.playerScores.map((score) {
      if (score.playerName == playerName) {
        return score.copyWith(score: points);
      }
      return score;
    }).toList();
    state = state.copyWith(playerScores: updated);
  }
}
