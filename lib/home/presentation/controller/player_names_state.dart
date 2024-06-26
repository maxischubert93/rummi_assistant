import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rummi_assistant/core/domain/model/player.dart';

part 'player_names_state.freezed.dart';

@freezed
class PlayerNamesState with _$PlayerNamesState {
  const factory PlayerNamesState({
    required List<String> playerNames,
    required List<FocusNode> focusNodes,
  }) = _PlayerNamesState;

  factory PlayerNamesState.initial(List<Player> players) => PlayerNamesState(
        playerNames: players.map((player) => player.name).toList(),
        focusNodes: List.generate(players.length, (_) => FocusNode()),
      );

  const PlayerNamesState._();

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

enum ErrorCase {
  emptyName,
  duplicateName,
}
