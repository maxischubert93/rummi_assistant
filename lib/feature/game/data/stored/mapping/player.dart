import 'package:rummi_assistant/feature/game/data/stored/model/stored_game.dart';
import 'package:rummi_assistant/feature/game/domain/model/player.dart';

extension ToStored on Player {
  StoredPlayer toStored() {
    return StoredPlayer()
      ..name = name
      ..scores = scores;
  }
}

extension ToDomain on StoredPlayer {
  Player toDomain() {
    return Player(
      name: name,
      scores: scores,
    );
  }
}
