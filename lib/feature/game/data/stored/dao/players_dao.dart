import 'package:drift/drift.dart';
import 'package:rummi_assistant/core/data/stored/app_database.dart';
import 'package:rummi_assistant/feature/game/data/stored/model/stored_game.dart';

part 'players_dao.g.dart';

@DriftAccessor(tables: [StoredPlayers])
class PlayersDao extends DatabaseAccessor<AppDatabase> with _$PlayersDaoMixin {
  PlayersDao(super.attachedDatabase);

  /// Get all players for a specific game
  Future<List<StoredPlayer>> getPlayersByGameId(int gameId) =>
      (select(storedPlayers)..where((tbl) => tbl.gameId.equals(gameId))).get();

  /// Insert multiple players
  Future<void> insertPlayers(List<StoredPlayersCompanion> players) async {
    await batch((batch) {
      batch.insertAll(storedPlayers, players, mode: InsertMode.insertOrReplace);
    });
  }
}
