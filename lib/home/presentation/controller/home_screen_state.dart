import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rummi_assistant/game/game.dart';
import 'package:rummi_assistant/home/util/player_list.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required Duration timerDuration,
    required List<Player> players,
  }) = _HomeScreenState;

  factory HomeScreenState.initial() => HomeScreenState(
        timerDuration: const Duration(minutes: 1),
        players: generatePlayersList(2),
      );

  const HomeScreenState._();

  int get playerAmount => players.length;
}
