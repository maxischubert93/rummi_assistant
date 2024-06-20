import 'package:isar/isar.dart';

part 'stored_game.g.dart';

@collection
@Name('Games')
class StoredGame {
  Id id = Isar.autoIncrement;

  late int timerDurationInSeconds;

  bool isFinished = false;
}
