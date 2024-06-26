import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rummi_assistant/core/domain/model/player.dart';
import 'package:rummi_assistant/home/util/player_list.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required Duration timerDuration,
    required String? customTimerDuration,
    required List<Player> players,
  }) = _HomeScreenState;

  factory HomeScreenState.initial() => HomeScreenState(
        timerDuration: const Duration(minutes: 1),
        customTimerDuration: null,
        players: generatePlayersList(2),
      );

  const HomeScreenState._();

  bool get isCustomTimerSelected => customTimerDuration != null;

  Duration get selectedTimerDuration {
    if (isCustomTimerSelected) {
      return Duration(seconds: int.parse(customTimerDuration!));
    }
    return timerDuration;
  }

  int get playerAmount => players.length;
}
