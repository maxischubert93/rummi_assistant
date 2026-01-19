// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_round.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameRound {

 List<PlayerScore> get scores;
/// Create a copy of GameRound
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameRoundCopyWith<GameRound> get copyWith => _$GameRoundCopyWithImpl<GameRound>(this as GameRound, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameRound&&const DeepCollectionEquality().equals(other.scores, scores));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(scores));

@override
String toString() {
  return 'GameRound(scores: $scores)';
}


}

/// @nodoc
abstract mixin class $GameRoundCopyWith<$Res>  {
  factory $GameRoundCopyWith(GameRound value, $Res Function(GameRound) _then) = _$GameRoundCopyWithImpl;
@useResult
$Res call({
 List<PlayerScore> scores
});




}
/// @nodoc
class _$GameRoundCopyWithImpl<$Res>
    implements $GameRoundCopyWith<$Res> {
  _$GameRoundCopyWithImpl(this._self, this._then);

  final GameRound _self;
  final $Res Function(GameRound) _then;

/// Create a copy of GameRound
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scores = null,}) {
  return _then(_self.copyWith(
scores: null == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as List<PlayerScore>,
  ));
}

}


/// Adds pattern-matching-related methods to [GameRound].
extension GameRoundPatterns on GameRound {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameRound value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameRound() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameRound value)  $default,){
final _that = this;
switch (_that) {
case _GameRound():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameRound value)?  $default,){
final _that = this;
switch (_that) {
case _GameRound() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PlayerScore> scores)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameRound() when $default != null:
return $default(_that.scores);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PlayerScore> scores)  $default,) {final _that = this;
switch (_that) {
case _GameRound():
return $default(_that.scores);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PlayerScore> scores)?  $default,) {final _that = this;
switch (_that) {
case _GameRound() when $default != null:
return $default(_that.scores);case _:
  return null;

}
}

}

/// @nodoc


class _GameRound implements GameRound {
  const _GameRound({required final  List<PlayerScore> scores}): _scores = scores;
  

 final  List<PlayerScore> _scores;
@override List<PlayerScore> get scores {
  if (_scores is EqualUnmodifiableListView) return _scores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scores);
}


/// Create a copy of GameRound
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameRoundCopyWith<_GameRound> get copyWith => __$GameRoundCopyWithImpl<_GameRound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameRound&&const DeepCollectionEquality().equals(other._scores, _scores));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_scores));

@override
String toString() {
  return 'GameRound(scores: $scores)';
}


}

/// @nodoc
abstract mixin class _$GameRoundCopyWith<$Res> implements $GameRoundCopyWith<$Res> {
  factory _$GameRoundCopyWith(_GameRound value, $Res Function(_GameRound) _then) = __$GameRoundCopyWithImpl;
@override @useResult
$Res call({
 List<PlayerScore> scores
});




}
/// @nodoc
class __$GameRoundCopyWithImpl<$Res>
    implements _$GameRoundCopyWith<$Res> {
  __$GameRoundCopyWithImpl(this._self, this._then);

  final _GameRound _self;
  final $Res Function(_GameRound) _then;

/// Create a copy of GameRound
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scores = null,}) {
  return _then(_GameRound(
scores: null == scores ? _self._scores : scores // ignore: cast_nullable_to_non_nullable
as List<PlayerScore>,
  ));
}


}

/// @nodoc
mixin _$PlayerScore {

 String get playerName; int get score;
/// Create a copy of PlayerScore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerScoreCopyWith<PlayerScore> get copyWith => _$PlayerScoreCopyWithImpl<PlayerScore>(this as PlayerScore, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerScore&&(identical(other.playerName, playerName) || other.playerName == playerName)&&(identical(other.score, score) || other.score == score));
}


@override
int get hashCode => Object.hash(runtimeType,playerName,score);

@override
String toString() {
  return 'PlayerScore(playerName: $playerName, score: $score)';
}


}

/// @nodoc
abstract mixin class $PlayerScoreCopyWith<$Res>  {
  factory $PlayerScoreCopyWith(PlayerScore value, $Res Function(PlayerScore) _then) = _$PlayerScoreCopyWithImpl;
@useResult
$Res call({
 String playerName, int score
});




}
/// @nodoc
class _$PlayerScoreCopyWithImpl<$Res>
    implements $PlayerScoreCopyWith<$Res> {
  _$PlayerScoreCopyWithImpl(this._self, this._then);

  final PlayerScore _self;
  final $Res Function(PlayerScore) _then;

/// Create a copy of PlayerScore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? playerName = null,Object? score = null,}) {
  return _then(_self.copyWith(
playerName: null == playerName ? _self.playerName : playerName // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PlayerScore].
extension PlayerScorePatterns on PlayerScore {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerScore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerScore() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerScore value)  $default,){
final _that = this;
switch (_that) {
case _PlayerScore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerScore value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerScore() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String playerName,  int score)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerScore() when $default != null:
return $default(_that.playerName,_that.score);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String playerName,  int score)  $default,) {final _that = this;
switch (_that) {
case _PlayerScore():
return $default(_that.playerName,_that.score);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String playerName,  int score)?  $default,) {final _that = this;
switch (_that) {
case _PlayerScore() when $default != null:
return $default(_that.playerName,_that.score);case _:
  return null;

}
}

}

/// @nodoc


class _PlayerScore implements PlayerScore {
  const _PlayerScore({required this.playerName, required this.score});
  

@override final  String playerName;
@override final  int score;

/// Create a copy of PlayerScore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerScoreCopyWith<_PlayerScore> get copyWith => __$PlayerScoreCopyWithImpl<_PlayerScore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerScore&&(identical(other.playerName, playerName) || other.playerName == playerName)&&(identical(other.score, score) || other.score == score));
}


@override
int get hashCode => Object.hash(runtimeType,playerName,score);

@override
String toString() {
  return 'PlayerScore(playerName: $playerName, score: $score)';
}


}

/// @nodoc
abstract mixin class _$PlayerScoreCopyWith<$Res> implements $PlayerScoreCopyWith<$Res> {
  factory _$PlayerScoreCopyWith(_PlayerScore value, $Res Function(_PlayerScore) _then) = __$PlayerScoreCopyWithImpl;
@override @useResult
$Res call({
 String playerName, int score
});




}
/// @nodoc
class __$PlayerScoreCopyWithImpl<$Res>
    implements _$PlayerScoreCopyWith<$Res> {
  __$PlayerScoreCopyWithImpl(this._self, this._then);

  final _PlayerScore _self;
  final $Res Function(_PlayerScore) _then;

/// Create a copy of PlayerScore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? playerName = null,Object? score = null,}) {
  return _then(_PlayerScore(
playerName: null == playerName ? _self.playerName : playerName // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
