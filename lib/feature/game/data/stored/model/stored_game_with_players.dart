import 'package:rummi_assistant/core/data/stored/app_database.dart';

class StoredGameWithPlayers {
  const StoredGameWithPlayers(this.game, this.players);

  final StoredGame game;
  final List<StoredPlayer> players;
}
