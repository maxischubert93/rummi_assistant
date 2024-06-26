import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/in_game/domain/timer_alert_player.dart';
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

  static const int _timerInterval = 50;
  late final GameManager _gameManager = GetIt.instance.get();
  late final TimerAlertPlayer _alertPlayer = GetIt.instance.get();
  StreamSubscription<Game?>? _gameSubscription;

  Timer? _timer;

  void start() {
    _timer = Timer.periodic(const Duration(milliseconds: _timerInterval), _onTick);
    state = state.copyWith(isRunning: true);
  }

  void _onTick(Timer timer) {
    if (state.millisPassed < state.timerDuration.inMilliseconds) {
      state = state.copyWith(millisPassed: state.millisPassed + _timerInterval);
    } else {
      _onTimerEnded();
    }
  }

  Future<void> _onTimerEnded() async {
    _timer?.cancel();
    state = state.copyWith(isRunning: false);
    await _alertPlayer.play();
  }

  void togglePause() {
    if (state.isRunning) {
      _timer?.cancel();
      state = state.copyWith(isRunning: false);
    } else {
      start();
    }
  }

  void stopAndReset() {
    _timer?.cancel();
    _alertPlayer.stop();
    state = state.copyWith(isRunning: false, millisPassed: 0);
  }

  void reset() {
    _timer?.cancel();
    _alertPlayer.stop();
    state = state.copyWith(millisPassed: 0);
    start();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _gameSubscription?.cancel();
    _alertPlayer.dispose();
    super.dispose();
  }
}
