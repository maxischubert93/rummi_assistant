import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_state.freezed.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState({
    required int secondsPassed,
    required Duration timerDuration,
    required bool isRunning,
  }) = _TimerState;

  factory TimerState.initial() => const TimerState(
        secondsPassed: 0,
        timerDuration: Duration(minutes: 1),
        isRunning: false,
      );

  const TimerState._();

  String get timerText {
    return max(timerDuration.inSeconds - secondsPassed, 0).toString();
  }
}
