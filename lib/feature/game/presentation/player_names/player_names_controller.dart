import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/feature/game/game.dart';
import 'package:rummi_assistant/feature/game/presentation/player_names/player_names_state.dart';

final playerNamesControllerProvider =
    NotifierProvider.autoDispose<PlayerNamesController, PlayerNamesState>(
      PlayerNamesController.new,
    );

class PlayerNamesController extends Notifier<PlayerNamesState> {
  late final GoRouter _router = GetIt.instance.get();
  late final GameManager _gameManager = GetIt.instance.get();

  @override
  PlayerNamesState build() {
    final List<Player> players;
    players = _gameManager.currentGame!.players;

    return PlayerNamesState.initial(players);
  }

  void onPlayerNameChanged({required int index, required String name}) {
    final playerNames = List<String>.from(state.playerNames);
    playerNames[index] = name;
    state = state.copyWith(playerNames: playerNames);
  }

  void onSubmitted({required int index}) {
    if (index < state.playerNames.length - 1) {
      state.focusNodes[index + 1].requestFocus();
    } else {
      onConfirmButtonPressed();
    }
  }

  void onConfirmButtonPressed() {
    if (state.isConfirmButtonEnabled) {
      _router.pop(state.trimmedNames);
    }
  }
}
