import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:rummi_assistant/core/data/store/mapping/game.dart';
import 'package:rummi_assistant/core/data/store/model/stored_game.dart';
import 'package:rummi_assistant/core/domain/game.dart';
import 'package:rummi_assistant/core/domain/repository/game_repository.dart';

class GameStore implements GameRepository {
  late final Isar _isar = GetIt.instance.get();

  IsarCollection<StoredGame> get games => _isar.storedGames;

  @override
  Future<Game> newGame({required Duration timerDuration}) async {
    final game = StoredGame()
      ..timerDurationInSeconds = timerDuration.inSeconds
      ..isFinished = false;
    await _isar.writeTxn(() async {
      await games.filter().isFinishedEqualTo(false).deleteAll();
      await games.put(game);
    });
    return game.toDomain();
  }

  @override
  Future<void> updateGame(Game game) async {
    await _isar.writeTxn(() async {
      await games.put(game.toStored());
    });
  }

  @override
  Stream<Game?> currentGame() {
    return games
        .filter()
        .isFinishedEqualTo(false)
        .watch()
        .map((game) => game.firstOrNull?.toDomain());
  }
}
