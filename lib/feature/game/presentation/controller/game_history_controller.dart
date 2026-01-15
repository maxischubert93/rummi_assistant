import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/core/app/app.dart';
import 'package:rummi_assistant/feature/game/game.dart';
import 'package:rummi_assistant/feature/game/presentation/controller/game_history_state.dart';

final gameHistoryControllerProvider =
    StateNotifierProvider.autoDispose<GameHistoryController, GameHistoryState>((ref) {
  return GameHistoryController();
});

class GameHistoryController extends StateNotifier<GameHistoryState> {
  GameHistoryController() : super(GameHistoryState.initial()) {
    _init();
  }

  late final StreamSubscription<List<Game>> _subscription;
  late final GameRepository _gameRepository = GetIt.instance.get();
  late final GoRouter _router = GetIt.instance.get();

  void _init() {
    _subscription = _gameRepository.watchFinishedGames().listen((games) {
      state = state.copyWith(games: games);
    });
  }

  Future<void> onGameTap(Game game) async {
    await _router.pushNamed(RouteNames.gameDetail, extra: game.id);
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
