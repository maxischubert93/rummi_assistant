// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $StoredGamesTable extends StoredGames
    with TableInfo<$StoredGamesTable, StoredGame> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StoredGamesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _timerDurationInSecondsMeta =
      const VerificationMeta('timerDurationInSeconds');
  @override
  late final GeneratedColumn<int> timerDurationInSeconds = GeneratedColumn<int>(
      'timer_duration_in_seconds', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isFinishedMeta =
      const VerificationMeta('isFinished');
  @override
  late final GeneratedColumn<bool> isFinished = GeneratedColumn<bool>(
      'is_finished', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_finished" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, timerDurationInSeconds, isFinished, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'games';
  @override
  VerificationContext validateIntegrity(Insertable<StoredGame> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('timer_duration_in_seconds')) {
      context.handle(
          _timerDurationInSecondsMeta,
          timerDurationInSeconds.isAcceptableOrUnknown(
              data['timer_duration_in_seconds']!, _timerDurationInSecondsMeta));
    } else if (isInserting) {
      context.missing(_timerDurationInSecondsMeta);
    }
    if (data.containsKey('is_finished')) {
      context.handle(
          _isFinishedMeta,
          isFinished.isAcceptableOrUnknown(
              data['is_finished']!, _isFinishedMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StoredGame map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StoredGame(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      timerDurationInSeconds: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}timer_duration_in_seconds'])!,
      isFinished: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_finished'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $StoredGamesTable createAlias(String alias) {
    return $StoredGamesTable(attachedDatabase, alias);
  }
}

class StoredGame extends DataClass implements Insertable<StoredGame> {
  final int id;
  final int timerDurationInSeconds;
  final bool isFinished;
  final DateTime createdAt;
  const StoredGame(
      {required this.id,
      required this.timerDurationInSeconds,
      required this.isFinished,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timer_duration_in_seconds'] = Variable<int>(timerDurationInSeconds);
    map['is_finished'] = Variable<bool>(isFinished);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  StoredGamesCompanion toCompanion(bool nullToAbsent) {
    return StoredGamesCompanion(
      id: Value(id),
      timerDurationInSeconds: Value(timerDurationInSeconds),
      isFinished: Value(isFinished),
      createdAt: Value(createdAt),
    );
  }

  factory StoredGame.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StoredGame(
      id: serializer.fromJson<int>(json['id']),
      timerDurationInSeconds:
          serializer.fromJson<int>(json['timerDurationInSeconds']),
      isFinished: serializer.fromJson<bool>(json['isFinished']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timerDurationInSeconds': serializer.toJson<int>(timerDurationInSeconds),
      'isFinished': serializer.toJson<bool>(isFinished),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  StoredGame copyWith(
          {int? id,
          int? timerDurationInSeconds,
          bool? isFinished,
          DateTime? createdAt}) =>
      StoredGame(
        id: id ?? this.id,
        timerDurationInSeconds:
            timerDurationInSeconds ?? this.timerDurationInSeconds,
        isFinished: isFinished ?? this.isFinished,
        createdAt: createdAt ?? this.createdAt,
      );
  StoredGame copyWithCompanion(StoredGamesCompanion data) {
    return StoredGame(
      id: data.id.present ? data.id.value : this.id,
      timerDurationInSeconds: data.timerDurationInSeconds.present
          ? data.timerDurationInSeconds.value
          : this.timerDurationInSeconds,
      isFinished:
          data.isFinished.present ? data.isFinished.value : this.isFinished,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StoredGame(')
          ..write('id: $id, ')
          ..write('timerDurationInSeconds: $timerDurationInSeconds, ')
          ..write('isFinished: $isFinished, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, timerDurationInSeconds, isFinished, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StoredGame &&
          other.id == this.id &&
          other.timerDurationInSeconds == this.timerDurationInSeconds &&
          other.isFinished == this.isFinished &&
          other.createdAt == this.createdAt);
}

class StoredGamesCompanion extends UpdateCompanion<StoredGame> {
  final Value<int> id;
  final Value<int> timerDurationInSeconds;
  final Value<bool> isFinished;
  final Value<DateTime> createdAt;
  const StoredGamesCompanion({
    this.id = const Value.absent(),
    this.timerDurationInSeconds = const Value.absent(),
    this.isFinished = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  StoredGamesCompanion.insert({
    this.id = const Value.absent(),
    required int timerDurationInSeconds,
    this.isFinished = const Value.absent(),
    required DateTime createdAt,
  })  : timerDurationInSeconds = Value(timerDurationInSeconds),
        createdAt = Value(createdAt);
  static Insertable<StoredGame> custom({
    Expression<int>? id,
    Expression<int>? timerDurationInSeconds,
    Expression<bool>? isFinished,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timerDurationInSeconds != null)
        'timer_duration_in_seconds': timerDurationInSeconds,
      if (isFinished != null) 'is_finished': isFinished,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  StoredGamesCompanion copyWith(
      {Value<int>? id,
      Value<int>? timerDurationInSeconds,
      Value<bool>? isFinished,
      Value<DateTime>? createdAt}) {
    return StoredGamesCompanion(
      id: id ?? this.id,
      timerDurationInSeconds:
          timerDurationInSeconds ?? this.timerDurationInSeconds,
      isFinished: isFinished ?? this.isFinished,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timerDurationInSeconds.present) {
      map['timer_duration_in_seconds'] =
          Variable<int>(timerDurationInSeconds.value);
    }
    if (isFinished.present) {
      map['is_finished'] = Variable<bool>(isFinished.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StoredGamesCompanion(')
          ..write('id: $id, ')
          ..write('timerDurationInSeconds: $timerDurationInSeconds, ')
          ..write('isFinished: $isFinished, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $StoredPlayersTable extends StoredPlayers
    with TableInfo<$StoredPlayersTable, StoredPlayer> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StoredPlayersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _gameIdMeta = const VerificationMeta('gameId');
  @override
  late final GeneratedColumn<int> gameId = GeneratedColumn<int>(
      'game_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES games (id) ON DELETE CASCADE'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<List<int>, String> scores =
      GeneratedColumn<String>('scores', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<int>>($StoredPlayersTable.$converterscores);
  @override
  List<GeneratedColumn> get $columns => [id, gameId, name, scores];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'players';
  @override
  VerificationContext validateIntegrity(Insertable<StoredPlayer> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('game_id')) {
      context.handle(_gameIdMeta,
          gameId.isAcceptableOrUnknown(data['game_id']!, _gameIdMeta));
    } else if (isInserting) {
      context.missing(_gameIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StoredPlayer map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StoredPlayer(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      gameId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}game_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      scores: $StoredPlayersTable.$converterscores.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}scores'])!),
    );
  }

  @override
  $StoredPlayersTable createAlias(String alias) {
    return $StoredPlayersTable(attachedDatabase, alias);
  }

  static TypeConverter<List<int>, String> $converterscores =
      const ScoresListConverter();
}

class StoredPlayer extends DataClass implements Insertable<StoredPlayer> {
  final int id;
  final int gameId;
  final String name;

  /// Scores stored as comma-separated values
  /// We'll need to parse this when reading/writing
  final List<int> scores;
  const StoredPlayer(
      {required this.id,
      required this.gameId,
      required this.name,
      required this.scores});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['game_id'] = Variable<int>(gameId);
    map['name'] = Variable<String>(name);
    {
      map['scores'] =
          Variable<String>($StoredPlayersTable.$converterscores.toSql(scores));
    }
    return map;
  }

  StoredPlayersCompanion toCompanion(bool nullToAbsent) {
    return StoredPlayersCompanion(
      id: Value(id),
      gameId: Value(gameId),
      name: Value(name),
      scores: Value(scores),
    );
  }

  factory StoredPlayer.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StoredPlayer(
      id: serializer.fromJson<int>(json['id']),
      gameId: serializer.fromJson<int>(json['gameId']),
      name: serializer.fromJson<String>(json['name']),
      scores: serializer.fromJson<List<int>>(json['scores']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'gameId': serializer.toJson<int>(gameId),
      'name': serializer.toJson<String>(name),
      'scores': serializer.toJson<List<int>>(scores),
    };
  }

  StoredPlayer copyWith(
          {int? id, int? gameId, String? name, List<int>? scores}) =>
      StoredPlayer(
        id: id ?? this.id,
        gameId: gameId ?? this.gameId,
        name: name ?? this.name,
        scores: scores ?? this.scores,
      );
  StoredPlayer copyWithCompanion(StoredPlayersCompanion data) {
    return StoredPlayer(
      id: data.id.present ? data.id.value : this.id,
      gameId: data.gameId.present ? data.gameId.value : this.gameId,
      name: data.name.present ? data.name.value : this.name,
      scores: data.scores.present ? data.scores.value : this.scores,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StoredPlayer(')
          ..write('id: $id, ')
          ..write('gameId: $gameId, ')
          ..write('name: $name, ')
          ..write('scores: $scores')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, gameId, name, scores);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StoredPlayer &&
          other.id == this.id &&
          other.gameId == this.gameId &&
          other.name == this.name &&
          other.scores == this.scores);
}

class StoredPlayersCompanion extends UpdateCompanion<StoredPlayer> {
  final Value<int> id;
  final Value<int> gameId;
  final Value<String> name;
  final Value<List<int>> scores;
  const StoredPlayersCompanion({
    this.id = const Value.absent(),
    this.gameId = const Value.absent(),
    this.name = const Value.absent(),
    this.scores = const Value.absent(),
  });
  StoredPlayersCompanion.insert({
    this.id = const Value.absent(),
    required int gameId,
    required String name,
    required List<int> scores,
  })  : gameId = Value(gameId),
        name = Value(name),
        scores = Value(scores);
  static Insertable<StoredPlayer> custom({
    Expression<int>? id,
    Expression<int>? gameId,
    Expression<String>? name,
    Expression<String>? scores,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (gameId != null) 'game_id': gameId,
      if (name != null) 'name': name,
      if (scores != null) 'scores': scores,
    });
  }

  StoredPlayersCompanion copyWith(
      {Value<int>? id,
      Value<int>? gameId,
      Value<String>? name,
      Value<List<int>>? scores}) {
    return StoredPlayersCompanion(
      id: id ?? this.id,
      gameId: gameId ?? this.gameId,
      name: name ?? this.name,
      scores: scores ?? this.scores,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (gameId.present) {
      map['game_id'] = Variable<int>(gameId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (scores.present) {
      map['scores'] = Variable<String>(
          $StoredPlayersTable.$converterscores.toSql(scores.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StoredPlayersCompanion(')
          ..write('id: $id, ')
          ..write('gameId: $gameId, ')
          ..write('name: $name, ')
          ..write('scores: $scores')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $StoredGamesTable storedGames = $StoredGamesTable(this);
  late final $StoredPlayersTable storedPlayers = $StoredPlayersTable(this);
  late final GamesDao gamesDao = GamesDao(this as AppDatabase);
  late final PlayersDao playersDao = PlayersDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [storedGames, storedPlayers];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules(
        [
          WritePropagation(
            on: TableUpdateQuery.onTableName('games',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('players', kind: UpdateKind.delete),
            ],
          ),
        ],
      );
}

typedef $$StoredGamesTableCreateCompanionBuilder = StoredGamesCompanion
    Function({
  Value<int> id,
  required int timerDurationInSeconds,
  Value<bool> isFinished,
  required DateTime createdAt,
});
typedef $$StoredGamesTableUpdateCompanionBuilder = StoredGamesCompanion
    Function({
  Value<int> id,
  Value<int> timerDurationInSeconds,
  Value<bool> isFinished,
  Value<DateTime> createdAt,
});

final class $$StoredGamesTableReferences
    extends BaseReferences<_$AppDatabase, $StoredGamesTable, StoredGame> {
  $$StoredGamesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$StoredPlayersTable, List<StoredPlayer>>
      _storedPlayersRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.storedPlayers,
              aliasName: $_aliasNameGenerator(
                  db.storedGames.id, db.storedPlayers.gameId));

  $$StoredPlayersTableProcessedTableManager get storedPlayersRefs {
    final manager = $$StoredPlayersTableTableManager($_db, $_db.storedPlayers)
        .filter((f) => f.gameId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_storedPlayersRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$StoredGamesTableFilterComposer
    extends Composer<_$AppDatabase, $StoredGamesTable> {
  $$StoredGamesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get timerDurationInSeconds => $composableBuilder(
      column: $table.timerDurationInSeconds,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isFinished => $composableBuilder(
      column: $table.isFinished, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  Expression<bool> storedPlayersRefs(
      Expression<bool> Function($$StoredPlayersTableFilterComposer f) f) {
    final $$StoredPlayersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.storedPlayers,
        getReferencedColumn: (t) => t.gameId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StoredPlayersTableFilterComposer(
              $db: $db,
              $table: $db.storedPlayers,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$StoredGamesTableOrderingComposer
    extends Composer<_$AppDatabase, $StoredGamesTable> {
  $$StoredGamesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get timerDurationInSeconds => $composableBuilder(
      column: $table.timerDurationInSeconds,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isFinished => $composableBuilder(
      column: $table.isFinished, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$StoredGamesTableAnnotationComposer
    extends Composer<_$AppDatabase, $StoredGamesTable> {
  $$StoredGamesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get timerDurationInSeconds => $composableBuilder(
      column: $table.timerDurationInSeconds, builder: (column) => column);

  GeneratedColumn<bool> get isFinished => $composableBuilder(
      column: $table.isFinished, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> storedPlayersRefs<T extends Object>(
      Expression<T> Function($$StoredPlayersTableAnnotationComposer a) f) {
    final $$StoredPlayersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.storedPlayers,
        getReferencedColumn: (t) => t.gameId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StoredPlayersTableAnnotationComposer(
              $db: $db,
              $table: $db.storedPlayers,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$StoredGamesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $StoredGamesTable,
    StoredGame,
    $$StoredGamesTableFilterComposer,
    $$StoredGamesTableOrderingComposer,
    $$StoredGamesTableAnnotationComposer,
    $$StoredGamesTableCreateCompanionBuilder,
    $$StoredGamesTableUpdateCompanionBuilder,
    (StoredGame, $$StoredGamesTableReferences),
    StoredGame,
    PrefetchHooks Function({bool storedPlayersRefs})> {
  $$StoredGamesTableTableManager(_$AppDatabase db, $StoredGamesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StoredGamesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StoredGamesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StoredGamesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> timerDurationInSeconds = const Value.absent(),
            Value<bool> isFinished = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              StoredGamesCompanion(
            id: id,
            timerDurationInSeconds: timerDurationInSeconds,
            isFinished: isFinished,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int timerDurationInSeconds,
            Value<bool> isFinished = const Value.absent(),
            required DateTime createdAt,
          }) =>
              StoredGamesCompanion.insert(
            id: id,
            timerDurationInSeconds: timerDurationInSeconds,
            isFinished: isFinished,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$StoredGamesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({storedPlayersRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (storedPlayersRefs) db.storedPlayers
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (storedPlayersRefs)
                    await $_getPrefetchedData<StoredGame, $StoredGamesTable,
                            StoredPlayer>(
                        currentTable: table,
                        referencedTable: $$StoredGamesTableReferences
                            ._storedPlayersRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$StoredGamesTableReferences(db, table, p0)
                                .storedPlayersRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.gameId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$StoredGamesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $StoredGamesTable,
    StoredGame,
    $$StoredGamesTableFilterComposer,
    $$StoredGamesTableOrderingComposer,
    $$StoredGamesTableAnnotationComposer,
    $$StoredGamesTableCreateCompanionBuilder,
    $$StoredGamesTableUpdateCompanionBuilder,
    (StoredGame, $$StoredGamesTableReferences),
    StoredGame,
    PrefetchHooks Function({bool storedPlayersRefs})>;
typedef $$StoredPlayersTableCreateCompanionBuilder = StoredPlayersCompanion
    Function({
  Value<int> id,
  required int gameId,
  required String name,
  required List<int> scores,
});
typedef $$StoredPlayersTableUpdateCompanionBuilder = StoredPlayersCompanion
    Function({
  Value<int> id,
  Value<int> gameId,
  Value<String> name,
  Value<List<int>> scores,
});

final class $$StoredPlayersTableReferences
    extends BaseReferences<_$AppDatabase, $StoredPlayersTable, StoredPlayer> {
  $$StoredPlayersTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $StoredGamesTable _gameIdTable(_$AppDatabase db) =>
      db.storedGames.createAlias(
          $_aliasNameGenerator(db.storedPlayers.gameId, db.storedGames.id));

  $$StoredGamesTableProcessedTableManager get gameId {
    final $_column = $_itemColumn<int>('game_id')!;

    final manager = $$StoredGamesTableTableManager($_db, $_db.storedGames)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_gameIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$StoredPlayersTableFilterComposer
    extends Composer<_$AppDatabase, $StoredPlayersTable> {
  $$StoredPlayersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<int>, List<int>, String> get scores =>
      $composableBuilder(
          column: $table.scores,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  $$StoredGamesTableFilterComposer get gameId {
    final $$StoredGamesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.gameId,
        referencedTable: $db.storedGames,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StoredGamesTableFilterComposer(
              $db: $db,
              $table: $db.storedGames,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$StoredPlayersTableOrderingComposer
    extends Composer<_$AppDatabase, $StoredPlayersTable> {
  $$StoredPlayersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get scores => $composableBuilder(
      column: $table.scores, builder: (column) => ColumnOrderings(column));

  $$StoredGamesTableOrderingComposer get gameId {
    final $$StoredGamesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.gameId,
        referencedTable: $db.storedGames,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StoredGamesTableOrderingComposer(
              $db: $db,
              $table: $db.storedGames,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$StoredPlayersTableAnnotationComposer
    extends Composer<_$AppDatabase, $StoredPlayersTable> {
  $$StoredPlayersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<int>, String> get scores =>
      $composableBuilder(column: $table.scores, builder: (column) => column);

  $$StoredGamesTableAnnotationComposer get gameId {
    final $$StoredGamesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.gameId,
        referencedTable: $db.storedGames,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StoredGamesTableAnnotationComposer(
              $db: $db,
              $table: $db.storedGames,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$StoredPlayersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $StoredPlayersTable,
    StoredPlayer,
    $$StoredPlayersTableFilterComposer,
    $$StoredPlayersTableOrderingComposer,
    $$StoredPlayersTableAnnotationComposer,
    $$StoredPlayersTableCreateCompanionBuilder,
    $$StoredPlayersTableUpdateCompanionBuilder,
    (StoredPlayer, $$StoredPlayersTableReferences),
    StoredPlayer,
    PrefetchHooks Function({bool gameId})> {
  $$StoredPlayersTableTableManager(_$AppDatabase db, $StoredPlayersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StoredPlayersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StoredPlayersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StoredPlayersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> gameId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<List<int>> scores = const Value.absent(),
          }) =>
              StoredPlayersCompanion(
            id: id,
            gameId: gameId,
            name: name,
            scores: scores,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int gameId,
            required String name,
            required List<int> scores,
          }) =>
              StoredPlayersCompanion.insert(
            id: id,
            gameId: gameId,
            name: name,
            scores: scores,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$StoredPlayersTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({gameId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (gameId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.gameId,
                    referencedTable:
                        $$StoredPlayersTableReferences._gameIdTable(db),
                    referencedColumn:
                        $$StoredPlayersTableReferences._gameIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$StoredPlayersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $StoredPlayersTable,
    StoredPlayer,
    $$StoredPlayersTableFilterComposer,
    $$StoredPlayersTableOrderingComposer,
    $$StoredPlayersTableAnnotationComposer,
    $$StoredPlayersTableCreateCompanionBuilder,
    $$StoredPlayersTableUpdateCompanionBuilder,
    (StoredPlayer, $$StoredPlayersTableReferences),
    StoredPlayer,
    PrefetchHooks Function({bool gameId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$StoredGamesTableTableManager get storedGames =>
      $$StoredGamesTableTableManager(_db, _db.storedGames);
  $$StoredPlayersTableTableManager get storedPlayers =>
      $$StoredPlayersTableTableManager(_db, _db.storedPlayers);
}
