import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/timer/model/timer_state.dart';

final timerControllerProvider =
    StateNotifierProvider.autoDispose<TimerController, TimerState>((ref) => TimerController());

class TimerController extends StateNotifier<TimerState> {
  TimerController() : super(TimerState.initial(timerDuration: _initialDuration));

  Timer? _timer;

  static const _initialDuration = Duration(minutes: 1);

  void start() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (state.timeLeft.inSeconds > 0) {
        state = state.copyWith(timeLeft: state.timeLeft - const Duration(seconds: 1));
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
    state = TimerState.initial(timerDuration: _initialDuration);
    start();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
