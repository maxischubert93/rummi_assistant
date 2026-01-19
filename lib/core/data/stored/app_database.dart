import 'package:drift/drift.dart';
import 'package:rummi_assistant/core/data/stored/database_file_store.dart';
import 'package:rummi_assistant/feature/game/data/stored/converter/scores_list_converter.dart';
import 'package:rummi_assistant/feature/game/data/stored/dao/games_dao.dart';
import 'package:rummi_assistant/feature/game/data/stored/model/stored_game.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [StoredGames, StoredPlayers], daos: [GamesDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(DatabaseFileStore().openDatabase('app_database'));

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) async {
          await m.createAll();
        },
        onUpgrade: (Migrator m, int from, int to) async {},
      );
}
