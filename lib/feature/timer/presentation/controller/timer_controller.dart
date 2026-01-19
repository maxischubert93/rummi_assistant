import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:rummi_assistant/core/util/assets/assets.gen.dart';
import 'package:rummi_assistant/feature/game/game.dart';
import 'package:rummi_assistant/feature/timer/domain/timer_alert_player.dart';
import 'package:rummi_assistant/feature/timer/presentation/controller/timer_state.dart';

final timerControllerProvider = NotifierProvider.autoDispose<TimerController, TimerState>(
  TimerController.new,
);

class TimerController extends Notifier<TimerState> {
  static const int _timerInterval = 50;
  static const int _tickerSeconds = 10;
  late final GameManager _gameManager = GetIt.instance.get();
  late final TimerAlertPlayer _alertPlayer = GetIt.instance.get(param1: Assets.sounds.timerAlert);
  late final TimerAlertPlayer _tickerPlayer = GetIt.instance.get(param1: Assets.sounds.ticking);
  StreamSubscription<Game?>? _gameSubscription;

  Timer? _timer;

  @override
  TimerState build() {
    _gameSubscription = _gameManager.currentGameStream.listen((game) {
      if (game != null) {
        state = state.copyWith(timerDuration: game.timerDuration);
      }
    });

    ref.onDispose(() {
      _timer?.cancel();
      _gameSubscription?.cancel();
      _alertPlayer.dispose();
      _tickerPlayer.dispose();
    });

    return TimerState.initial();
  }

  void start() {
    _timer = Timer.periodic(const Duration(milliseconds: _timerInterval), _onTick);
    state = state.copyWith(isRunning: true);
    if (state.secondsLeft < _tickerSeconds) {
      _tickerPlayer.play();
    }
  }

  void _onTick(Timer timer) {
    if (state.secondsLeft == _tickerSeconds) {
      _tickerPlayer.play();
    }
    if (state.millisPassed < state.timerDuration.inMilliseconds) {
      state = state.copyWith(millisPassed: state.millisPassed + _timerInterval);
    } else {
      _onTimerEnded();
    }
  }

  Future<void> _onTimerEnded() async {
    _timer?.cancel();
    state = state.copyWith(isRunning: false);
    await _tickerPlayer.stop();
    await _alertPlayer.play();
  }

  void togglePause() {
    if (state.isRunning) {
      _timer?.cancel();
      stopAudio();
      state = state.copyWith(isRunning: false);
    } else {
      start();
    }
  }

  void stopAndReset() {
    _timer?.cancel();
    stopAudio();
    state = state.copyWith(isRunning: false, millisPassed: 0);
  }

  void reset() {
    _timer?.cancel();
    stopAudio();
    state = state.copyWith(millisPassed: 0);
    start();
  }

  Future<void> stopAudio() async {
    await _alertPlayer.stop();
    await _tickerPlayer.stop();
  }
}
