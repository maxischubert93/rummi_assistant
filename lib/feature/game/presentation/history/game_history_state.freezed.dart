// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameHistoryState {

 List<Game> get games;
/// Create a copy of GameHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameHistoryStateCopyWith<GameHistoryState> get copyWith => _$GameHistoryStateCopyWithImpl<GameHistoryState>(this as GameHistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameHistoryState&&const DeepCollectionEquality().equals(other.games, games));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(games));

@override
String toString() {
  return 'GameHistoryState(games: $games)';
}


}

/// @nodoc
abstract mixin class $GameHistoryStateCopyWith<$Res>  {
  factory $GameHistoryStateCopyWith(GameHistoryState value, $Res Function(GameHistoryState) _then) = _$GameHistoryStateCopyWithImpl;
@useResult
$Res call({
 List<Game> games
});




}
/// @nodoc
class _$GameHistoryStateCopyWithImpl<$Res>
    implements $GameHistoryStateCopyWith<$Res> {
  _$GameHistoryStateCopyWithImpl(this._self, this._then);

  final GameHistoryState _self;
  final $Res Function(GameHistoryState) _then;

/// Create a copy of GameHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? games = null,}) {
  return _then(_self.copyWith(
games: null == games ? _self.games : games // ignore: cast_nullable_to_non_nullable
as List<Game>,
  ));
}

}


/// Adds pattern-matching-related methods to [GameHistoryState].
extension GameHistoryStatePatterns on GameHistoryState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameHistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameHistoryState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameHistoryState value)  $default,){
final _that = this;
switch (_that) {
case _GameHistoryState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameHistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _GameHistoryState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Game> games)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameHistoryState() when $default != null:
return $default(_that.games);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Game> games)  $default,) {final _that = this;
switch (_that) {
case _GameHistoryState():
return $default(_that.games);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Game> games)?  $default,) {final _that = this;
switch (_that) {
case _GameHistoryState() when $default != null:
return $default(_that.games);case _:
  return null;

}
}

}

/// @nodoc


class _GameHistoryState extends GameHistoryState {
  const _GameHistoryState({required final  List<Game> games}): _games = games,super._();
  

 final  List<Game> _games;
@override List<Game> get games {
  if (_games is EqualUnmodifiableListView) return _games;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_games);
}


/// Create a copy of GameHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameHistoryStateCopyWith<_GameHistoryState> get copyWith => __$GameHistoryStateCopyWithImpl<_GameHistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameHistoryState&&const DeepCollectionEquality().equals(other._games, _games));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_games));

@override
String toString() {
  return 'GameHistoryState(games: $games)';
}


}

/// @nodoc
abstract mixin class _$GameHistoryStateCopyWith<$Res> implements $GameHistoryStateCopyWith<$Res> {
  factory _$GameHistoryStateCopyWith(_GameHistoryState value, $Res Function(_GameHistoryState) _then) = __$GameHistoryStateCopyWithImpl;
@override @useResult
$Res call({
 List<Game> games
});




}
/// @nodoc
class __$GameHistoryStateCopyWithImpl<$Res>
    implements _$GameHistoryStateCopyWith<$Res> {
  __$GameHistoryStateCopyWithImpl(this._self, this._then);

  final _GameHistoryState _self;
  final $Res Function(_GameHistoryState) _then;

/// Create a copy of GameHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? games = null,}) {
  return _then(_GameHistoryState(
games: null == games ? _self._games : games // ignore: cast_nullable_to_non_nullable
as List<Game>,
  ));
}


}

// dart format on
