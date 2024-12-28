// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stored_game.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetStoredGameCollection on Isar {
  IsarCollection<StoredGame> get storedGames => this.collection();
}

const StoredGameSchema = CollectionSchema(
  name: r'Games',
  id: 6468509838350687517,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'isFinished': PropertySchema(
      id: 1,
      name: r'isFinished',
      type: IsarType.bool,
    ),
    r'players': PropertySchema(
      id: 2,
      name: r'players',
      type: IsarType.objectList,
      target: r'StoredPlayer',
    ),
    r'timerDurationInSeconds': PropertySchema(
      id: 3,
      name: r'timerDurationInSeconds',
      type: IsarType.long,
    )
  },
  estimateSize: _storedGameEstimateSize,
  serialize: _storedGameSerialize,
  deserialize: _storedGameDeserialize,
  deserializeProp: _storedGameDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'StoredPlayer': StoredPlayerSchema},
  getId: _storedGameGetId,
  getLinks: _storedGameGetLinks,
  attach: _storedGameAttach,
  version: '3.1.0+1',
);

int _storedGameEstimateSize(
  StoredGame object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.players.length * 3;
  {
    final offsets = allOffsets[StoredPlayer]!;
    for (var i = 0; i < object.players.length; i++) {
      final value = object.players[i];
      bytesCount += StoredPlayerSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _storedGameSerialize(
  StoredGame object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeBool(offsets[1], object.isFinished);
  writer.writeObjectList<StoredPlayer>(
    offsets[2],
    allOffsets,
    StoredPlayerSchema.serialize,
    object.players,
  );
  writer.writeLong(offsets[3], object.timerDurationInSeconds);
}

StoredGame _storedGameDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = StoredGame();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.id = id;
  object.isFinished = reader.readBool(offsets[1]);
  object.players = reader.readObjectList<StoredPlayer>(
        offsets[2],
        StoredPlayerSchema.deserialize,
        allOffsets,
        StoredPlayer(),
      ) ??
      [];
  object.timerDurationInSeconds = reader.readLong(offsets[3]);
  return object;
}

P _storedGameDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readObjectList<StoredPlayer>(
            offset,
            StoredPlayerSchema.deserialize,
            allOffsets,
            StoredPlayer(),
          ) ??
          []) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _storedGameGetId(StoredGame object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _storedGameGetLinks(StoredGame object) {
  return [];
}

void _storedGameAttach(IsarCollection<dynamic> col, Id id, StoredGame object) {
  object.id = id;
}

extension StoredGameQueryWhereSort
    on QueryBuilder<StoredGame, StoredGame, QWhere> {
  QueryBuilder<StoredGame, StoredGame, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StoredGameQueryWhere
    on QueryBuilder<StoredGame, StoredGame, QWhereClause> {
  QueryBuilder<StoredGame, StoredGame, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension StoredGameQueryFilter
    on QueryBuilder<StoredGame, StoredGame, QFilterCondition> {
  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition> isFinishedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFinished',
        value: value,
      ));
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition>
      playersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'players',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition> playersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'players',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition>
      playersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'players',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition>
      playersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'players',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition>
      playersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'players',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition>
      playersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'players',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition>
      timerDurationInSecondsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timerDurationInSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition>
      timerDurationInSecondsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timerDurationInSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition>
      timerDurationInSecondsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timerDurationInSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition>
      timerDurationInSecondsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timerDurationInSeconds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension StoredGameQueryObject
    on QueryBuilder<StoredGame, StoredGame, QFilterCondition> {
  QueryBuilder<StoredGame, StoredGame, QAfterFilterCondition> playersElement(
      FilterQuery<StoredPlayer> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'players');
    });
  }
}

extension StoredGameQueryLinks
    on QueryBuilder<StoredGame, StoredGame, QFilterCondition> {}

extension StoredGameQuerySortBy
    on QueryBuilder<StoredGame, StoredGame, QSortBy> {
  QueryBuilder<StoredGame, StoredGame, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterSortBy> sortByIsFinished() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFinished', Sort.asc);
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterSortBy> sortByIsFinishedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFinished', Sort.desc);
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterSortBy>
      sortByTimerDurationInSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timerDurationInSeconds', Sort.asc);
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterSortBy>
      sortByTimerDurationInSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timerDurationInSeconds', Sort.desc);
    });
  }
}

extension StoredGameQuerySortThenBy
    on QueryBuilder<StoredGame, StoredGame, QSortThenBy> {
  QueryBuilder<StoredGame, StoredGame, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterSortBy> thenByIsFinished() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFinished', Sort.asc);
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterSortBy> thenByIsFinishedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFinished', Sort.desc);
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterSortBy>
      thenByTimerDurationInSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timerDurationInSeconds', Sort.asc);
    });
  }

  QueryBuilder<StoredGame, StoredGame, QAfterSortBy>
      thenByTimerDurationInSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timerDurationInSeconds', Sort.desc);
    });
  }
}

extension StoredGameQueryWhereDistinct
    on QueryBuilder<StoredGame, StoredGame, QDistinct> {
  QueryBuilder<StoredGame, StoredGame, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<StoredGame, StoredGame, QDistinct> distinctByIsFinished() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isFinished');
    });
  }

  QueryBuilder<StoredGame, StoredGame, QDistinct>
      distinctByTimerDurationInSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timerDurationInSeconds');
    });
  }
}

extension StoredGameQueryProperty
    on QueryBuilder<StoredGame, StoredGame, QQueryProperty> {
  QueryBuilder<StoredGame, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<StoredGame, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<StoredGame, bool, QQueryOperations> isFinishedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFinished');
    });
  }

  QueryBuilder<StoredGame, List<StoredPlayer>, QQueryOperations>
      playersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'players');
    });
  }

  QueryBuilder<StoredGame, int, QQueryOperations>
      timerDurationInSecondsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timerDurationInSeconds');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const StoredPlayerSchema = Schema(
  name: r'StoredPlayer',
  id: -4990144556712287333,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'scores': PropertySchema(
      id: 1,
      name: r'scores',
      type: IsarType.longList,
    )
  },
  estimateSize: _storedPlayerEstimateSize,
  serialize: _storedPlayerSerialize,
  deserialize: _storedPlayerDeserialize,
  deserializeProp: _storedPlayerDeserializeProp,
);

int _storedPlayerEstimateSize(
  StoredPlayer object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.scores.length * 8;
  return bytesCount;
}

void _storedPlayerSerialize(
  StoredPlayer object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeLongList(offsets[1], object.scores);
}

StoredPlayer _storedPlayerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = StoredPlayer();
  object.name = reader.readString(offsets[0]);
  object.scores = reader.readLongList(offsets[1]) ?? [];
  return object;
}

P _storedPlayerDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLongList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension StoredPlayerQueryFilter
    on QueryBuilder<StoredPlayer, StoredPlayer, QFilterCondition> {
  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition>
      scoresElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scores',
        value: value,
      ));
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition>
      scoresElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'scores',
        value: value,
      ));
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition>
      scoresElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'scores',
        value: value,
      ));
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition>
      scoresElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'scores',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition>
      scoresLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'scores',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition>
      scoresIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'scores',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition>
      scoresIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'scores',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition>
      scoresLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'scores',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition>
      scoresLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'scores',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<StoredPlayer, StoredPlayer, QAfterFilterCondition>
      scoresLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'scores',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension StoredPlayerQueryObject
    on QueryBuilder<StoredPlayer, StoredPlayer, QFilterCondition> {}
