import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/feature/game/game.dart';
import 'package:rummi_assistant/feature/game/presentation/controller/game_history_state.dart';

final gameHistoryControllerProvider =
    NotifierProvider.autoDispose<GameHistoryController, GameHistoryState>(GameHistoryController.new);

class GameHistoryController extends Notifier<GameHistoryState> {
  late final StreamSubscription<List<Game>> _subscription;
  late final GameRepository _gameRepository = GetIt.instance.get();
  late final GoRouter _router = GetIt.instance.get();

  @override
  GameHistoryState build() {
    _subscription = _gameRepository.watchFinishedGames().listen((games) {
      state = state.copyWith(games: games);
    });

    ref.onDispose(() {
      _subscription.cancel();
    });

    return GameHistoryState.initial();
  }

  Future<void> onGameTap(Game game) async {
    await _router.pushNamed(RouteNames.gameDetail, extra: game.id);
  }
}
