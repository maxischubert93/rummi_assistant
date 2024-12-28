// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScoreState {
  List<Player> get players => throw _privateConstructorUsedError;
  bool get canEdit => throw _privateConstructorUsedError;

  /// Create a copy of ScoreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoreStateCopyWith<ScoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreStateCopyWith<$Res> {
  factory $ScoreStateCopyWith(
          ScoreState value, $Res Function(ScoreState) then) =
      _$ScoreStateCopyWithImpl<$Res, ScoreState>;
  @useResult
  $Res call({List<Player> players, bool canEdit});
}

/// @nodoc
class _$ScoreStateCopyWithImpl<$Res, $Val extends ScoreState>
    implements $ScoreStateCopyWith<$Res> {
  _$ScoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoreState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? canEdit = null,
  }) {
    return _then(_value.copyWith(
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      canEdit: null == canEdit
          ? _value.canEdit
          : canEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoreStateImplCopyWith<$Res>
    implements $ScoreStateCopyWith<$Res> {
  factory _$$ScoreStateImplCopyWith(
          _$ScoreStateImpl value, $Res Function(_$ScoreStateImpl) then) =
      __$$ScoreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Player> players, bool canEdit});
}

/// @nodoc
class __$$ScoreStateImplCopyWithImpl<$Res>
    extends _$ScoreStateCopyWithImpl<$Res, _$ScoreStateImpl>
    implements _$$ScoreStateImplCopyWith<$Res> {
  __$$ScoreStateImplCopyWithImpl(
      _$ScoreStateImpl _value, $Res Function(_$ScoreStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScoreState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? canEdit = null,
  }) {
    return _then(_$ScoreStateImpl(
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      canEdit: null == canEdit
          ? _value.canEdit
          : canEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ScoreStateImpl extends _ScoreState {
  const _$ScoreStateImpl(
      {required final List<Player> players, required this.canEdit})
      : _players = players,
        super._();

  final List<Player> _players;
  @override
  List<Player> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  final bool canEdit;

  @override
  String toString() {
    return 'ScoreState(players: $players, canEdit: $canEdit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreStateImpl &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.canEdit, canEdit) || other.canEdit == canEdit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_players), canEdit);

  /// Create a copy of ScoreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreStateImplCopyWith<_$ScoreStateImpl> get copyWith =>
      __$$ScoreStateImplCopyWithImpl<_$ScoreStateImpl>(this, _$identity);
}

abstract class _ScoreState extends ScoreState {
  const factory _ScoreState(
      {required final List<Player> players,
      required final bool canEdit}) = _$ScoreStateImpl;
  const _ScoreState._() : super._();

  @override
  List<Player> get players;
  @override
  bool get canEdit;

  /// Create a copy of ScoreState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoreStateImplCopyWith<_$ScoreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TotalPlayerScore {
  int get totalScore => throw _privateConstructorUsedError;
  bool get isWinning => throw _privateConstructorUsedError;

  /// Create a copy of TotalPlayerScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TotalPlayerScoreCopyWith<TotalPlayerScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalPlayerScoreCopyWith<$Res> {
  factory $TotalPlayerScoreCopyWith(
          TotalPlayerScore value, $Res Function(TotalPlayerScore) then) =
      _$TotalPlayerScoreCopyWithImpl<$Res, TotalPlayerScore>;
  @useResult
  $Res call({int totalScore, bool isWinning});
}

/// @nodoc
class _$TotalPlayerScoreCopyWithImpl<$Res, $Val extends TotalPlayerScore>
    implements $TotalPlayerScoreCopyWith<$Res> {
  _$TotalPlayerScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TotalPlayerScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalScore = null,
    Object? isWinning = null,
  }) {
    return _then(_value.copyWith(
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
      isWinning: null == isWinning
          ? _value.isWinning
          : isWinning // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TotalPlayerScoreImplCopyWith<$Res>
    implements $TotalPlayerScoreCopyWith<$Res> {
  factory _$$TotalPlayerScoreImplCopyWith(_$TotalPlayerScoreImpl value,
          $Res Function(_$TotalPlayerScoreImpl) then) =
      __$$TotalPlayerScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalScore, bool isWinning});
}

/// @nodoc
class __$$TotalPlayerScoreImplCopyWithImpl<$Res>
    extends _$TotalPlayerScoreCopyWithImpl<$Res, _$TotalPlayerScoreImpl>
    implements _$$TotalPlayerScoreImplCopyWith<$Res> {
  __$$TotalPlayerScoreImplCopyWithImpl(_$TotalPlayerScoreImpl _value,
      $Res Function(_$TotalPlayerScoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of TotalPlayerScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalScore = null,
    Object? isWinning = null,
  }) {
    return _then(_$TotalPlayerScoreImpl(
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
      isWinning: null == isWinning
          ? _value.isWinning
          : isWinning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TotalPlayerScoreImpl implements _TotalPlayerScore {
  const _$TotalPlayerScoreImpl(
      {required this.totalScore, required this.isWinning});

  @override
  final int totalScore;
  @override
  final bool isWinning;

  @override
  String toString() {
    return 'TotalPlayerScore(totalScore: $totalScore, isWinning: $isWinning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalPlayerScoreImpl &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            (identical(other.isWinning, isWinning) ||
                other.isWinning == isWinning));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalScore, isWinning);

  /// Create a copy of TotalPlayerScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalPlayerScoreImplCopyWith<_$TotalPlayerScoreImpl> get copyWith =>
      __$$TotalPlayerScoreImplCopyWithImpl<_$TotalPlayerScoreImpl>(
          this, _$identity);
}

abstract class _TotalPlayerScore implements TotalPlayerScore {
  const factory _TotalPlayerScore(
      {required final int totalScore,
      required final bool isWinning}) = _$TotalPlayerScoreImpl;

  @override
  int get totalScore;
  @override
  bool get isWinning;

  /// Create a copy of TotalPlayerScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TotalPlayerScoreImplCopyWith<_$TotalPlayerScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
