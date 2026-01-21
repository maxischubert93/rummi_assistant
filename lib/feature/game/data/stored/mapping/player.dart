import 'package:rummi_assistant/core/data/stored/app_database.dart';
import 'package:rummi_assistant/feature/game/domain/model/player.dart';

extension StoredPlayerToDomain on StoredPlayer {
  Player toDomain() {
    return Player(
      id: id,
      name: name,
      scores: scores,
    );
  }
}

extension PlayerToStored on Player {
  StoredPlayer toStored({required int gameId}) {
    return StoredPlayer(
      id: id,
      gameId: gameId,
      name: name,
      scores: scores,
    );
  }
}
