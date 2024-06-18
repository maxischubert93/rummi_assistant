import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required int playerAmount,
    required Duration timerDuration,
    required bool isCustomTimerSelected,
  }) = _HomeScreenState;

  factory HomeScreenState.initial() => const HomeScreenState(
        playerAmount: 2,
        timerDuration: Duration(minutes: 1),
    isCustomTimerSelected: false,
      );
}
