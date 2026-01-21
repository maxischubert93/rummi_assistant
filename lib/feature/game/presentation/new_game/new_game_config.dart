import 'package:rummi_assistant/feature/game/domain/model/game.dart';
import 'package:rummi_assistant/feature/game/util/player_list.dart';

class NewGameConfig {
  const NewGameConfig({
    required this.amountOfPlayers,
    required this.playerNames,
    required this.timerDuration,
  });

  factory NewGameConfig.defaultGame() {
    return NewGameConfig(
      amountOfPlayers: 2,
      playerNames: getDefaultPlayerNames(2),
      timerDuration: const Duration(minutes: 1),
    );
  }

  factory NewGameConfig.fromGame(Game game) {
    return NewGameConfig(
      amountOfPlayers: game.players.length,
      playerNames: game.players.map((player) => player.name).toList(),
      timerDuration: game.timerDuration,
    );
  }

  final int amountOfPlayers;
  final List<String> playerNames;
  final Duration timerDuration;
}
