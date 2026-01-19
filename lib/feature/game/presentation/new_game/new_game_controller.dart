import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/core/extension/iterable.dart';
import 'package:rummi_assistant/core/presentation/navigation/route_names.dart';
import 'package:rummi_assistant/feature/game/game.dart';
import 'package:rummi_assistant/feature/game/presentation/new_game/new_game_config.dart';
import 'package:rummi_assistant/feature/game/presentation/new_game/new_game_state.dart';
import 'package:rummi_assistant/feature/game/util/player_list.dart';

final newGameConfigProvider = Provider<NewGameConfig>((_) => throw UnimplementedError());

final newGameControllerProvider = NotifierProvider.autoDispose<NewGameController, NewGameState>(
  NewGameController.new,
);

class NewGameController extends Notifier<NewGameState> {
  late final GoRouter _router = GetIt.instance.get();
  late final GameManager _gameManager = GetIt.instance.get();

  late final NewGameConfig _config;

  @override
  NewGameState build() {
    _config = ref.read(newGameConfigProvider);

    return NewGameState.fromConfig(newGameConfig: _config);
  }

  void onAmountOfPlayersChanged(int amountOfPlayers) {
    state = state.copyWith(amountOfPlayers: amountOfPlayers);
  }

  void onPlayerAmountStepFinished() {
    state = state.copyWith(
      playerNames: List<String>.generate(
        state.amountOfPlayers,
        (index) => _config.playerNames.tryElementAt(index) ?? generatePlayerName(index + 1),
      ),
      focusNodes: List.generate(
        state.amountOfPlayers,
        (_) => FocusNode(),
      ),
    );
  }

  void onPlayerNameStepFinished() {
    // route to timer step
  }

  void onTimerDurationChanged(Duration duration) {
    state = state.copyWith(timerDuration: duration);
  }

  void onTimerStepFinished() {
    _gameManager.newGame(timerDuration: state.timerDuration, playerNames: state.playerNames);
    _router.goNamed(RouteNames.timer);
  }

  void onPlayerNameChanged({required int index, required String name}) {
    final playerNames = List<String>.from(state.playerNames);
    playerNames[index] = name;
    state = state.copyWith(playerNames: playerNames);
  }

  void onPlayerNameSubmitted({required int index}) {
    if (index < state.playerNames.length - 1) {
      state.focusNodes[index + 1].requestFocus();
    } else {
      onPlayerNameStepFinished();
    }
  }
}
