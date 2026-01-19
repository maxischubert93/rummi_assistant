import 'package:get_it/get_it.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

List<String> getDefaultPlayerNames(int length) {
  return List.generate(length, (index) => generatePlayerName(index + 1));
}

String generatePlayerName(int playerNumber) {
  final localizations = GetIt.instance.get<AppLocalizations>();

  return localizations.defaultPlayerName(playerNumber);
}
