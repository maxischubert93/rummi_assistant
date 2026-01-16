import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/feature/game/game.dart';
import 'package:rummi_assistant/feature/game/presentation/controller/score_state.dart';

final scoreScreenIdProvider = Provider.autoDispose<int?>((ref) => null);

final scoreControllerProvider = StateNotifierProvider.autoDispose<ScoreController, ScoreState>(
  (ref) {
    final gameId = ref.watch(scoreScreenIdProvider);
    return ScoreController(gameId);
  },
  dependencies: [scoreScreenIdProvider],
);

class ScoreController extends StateNotifier<ScoreState> {
  ScoreController(int? gameId) : super(ScoreState.initial(canEdit: gameId == null)) {
    _gameSubscription = switch (gameId != null) {
      true => _gameManager.gameWithIdStream(gameId!),
      false => _gameManager.currentGameStream,
    }
        .filterNull()
        .listen((game) {
      state = state.copyWith(players: game.players);
    });
  }

  late final GameManager _gameManager = GetIt.instance.get();
  late final GoRouter _router = GetIt.instance.get();

  StreamSubscription<Game?>? _gameSubscription;

  Future<void> addScore() async {
    await _router.pushNamed(RouteNames.scoreInputModal);
  }

  @override
  void dispose() {
    _gameSubscription?.cancel();
    super.dispose();
  }
}
