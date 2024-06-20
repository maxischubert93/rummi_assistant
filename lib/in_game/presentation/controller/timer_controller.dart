import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/in_game/presentation/controller/timer_state.dart';

final timerControllerProvider =
    StateNotifierProvider.autoDispose<TimerController, TimerState>((ref) => TimerController());

class TimerController extends StateNotifier<TimerState> {
  TimerController() : super(TimerState.initial()) {
    _gameSubscription = _gameManager.currentGameStream.listen((game) {
      if (game != null) {
        state = state.copyWith(timerDuration: game.timerDuration);
      }
    });
  }

  late final GameManager _gameManager = GetIt.instance.get();
  StreamSubscription<Game?>? _gameSubscription;

  Timer? _timer;

  void start() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (state.secondsPassed < state.timerDuration.inSeconds) {
        state = state.copyWith(secondsPassed: state.secondsPassed + 1);
      } else {
        _timer?.cancel();
        state = state.copyWith(isRunning: false);
      }
    });
    state = state.copyWith(isRunning: true);
  }

  void stop() {
    _timer?.cancel();
    state = state.copyWith(isRunning: false);
  }

  void reset() {
    _timer?.cancel();
    state = state.copyWith(secondsPassed: 0);
    start();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _gameSubscription?.cancel();
    super.dispose();
  }
}
