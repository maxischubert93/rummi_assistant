import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/feature/game/game.dart';
import 'package:rummi_assistant/feature/game/presentation/controller/score_state.dart';

final scoreScreenIdProvider = Provider.autoDispose<int?>((ref) => null);

final scoreControllerProvider = NotifierProvider.autoDispose<ScoreController, ScoreState>(
  ScoreController.new,
  dependencies: [scoreScreenIdProvider],
);

class ScoreController extends Notifier<ScoreState> {
  late final GameManager _gameManager = GetIt.instance.get();
  late final GoRouter _router = GetIt.instance.get();

  StreamSubscription<Game?>? _gameSubscription;

  @override
  ScoreState build() {
    final gameId = ref.watch(scoreScreenIdProvider);

    _gameSubscription =
        switch (gameId != null) {
          true => _gameManager.gameWithIdStream(gameId!),
          false => _gameManager.currentGameStream,
        }.filterNull().listen((game) {
          state = state.copyWith(players: game.players);
        });

    ref.onDispose(() {
      _gameSubscription?.cancel();
    });

    return ScoreState.initial(canEdit: gameId == null);
  }

  Future<void> addScore() async {
    await _router.pushNamed(RouteNames.scoreInputModal);
  }
}
