import 'package:get_it/get_it.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/feature/game/data/stored/game_store.dart';
import 'package:rummi_assistant/feature/game/data/stored/game_store_drift.dart';
import 'package:rummi_assistant/feature/settings/domain/user_settings.dart';

/// Migrates game data from Isar to Drift
class IsarToDriftMigrator {
  IsarToDriftMigrator({
    required GameStore isarStore,
    required GameStoreDrift driftStore,
  })  : _isarStore = isarStore,
        _driftStore = driftStore;

  late final UserSettings _userSettings = GetIt.instance.get();

  final GameStore _isarStore;
  final GameStoreDrift _driftStore;

  /// Check if migration has already been completed
  Future<bool> isMigrationNeeded() async {
    final isDone = await _userSettings.isDriftMigrationDone();
    return !isDone;
  }

  /// Perform the migration from Isar to Drift
  Future<void> migrate() async {
    // Check if migration is needed
    if (!await isMigrationNeeded()) {
      return;
    }

    try {
      // Read all games from Isar using GameStore
      final games = await _isarStore.getAllGames();

      if (games.isEmpty) {
        // No data to migrate, just mark as done
        await _userSettings.setIsDriftMigrationDone(true);
        return;
      }

      // Bulk insert into Drift
      await _driftStore.bulkInsertGames(games);

      // Mark migration as completed
      await _userSettings.setIsDriftMigrationDone(true);
      logger.i('Migration completed: ${await getMigrationStats()}');
    } catch (e) {
      logger.e('Migration failed: $e');
      rethrow;
    }
  }

  /// Get migration statistics (for debugging/logging)
  Future<MigrationStats> getMigrationStats() async {
    final games = await _isarStore.getAllGames();
    final currentGames = games.where((g) => !g.isFinished).toList();
    final finishedGames = games.where((g) => g.isFinished).toList();
    final totalPlayers = games.fold(0, (sum, game) => sum + game.players.length);

    return MigrationStats(
      totalGames: games.length,
      currentGames: currentGames.length,
      finishedGames: finishedGames.length,
      totalPlayers: totalPlayers,
    );
  }
}

/// Statistics about the migration
class MigrationStats {
  MigrationStats({
    required this.totalGames,
    required this.currentGames,
    required this.finishedGames,
    required this.totalPlayers,
  });

  final int totalGames;
  final int currentGames;
  final int finishedGames;
  final int totalPlayers;

  @override
  String toString() {
    return 'MigrationStats(totalGames: $totalGames, currentGames: $currentGames, '
        'finishedGames: $finishedGames, totalPlayers: $totalPlayers)';
  }
}
