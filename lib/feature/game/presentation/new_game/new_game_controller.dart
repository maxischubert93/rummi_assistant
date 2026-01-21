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

final newGameControllerProvider = NotifierProvider.autoDispose
    .family<NewGameController, NewGameState, NewGameConfig>(
      NewGameController.new,
    );

class NewGameController extends Notifier<NewGameState> {
  NewGameController(this._config);

  late final GoRouter _router = GetIt.instance.get();
  late final GameManager _gameManager = GetIt.instance.get();

  final NewGameConfig _config;

  @override
  NewGameState build() {
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
    _router.pushNamed(RouteNames.newGamePlayerNames, extra: _config);
  }

  void onPlayerNameStepFinished() {
    _router.pushNamed(RouteNames.newGameTimer, extra: _config);
  }

  void onTimerDurationChanged(Duration duration) {
    state = state.copyWith(timerDuration: duration);
  }

  Future<void> onTimerStepFinished() async {
    await _gameManager.newGame(timerDuration: state.timerDuration, playerNames: state.playerNames);
    await _router.replaceNamed<void>(RouteNames.timer);
  }

  void onPlayerNameChanged(int index, String name) {
    final playerNames = List<String>.from(state.playerNames);
    playerNames[index] = name;
    state = state.copyWith(playerNames: playerNames);
  }

  void onPlayerNameSubmitted(int index) {
    if (index < state.playerNames.length - 1) {
      state.focusNodes[index + 1].requestFocus();
    } else {
      onPlayerNameStepFinished();
    }
  }
}
