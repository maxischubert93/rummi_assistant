import 'package:drift/drift.dart';
import 'package:rummi_assistant/core/data/stored/app_database.dart';
import 'package:rummi_assistant/feature/game/data/stored/mapping/player.dart';
import 'package:rummi_assistant/feature/game/domain/model/game.dart';

extension GameToStoredDrift on Game {
  StoredGamesCompanion toStoredCompanion() {
    return StoredGamesCompanion(
      id: Value(id),
      timerDurationInSeconds: Value(timerDuration.inSeconds),
      isFinished: Value(isFinished),
      createdAt: Value(createdAt),
    );
  }
}

extension StoredGameDriftToDomain on StoredGame {
  Game toDomain(List<StoredPlayer> players) {
    return Game(
      id: id,
      timerDuration: Duration(seconds: timerDurationInSeconds),
      isFinished: isFinished,
      players: players.map((p) => p.toDomain()).toList(),
      createdAt: createdAt,
    );
  }
}
