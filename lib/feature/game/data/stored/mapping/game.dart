import 'package:rummi_assistant/core/data/stored/app_database.dart';
import 'package:rummi_assistant/feature/game/data/stored/mapping/player.dart';
import 'package:rummi_assistant/feature/game/data/stored/model/stored_game_with_players.dart';
import 'package:rummi_assistant/feature/game/domain/model/game.dart';

extension GameToStored on Game {
  StoredGameWithPlayers toStored() {
    return StoredGameWithPlayers(
      StoredGame(
        id: id,
        timerDurationInSeconds: timerDuration.inSeconds,
        isFinished: isFinished,
        createdAt: createdAt,
      ),
      players.map((p) => p.toStored(gameId: id)).toList(),
    );
  }
}

extension StoredGameWithPlayersToDomain on StoredGameWithPlayers {
  Game toDomain() {
    return Game(
      id: game.id,
      timerDuration: Duration(seconds: game.timerDurationInSeconds),
      isFinished: game.isFinished,
      players: players.map((p) => p.toDomain()).toList(),
      createdAt: game.createdAt,
    );
  }
}
