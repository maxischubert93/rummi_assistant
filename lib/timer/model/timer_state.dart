import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_state.freezed.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState({
    required Duration timeLeft,
    required bool isRunning,
  }) = _TimerState;

  factory TimerState.initial({required Duration timerDuration}) => TimerState(
        timeLeft: timerDuration,
        isRunning: false,
      );

  const TimerState._();

  String get timerText {
    return timeLeft.inSeconds.toString();
  }
}
