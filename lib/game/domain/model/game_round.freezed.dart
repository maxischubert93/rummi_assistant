// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_round.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameRound {
  List<PlayerScore> get scores => throw _privateConstructorUsedError;

  /// Create a copy of GameRound
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameRoundCopyWith<GameRound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameRoundCopyWith<$Res> {
  factory $GameRoundCopyWith(GameRound value, $Res Function(GameRound) then) =
      _$GameRoundCopyWithImpl<$Res, GameRound>;
  @useResult
  $Res call({List<PlayerScore> scores});
}

/// @nodoc
class _$GameRoundCopyWithImpl<$Res, $Val extends GameRound>
    implements $GameRoundCopyWith<$Res> {
  _$GameRoundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameRound
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scores = null,
  }) {
    return _then(_value.copyWith(
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<PlayerScore>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameRoundImplCopyWith<$Res>
    implements $GameRoundCopyWith<$Res> {
  factory _$$GameRoundImplCopyWith(
          _$GameRoundImpl value, $Res Function(_$GameRoundImpl) then) =
      __$$GameRoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlayerScore> scores});
}

/// @nodoc
class __$$GameRoundImplCopyWithImpl<$Res>
    extends _$GameRoundCopyWithImpl<$Res, _$GameRoundImpl>
    implements _$$GameRoundImplCopyWith<$Res> {
  __$$GameRoundImplCopyWithImpl(
      _$GameRoundImpl _value, $Res Function(_$GameRoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameRound
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scores = null,
  }) {
    return _then(_$GameRoundImpl(
      scores: null == scores
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<PlayerScore>,
    ));
  }
}

/// @nodoc

class _$GameRoundImpl implements _GameRound {
  const _$GameRoundImpl({required final List<PlayerScore> scores})
      : _scores = scores;

  final List<PlayerScore> _scores;
  @override
  List<PlayerScore> get scores {
    if (_scores is EqualUnmodifiableListView) return _scores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scores);
  }

  @override
  String toString() {
    return 'GameRound(scores: $scores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameRoundImpl &&
            const DeepCollectionEquality().equals(other._scores, _scores));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_scores));

  /// Create a copy of GameRound
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameRoundImplCopyWith<_$GameRoundImpl> get copyWith =>
      __$$GameRoundImplCopyWithImpl<_$GameRoundImpl>(this, _$identity);
}

abstract class _GameRound implements GameRound {
  const factory _GameRound({required final List<PlayerScore> scores}) =
      _$GameRoundImpl;

  @override
  List<PlayerScore> get scores;

  /// Create a copy of GameRound
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameRoundImplCopyWith<_$GameRoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlayerScore {
  String get playerName => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  /// Create a copy of PlayerScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerScoreCopyWith<PlayerScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerScoreCopyWith<$Res> {
  factory $PlayerScoreCopyWith(
          PlayerScore value, $Res Function(PlayerScore) then) =
      _$PlayerScoreCopyWithImpl<$Res, PlayerScore>;
  @useResult
  $Res call({String playerName, int score});
}

/// @nodoc
class _$PlayerScoreCopyWithImpl<$Res, $Val extends PlayerScore>
    implements $PlayerScoreCopyWith<$Res> {
  _$PlayerScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerName = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      playerName: null == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerScoreImplCopyWith<$Res>
    implements $PlayerScoreCopyWith<$Res> {
  factory _$$PlayerScoreImplCopyWith(
          _$PlayerScoreImpl value, $Res Function(_$PlayerScoreImpl) then) =
      __$$PlayerScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String playerName, int score});
}

/// @nodoc
class __$$PlayerScoreImplCopyWithImpl<$Res>
    extends _$PlayerScoreCopyWithImpl<$Res, _$PlayerScoreImpl>
    implements _$$PlayerScoreImplCopyWith<$Res> {
  __$$PlayerScoreImplCopyWithImpl(
      _$PlayerScoreImpl _value, $Res Function(_$PlayerScoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerName = null,
    Object? score = null,
  }) {
    return _then(_$PlayerScoreImpl(
      playerName: null == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlayerScoreImpl implements _PlayerScore {
  const _$PlayerScoreImpl({required this.playerName, required this.score});

  @override
  final String playerName;
  @override
  final int score;

  @override
  String toString() {
    return 'PlayerScore(playerName: $playerName, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerScoreImpl &&
            (identical(other.playerName, playerName) ||
                other.playerName == playerName) &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerName, score);

  /// Create a copy of PlayerScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerScoreImplCopyWith<_$PlayerScoreImpl> get copyWith =>
      __$$PlayerScoreImplCopyWithImpl<_$PlayerScoreImpl>(this, _$identity);
}

abstract class _PlayerScore implements PlayerScore {
  const factory _PlayerScore(
      {required final String playerName,
      required final int score}) = _$PlayerScoreImpl;

  @override
  String get playerName;
  @override
  int get score;

  /// Create a copy of PlayerScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerScoreImplCopyWith<_$PlayerScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
