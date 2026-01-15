import 'package:drift/drift.dart';
import 'package:rummi_assistant/core/data/stored/app_database.dart';
import 'package:rummi_assistant/feature/game/domain/model/player.dart';

extension PlayerToStoredDrift on Player {
  StoredPlayersCompanion toStoredCompanion(int gameId) {
    return StoredPlayersCompanion(
      gameId: Value(gameId),
      name: Value(name),
      scores: Value(scores),
    );
  }
}

extension StoredPlayerDriftToDomain on StoredPlayer {
  Player toDomain() {
    return Player(
      name: name,
      scores: scores,
    );
  }
}
