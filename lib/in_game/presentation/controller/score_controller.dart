import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/app/app.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/in_game/presentation/controller/score_state.dart';

final scoreControllerProvider =
    StateNotifierProvider.autoDispose<ScoreController, ScoreState>((ref) {
  return ScoreController();
});

class ScoreController extends StateNotifier<ScoreState> {
  ScoreController() : super(ScoreState.initial()) {
    _gameSubscription = _gameManager.currentGameStream.filterNull().listen((game) {
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
