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
    r'isFinished': PropertySchema(
      id: 0,
      name: r'isFinished',
      type: IsarType.bool,
    ),
    r'timerDurationInSeconds': PropertySchema(
      id: 1,
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
  embeddedSchemas: {},
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
  return bytesCount;
}

void _storedGameSerialize(
  StoredGame object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isFinished);
  writer.writeLong(offsets[1], object.timerDurationInSeconds);
}

StoredGame _storedGameDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = StoredGame();
  object.id = id;
  object.isFinished = reader.readBool(offsets[0]);
  object.timerDurationInSeconds = reader.readLong(offsets[1]);
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
      return (reader.readBool(offset)) as P;
    case 1:
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
    on QueryBuilder<StoredGame, StoredGame, QFilterCondition> {}

extension StoredGameQueryLinks
    on QueryBuilder<StoredGame, StoredGame, QFilterCondition> {}

extension StoredGameQuerySortBy
    on QueryBuilder<StoredGame, StoredGame, QSortBy> {
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

  QueryBuilder<StoredGame, bool, QQueryOperations> isFinishedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFinished');
    });
  }

  QueryBuilder<StoredGame, int, QQueryOperations>
      timerDurationInSecondsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timerDurationInSeconds');
    });
  }
}
