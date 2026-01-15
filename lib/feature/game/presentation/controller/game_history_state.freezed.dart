// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameHistoryState {
  List<Game> get games => throw _privateConstructorUsedError;

  /// Create a copy of GameHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameHistoryStateCopyWith<GameHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameHistoryStateCopyWith<$Res> {
  factory $GameHistoryStateCopyWith(
          GameHistoryState value, $Res Function(GameHistoryState) then) =
      _$GameHistoryStateCopyWithImpl<$Res, GameHistoryState>;
  @useResult
  $Res call({List<Game> games});
}

/// @nodoc
class _$GameHistoryStateCopyWithImpl<$Res, $Val extends GameHistoryState>
    implements $GameHistoryStateCopyWith<$Res> {
  _$GameHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
  }) {
    return _then(_value.copyWith(
      games: null == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameHistoryStateImplCopyWith<$Res>
    implements $GameHistoryStateCopyWith<$Res> {
  factory _$$GameHistoryStateImplCopyWith(_$GameHistoryStateImpl value,
          $Res Function(_$GameHistoryStateImpl) then) =
      __$$GameHistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Game> games});
}

/// @nodoc
class __$$GameHistoryStateImplCopyWithImpl<$Res>
    extends _$GameHistoryStateCopyWithImpl<$Res, _$GameHistoryStateImpl>
    implements _$$GameHistoryStateImplCopyWith<$Res> {
  __$$GameHistoryStateImplCopyWithImpl(_$GameHistoryStateImpl _value,
      $Res Function(_$GameHistoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
  }) {
    return _then(_$GameHistoryStateImpl(
      games: null == games
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
    ));
  }
}

/// @nodoc

class _$GameHistoryStateImpl extends _GameHistoryState {
  const _$GameHistoryStateImpl({required final List<Game> games})
      : _games = games,
        super._();

  final List<Game> _games;
  @override
  List<Game> get games {
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_games);
  }

  @override
  String toString() {
    return 'GameHistoryState(games: $games)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameHistoryStateImpl &&
            const DeepCollectionEquality().equals(other._games, _games));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_games));

  /// Create a copy of GameHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameHistoryStateImplCopyWith<_$GameHistoryStateImpl> get copyWith =>
      __$$GameHistoryStateImplCopyWithImpl<_$GameHistoryStateImpl>(
          this, _$identity);
}

abstract class _GameHistoryState extends GameHistoryState {
  const factory _GameHistoryState({required final List<Game> games}) =
      _$GameHistoryStateImpl;
  const _GameHistoryState._() : super._();

  @override
  List<Game> get games;

  /// Create a copy of GameHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameHistoryStateImplCopyWith<_$GameHistoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
