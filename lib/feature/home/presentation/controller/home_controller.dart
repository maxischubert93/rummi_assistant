import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/extension/iterable.dart';
import 'package:rummi_assistant/feature/game/game.dart';
import 'package:rummi_assistant/feature/home/presentation/controller/home_screen_state.dart';
import 'package:rummi_assistant/feature/home/util/player_list.dart';

final homeControllerProvider =
    NotifierProvider.autoDispose<HomeController, HomeScreenState>(HomeController.new);

class HomeController extends Notifier<HomeScreenState> {
  late final GoRouter _router = GetIt.instance.get();
  late final GameManager _gameManager = GetIt.instance.get();

  @override
  HomeScreenState build() => HomeScreenState.initial();

  void setPlayerAmount(int playerAmount) {
    final players = List.generate(
      playerAmount,
      (index) => state.players.tryElementAt(index) ?? Player(name: generatePlayerName(index + 1)),
    );
    state = state.copyWith(players: players);
  }

  void onTimerDurationChanged(Duration timerDuration) {
    state = state.copyWith(timerDuration: timerDuration);
  }

  Future<void> newGame() async {
    await _gameManager.newGame(
      timerDuration: state.timerDuration,
      players: state.players,
    );
    _router.goNamed(RouteNames.timer);
  }

  Future<void> showPlayerNamesModal() async {
    final newNames = await _router.pushNamed<List<String>>(RouteNames.playerNamesModal);
    if (newNames != null) {
      final players = newNames.map((name) {
        return Player(name: name);
      }).toList();
      state = state.copyWith(players: players);
    }
  }
}
