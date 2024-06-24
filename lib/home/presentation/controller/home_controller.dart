import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/app/app.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/home/presentation/controller/home_screen_state.dart';

final homeControllerProvider =
    AutoDisposeNotifierProvider<HomeController, HomeScreenState>(HomeController.new);

class HomeController extends AutoDisposeNotifier<HomeScreenState> {
  late final GoRouter _router = GetIt.instance.get();
  late final GameManager _gameManager = GetIt.instance.get();

  @override
  HomeScreenState build() => HomeScreenState.initial();

  void setPlayerAmount(int playerAmount) {
    state = state.copyWith(playerAmount: playerAmount);
  }

  void setTimerDuration(Duration timerDuration) {
    state = state.copyWith(timerDuration: timerDuration, customTimerDuration: null);
  }

  Future<void> showTimerSelection() async {
    final result = await _router.pushNamed<String?>(RouteNames.timerModal);
    if (result != null && result.isNotEmpty) {
      state = state.copyWith(customTimerDuration: result);
    }
  }

  Future<void> newGame({required String defaultPlayerName}) async {
    final players = List.generate(
      state.playerAmount,
      (index) => Player(name: '$defaultPlayerName ${index + 1}'),
    );

    await _gameManager.newGame(
      timerDuration: state.selectedTimerDuration,
      players: players,
    );
    await _router.push('/timer');
  }
}
