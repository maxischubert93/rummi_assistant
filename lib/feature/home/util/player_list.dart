import 'package:get_it/get_it.dart';
import 'package:rummi_assistant/feature/game/game.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

List<Player> generatePlayersList(int length) {
  return List.generate(length, (index) => Player(name: generatePlayerName(index + 1)));
}

String generatePlayerName(int playerNumber) {
  final localizations = GetIt.instance.get<AppLocalizations>();

  return localizations.defaultPlayerName(playerNumber);
}
