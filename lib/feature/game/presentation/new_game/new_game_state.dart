import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rummi_assistant/feature/game/presentation/new_game/new_game_config.dart';
import 'package:rummi_assistant/feature/game/presentation/player_names/player_names_state.dart';

part 'new_game_state.freezed.dart';

@freezed
abstract class NewGameState with _$NewGameState {
  const factory NewGameState({
    required Duration timerDuration,
    required int amountOfPlayers,
    required List<String> playerNames,
    required List<FocusNode> focusNodes,
  }) = _NewGameState;

  factory NewGameState.fromConfig({
    required NewGameConfig newGameConfig,
  }) => NewGameState(
    timerDuration: newGameConfig.timerDuration,
    amountOfPlayers: newGameConfig.amountOfPlayers,
    playerNames: [],
    focusNodes: List.generate(
      4,
      (_) => FocusNode(),
    ),
  );

  const NewGameState._();

  // Check that there are no empty player names
  bool get isContinueToTimerButtonEnabled => playerNames.every((name) => name.trim().isNotEmpty);

  bool get areNamesValid => trimmedNames.every((name) => name.isNotEmpty);

  bool get areNamesUnique => trimmedNames.toSet().length == playerNames.length;

  bool get isConfirmButtonEnabled => areNamesValid && areNamesUnique;

  List<String> get trimmedNames => playerNames.map((name) => name.trim()).toList();

  ErrorCase? get errorCase {
    if (!areNamesValid) {
      return ErrorCase.emptyName;
    }
    if (!areNamesUnique) {
      return ErrorCase.duplicateName;
    }
    return null;
  }
}
