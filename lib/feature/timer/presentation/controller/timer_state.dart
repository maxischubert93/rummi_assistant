import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_state.freezed.dart';

@freezed
abstract class TimerState with _$TimerState {
  const factory TimerState({
    required int millisPassed,
    required Duration timerDuration,
    required bool isRunning,
  }) = _TimerState;

  factory TimerState.initial() => const TimerState(
        millisPassed: 0,
        timerDuration: Duration(minutes: 1),
        isRunning: false,
      );

  const TimerState._();

  String get timerText {
    final remainingUntilWholeSeconds = (timerDuration.inMilliseconds - millisPassed) % 1000;
    return max((timerDuration.inMilliseconds - millisPassed - remainingUntilWholeSeconds) / 1000, 0)
        .toInt()
        .toString();
  }

  int get secondsLeft => max((timerDuration.inMilliseconds - millisPassed) / 1000, 0).toInt();

  double get timerProgress => 1 - millisPassed / timerDuration.inMilliseconds;
}
