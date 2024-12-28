import 'package:isar/isar.dart';

part 'stored_game.g.dart';

@collection
@Name('Games')
class StoredGame {
  Id id = Isar.autoIncrement;

  late int timerDurationInSeconds;

  bool isFinished = false;

  late List<StoredPlayer> players;

  late DateTime createdAt;
}

@embedded
class StoredPlayer {
  late String name;
  late List<int> scores;
}
