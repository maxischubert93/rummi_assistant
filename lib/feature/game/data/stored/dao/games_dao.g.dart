// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_dao.dart';

// ignore_for_file: type=lint
mixin _$GamesDaoMixin on DatabaseAccessor<AppDatabase> {
  $StoredGamesTable get storedGames => attachedDatabase.storedGames;
  $StoredPlayersTable get storedPlayers => attachedDatabase.storedPlayers;
  GamesDaoManager get managers => GamesDaoManager(this);
}

class GamesDaoManager {
  final _$GamesDaoMixin _db;
  GamesDaoManager(this._db);
  $$StoredGamesTableTableManager get storedGames =>
      $$StoredGamesTableTableManager(_db.attachedDatabase, _db.storedGames);
  $$StoredPlayersTableTableManager get storedPlayers =>
      $$StoredPlayersTableTableManager(_db.attachedDatabase, _db.storedPlayers);
}
