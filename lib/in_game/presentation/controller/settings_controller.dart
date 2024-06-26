import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/app/navigation/route_names.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/in_game/presentation/controller/settings_state.dart';

final settingsControllerProvider =
    StateNotifierProvider.autoDispose<SettingsController, SettingsState>(
  (ref) => SettingsController(),
);

class SettingsController extends StateNotifier<SettingsState> {
  SettingsController() : super(SettingsState.initial());

  late final GameManager _gameManager = GetIt.instance.get();
  late final GoRouter _router = GetIt.instance.get();

  Future<void> finishGame() async {
    await _gameManager.finishCurrentGame();
    _router.goNamed(RouteNames.home);
  }
}
