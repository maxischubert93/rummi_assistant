import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/app/navigation/route_names.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/settings/domain/user_settings.dart';
import 'package:rummi_assistant/settings/presentation/controller/settings_state.dart';

final settingsControllerProvider =
    StateNotifierProvider.autoDispose<SettingsController, SettingsState>(
  (ref) => SettingsController(),
);

class SettingsController extends StateNotifier<SettingsState> {
  SettingsController() : super(SettingsState.initial()) {
    _gameSubscription = _gameManager.currentGameStream.filterNull().listen((game) {
      state = state.copyWith(players: game.players, timerDuration: game.timerDuration);
    });

    _settingsSubscription = _settings.isTimerSoundEnabledStream.listen((isEnabled) {
      state = state.copyWith(isTimerSoundEnabled: isEnabled);
    });
  }

  late final GameManager _gameManager = GetIt.instance.get();
  late final GoRouter _router = GetIt.instance.get();
  late final UserSettings _settings = GetIt.instance.get();

  StreamSubscription<Game>? _gameSubscription;
  StreamSubscription<bool>? _settingsSubscription;

  Future<void> finishGame() async {
    await _gameManager.finishCurrentGame();
    _router.goNamed(RouteNames.home);
  }

  Future<void> changePlayerNames() async {
    final newNames = await _router.pushNamed<List<String>>(RouteNames.playerNamesModal);
    if (newNames != null) {
      await _gameManager.updatePlayerNames(newNames);
    }
  }

  Future<void> onToggleTimerSoundEnabled() async {
    await _settings.setIsTimerSoundEnabled(!state.isTimerSoundEnabled);
  }

  Future<void> onTimerDurationChanged(Duration duration) async {
    await _gameManager.updateTimerDuration(duration);
  }

  @override
  void dispose() {
    _gameSubscription?.cancel();
    _settingsSubscription?.cancel();
    super.dispose();
  }
}
