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

  final int amountOfPlayers;
  final List<String> playerNames;
  final Duration timerDuration;
}
