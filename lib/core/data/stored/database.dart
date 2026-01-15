import 'package:isar/isar.dart';
import 'package:rummi_assistant/core/data/stored/file_store.dart';
import 'package:rummi_assistant/game/data/stored/model/stored_game.dart';

class DatabaseBuilder {
  static Future<String> get _databaseDirectoryPath {
    return FileStore().storeDirectory('database');
  }

  static Future<Isar> openDatabase() async {
    final dbFolder = await _databaseDirectoryPath;

    return Isar.open(
      [StoredGameSchema],
      directory: dbFolder,
    );
  }
}
