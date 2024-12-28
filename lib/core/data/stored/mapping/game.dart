import 'package:rummi_assistant/core/data/stored/mapping/player.dart';
import 'package:rummi_assistant/core/data/stored/model/stored_game.dart';
import 'package:rummi_assistant/core/domain/model/game.dart';

extension ToStored on Game {
  StoredGame toStored() {
    return StoredGame()
      ..id = id
      ..timerDurationInSeconds = timerDuration.inSeconds
      ..isFinished = isFinished
      ..createdAt = createdAt
      ..players = players.map((e) => e.toStored()).toList();
  }
}

extension ToDomain on StoredGame {
  Game toDomain() {
    return Game(
      id: id,
      timerDuration: Duration(seconds: timerDurationInSeconds),
      isFinished: isFinished,
      players: players.map((e) => e.toDomain()).toList(),
      createdAt: createdAt,
    );
  }
}
