import 'package:rummi_assistant/core/data/store/model/stored_game.dart';
import 'package:rummi_assistant/core/domain/game.dart';

extension ToStored on Game {
  StoredGame toStored() {
    return StoredGame()
      ..id = id
      ..timerDurationInSeconds = timerDuration.inSeconds
      ..isFinished = isFinished;
  }
}

extension ToDomain on StoredGame {
  Game toDomain() {
    return Game(
      id: id,
      timerDuration: Duration(seconds: timerDurationInSeconds),
      isFinished: isFinished,
    );
  }
}
