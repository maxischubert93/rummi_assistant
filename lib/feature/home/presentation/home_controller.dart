import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/core/presentation/navigation/route_names.dart';
import 'package:rummi_assistant/feature/game/domain/repository/game_repository.dart';
import 'package:rummi_assistant/feature/game/presentation/new_game/new_game_config.dart';

final homeControllerProvider = Provider.autoDispose<HomeController>(
  (_) => HomeController(),
);

class HomeController {
  late final GoRouter _router = GetIt.instance.get();
  late final GameRepository _gameRepository = GetIt.instance.get();

  Future<void> onNewGame() async {
    final lastGame = await _gameRepository.getLastGame();

    final config = switch (lastGame) {
      null => NewGameConfig.defaultGame(),
      _ => NewGameConfig.fromGame(lastGame),
    };

    await _router.pushNamed(
      RouteNames.newGamePlayerAmount,
      extra: config,
    );
  }
}
