// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_input_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScoreInputState {
  List<PlayerRoundScore> get playerScores => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScoreInputStateCopyWith<ScoreInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreInputStateCopyWith<$Res> {
  factory $ScoreInputStateCopyWith(
          ScoreInputState value, $Res Function(ScoreInputState) then) =
      _$ScoreInputStateCopyWithImpl<$Res, ScoreInputState>;
  @useResult
  $Res call({List<PlayerRoundScore> playerScores});
}

/// @nodoc
class _$ScoreInputStateCopyWithImpl<$Res, $Val extends ScoreInputState>
    implements $ScoreInputStateCopyWith<$Res> {
  _$ScoreInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerScores = null,
  }) {
    return _then(_value.copyWith(
      playerScores: null == playerScores
          ? _value.playerScores
          : playerScores // ignore: cast_nullable_to_non_nullable
              as List<PlayerRoundScore>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoreInputStateImplCopyWith<$Res>
    implements $ScoreInputStateCopyWith<$Res> {
  factory _$$ScoreInputStateImplCopyWith(_$ScoreInputStateImpl value,
          $Res Function(_$ScoreInputStateImpl) then) =
      __$$ScoreInputStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlayerRoundScore> playerScores});
}

/// @nodoc
class __$$ScoreInputStateImplCopyWithImpl<$Res>
    extends _$ScoreInputStateCopyWithImpl<$Res, _$ScoreInputStateImpl>
    implements _$$ScoreInputStateImplCopyWith<$Res> {
  __$$ScoreInputStateImplCopyWithImpl(
      _$ScoreInputStateImpl _value, $Res Function(_$ScoreInputStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerScores = null,
  }) {
    return _then(_$ScoreInputStateImpl(
      playerScores: null == playerScores
          ? _value._playerScores
          : playerScores // ignore: cast_nullable_to_non_nullable
              as List<PlayerRoundScore>,
    ));
  }
}

/// @nodoc

class _$ScoreInputStateImpl extends _ScoreInputState {
  const _$ScoreInputStateImpl(
      {required final List<PlayerRoundScore> playerScores})
      : _playerScores = playerScores,
        super._();

  final List<PlayerRoundScore> _playerScores;
  @override
  List<PlayerRoundScore> get playerScores {
    if (_playerScores is EqualUnmodifiableListView) return _playerScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playerScores);
  }

  @override
  String toString() {
    return 'ScoreInputState(playerScores: $playerScores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreInputStateImpl &&
            const DeepCollectionEquality()
                .equals(other._playerScores, _playerScores));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_playerScores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreInputStateImplCopyWith<_$ScoreInputStateImpl> get copyWith =>
      __$$ScoreInputStateImplCopyWithImpl<_$ScoreInputStateImpl>(
          this, _$identity);
}

abstract class _ScoreInputState extends ScoreInputState {
  const factory _ScoreInputState(
          {required final List<PlayerRoundScore> playerScores}) =
      _$ScoreInputStateImpl;
  const _ScoreInputState._() : super._();

  @override
  List<PlayerRoundScore> get playerScores;
  @override
  @JsonKey(ignore: true)
  _$$ScoreInputStateImplCopyWith<_$ScoreInputStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlayerRoundScore {
  String get playerName => throw _privateConstructorUsedError;
  String? get score => throw _privateConstructorUsedError;
  bool get wonRound => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerRoundScoreCopyWith<PlayerRoundScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerRoundScoreCopyWith<$Res> {
  factory $PlayerRoundScoreCopyWith(
          PlayerRoundScore value, $Res Function(PlayerRoundScore) then) =
      _$PlayerRoundScoreCopyWithImpl<$Res, PlayerRoundScore>;
  @useResult
  $Res call({String playerName, String? score, bool wonRound});
}

/// @nodoc
class _$PlayerRoundScoreCopyWithImpl<$Res, $Val extends PlayerRoundScore>
    implements $PlayerRoundScoreCopyWith<$Res> {
  _$PlayerRoundScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerName = null,
    Object? score = freezed,
    Object? wonRound = null,
  }) {
    return _then(_value.copyWith(
      playerName: null == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String?,
      wonRound: null == wonRound
          ? _value.wonRound
          : wonRound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerRoundScoreImplCopyWith<$Res>
    implements $PlayerRoundScoreCopyWith<$Res> {
  factory _$$PlayerRoundScoreImplCopyWith(_$PlayerRoundScoreImpl value,
          $Res Function(_$PlayerRoundScoreImpl) then) =
      __$$PlayerRoundScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String playerName, String? score, bool wonRound});
}

/// @nodoc
class __$$PlayerRoundScoreImplCopyWithImpl<$Res>
    extends _$PlayerRoundScoreCopyWithImpl<$Res, _$PlayerRoundScoreImpl>
    implements _$$PlayerRoundScoreImplCopyWith<$Res> {
  __$$PlayerRoundScoreImplCopyWithImpl(_$PlayerRoundScoreImpl _value,
      $Res Function(_$PlayerRoundScoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerName = null,
    Object? score = freezed,
    Object? wonRound = null,
  }) {
    return _then(_$PlayerRoundScoreImpl(
      playerName: null == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String?,
      wonRound: null == wonRound
          ? _value.wonRound
          : wonRound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PlayerRoundScoreImpl extends _PlayerRoundScore {
  const _$PlayerRoundScoreImpl(
      {required this.playerName, this.score, this.wonRound = false})
      : super._();

  @override
  final String playerName;
  @override
  final String? score;
  @override
  @JsonKey()
  final bool wonRound;

  @override
  String toString() {
    return 'PlayerRoundScore(playerName: $playerName, score: $score, wonRound: $wonRound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerRoundScoreImpl &&
            (identical(other.playerName, playerName) ||
                other.playerName == playerName) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.wonRound, wonRound) ||
                other.wonRound == wonRound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerName, score, wonRound);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerRoundScoreImplCopyWith<_$PlayerRoundScoreImpl> get copyWith =>
      __$$PlayerRoundScoreImplCopyWithImpl<_$PlayerRoundScoreImpl>(
          this, _$identity);
}

abstract class _PlayerRoundScore extends PlayerRoundScore {
  const factory _PlayerRoundScore(
      {required final String playerName,
      final String? score,
      final bool wonRound}) = _$PlayerRoundScoreImpl;
  const _PlayerRoundScore._() : super._();

  @override
  String get playerName;
  @override
  String? get score;
  @override
  bool get wonRound;
  @override
  @JsonKey(ignore: true)
  _$$PlayerRoundScoreImplCopyWith<_$PlayerRoundScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
