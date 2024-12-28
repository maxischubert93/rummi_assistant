import 'package:rummi_assistant/core/data/stored/model/stored_game.dart';
import 'package:rummi_assistant/core/domain/model/player.dart';

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
