import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rummi_assistant/feature/game/game.dart';
import 'package:rummi_assistant/feature/home/util/player_list.dart';

part 'new_game_state.freezed.dart';

@freezed
abstract class NewGameState with _$NewGameState {
  const factory NewGameState({
    required Duration timerDuration,
    required int amountOfPlayers,
    required List<String> playerNames,
  }) = _NewGameState;

  factory NewGameState.initial({
    Duration timerDuration = const Duration(minutes: 1),
    int amountOfPlayers = 2,
    // TODO: localize default player names
    List<String> playerNames = const ['Player 1', 'Player 2'],
  }) => NewGameState(
    timerDuration: timerDuration,
    amountOfPlayers: amountOfPlayers,
    playerNames: playerNames,
  );
}
