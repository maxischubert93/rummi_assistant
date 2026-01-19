// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_input_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ScoreInputState {

 List<PlayerRoundScore> get playerScores;
/// Create a copy of ScoreInputState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScoreInputStateCopyWith<ScoreInputState> get copyWith => _$ScoreInputStateCopyWithImpl<ScoreInputState>(this as ScoreInputState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScoreInputState&&const DeepCollectionEquality().equals(other.playerScores, playerScores));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(playerScores));

@override
String toString() {
  return 'ScoreInputState(playerScores: $playerScores)';
}


}

/// @nodoc
abstract mixin class $ScoreInputStateCopyWith<$Res>  {
  factory $ScoreInputStateCopyWith(ScoreInputState value, $Res Function(ScoreInputState) _then) = _$ScoreInputStateCopyWithImpl;
@useResult
$Res call({
 List<PlayerRoundScore> playerScores
});




}
/// @nodoc
class _$ScoreInputStateCopyWithImpl<$Res>
    implements $ScoreInputStateCopyWith<$Res> {
  _$ScoreInputStateCopyWithImpl(this._self, this._then);

  final ScoreInputState _self;
  final $Res Function(ScoreInputState) _then;

/// Create a copy of ScoreInputState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? playerScores = null,}) {
  return _then(_self.copyWith(
playerScores: null == playerScores ? _self.playerScores : playerScores // ignore: cast_nullable_to_non_nullable
as List<PlayerRoundScore>,
  ));
}

}


/// Adds pattern-matching-related methods to [ScoreInputState].
extension ScoreInputStatePatterns on ScoreInputState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScoreInputState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScoreInputState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScoreInputState value)  $default,){
final _that = this;
switch (_that) {
case _ScoreInputState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScoreInputState value)?  $default,){
final _that = this;
switch (_that) {
case _ScoreInputState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PlayerRoundScore> playerScores)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScoreInputState() when $default != null:
return $default(_that.playerScores);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PlayerRoundScore> playerScores)  $default,) {final _that = this;
switch (_that) {
case _ScoreInputState():
return $default(_that.playerScores);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PlayerRoundScore> playerScores)?  $default,) {final _that = this;
switch (_that) {
case _ScoreInputState() when $default != null:
return $default(_that.playerScores);case _:
  return null;

}
}

}

/// @nodoc


class _ScoreInputState extends ScoreInputState {
  const _ScoreInputState({required final  List<PlayerRoundScore> playerScores}): _playerScores = playerScores,super._();
  

 final  List<PlayerRoundScore> _playerScores;
@override List<PlayerRoundScore> get playerScores {
  if (_playerScores is EqualUnmodifiableListView) return _playerScores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_playerScores);
}


/// Create a copy of ScoreInputState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScoreInputStateCopyWith<_ScoreInputState> get copyWith => __$ScoreInputStateCopyWithImpl<_ScoreInputState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScoreInputState&&const DeepCollectionEquality().equals(other._playerScores, _playerScores));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_playerScores));

@override
String toString() {
  return 'ScoreInputState(playerScores: $playerScores)';
}


}

/// @nodoc
abstract mixin class _$ScoreInputStateCopyWith<$Res> implements $ScoreInputStateCopyWith<$Res> {
  factory _$ScoreInputStateCopyWith(_ScoreInputState value, $Res Function(_ScoreInputState) _then) = __$ScoreInputStateCopyWithImpl;
@override @useResult
$Res call({
 List<PlayerRoundScore> playerScores
});




}
/// @nodoc
class __$ScoreInputStateCopyWithImpl<$Res>
    implements _$ScoreInputStateCopyWith<$Res> {
  __$ScoreInputStateCopyWithImpl(this._self, this._then);

  final _ScoreInputState _self;
  final $Res Function(_ScoreInputState) _then;

/// Create a copy of ScoreInputState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? playerScores = null,}) {
  return _then(_ScoreInputState(
playerScores: null == playerScores ? _self._playerScores : playerScores // ignore: cast_nullable_to_non_nullable
as List<PlayerRoundScore>,
  ));
}


}

/// @nodoc
mixin _$PlayerRoundScore {

 String get playerName; FocusNode get focusNode; String? get score; bool get wonRound;
/// Create a copy of PlayerRoundScore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerRoundScoreCopyWith<PlayerRoundScore> get copyWith => _$PlayerRoundScoreCopyWithImpl<PlayerRoundScore>(this as PlayerRoundScore, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerRoundScore&&(identical(other.playerName, playerName) || other.playerName == playerName)&&(identical(other.focusNode, focusNode) || other.focusNode == focusNode)&&(identical(other.score, score) || other.score == score)&&(identical(other.wonRound, wonRound) || other.wonRound == wonRound));
}


@override
int get hashCode => Object.hash(runtimeType,playerName,focusNode,score,wonRound);

@override
String toString() {
  return 'PlayerRoundScore(playerName: $playerName, focusNode: $focusNode, score: $score, wonRound: $wonRound)';
}


}

/// @nodoc
abstract mixin class $PlayerRoundScoreCopyWith<$Res>  {
  factory $PlayerRoundScoreCopyWith(PlayerRoundScore value, $Res Function(PlayerRoundScore) _then) = _$PlayerRoundScoreCopyWithImpl;
@useResult
$Res call({
 String playerName, FocusNode focusNode, String? score, bool wonRound
});




}
/// @nodoc
class _$PlayerRoundScoreCopyWithImpl<$Res>
    implements $PlayerRoundScoreCopyWith<$Res> {
  _$PlayerRoundScoreCopyWithImpl(this._self, this._then);

  final PlayerRoundScore _self;
  final $Res Function(PlayerRoundScore) _then;

/// Create a copy of PlayerRoundScore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? playerName = null,Object? focusNode = null,Object? score = freezed,Object? wonRound = null,}) {
  return _then(_self.copyWith(
playerName: null == playerName ? _self.playerName : playerName // ignore: cast_nullable_to_non_nullable
as String,focusNode: null == focusNode ? _self.focusNode : focusNode // ignore: cast_nullable_to_non_nullable
as FocusNode,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String?,wonRound: null == wonRound ? _self.wonRound : wonRound // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PlayerRoundScore].
extension PlayerRoundScorePatterns on PlayerRoundScore {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerRoundScore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerRoundScore() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerRoundScore value)  $default,){
final _that = this;
switch (_that) {
case _PlayerRoundScore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerRoundScore value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerRoundScore() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String playerName,  FocusNode focusNode,  String? score,  bool wonRound)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerRoundScore() when $default != null:
return $default(_that.playerName,_that.focusNode,_that.score,_that.wonRound);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String playerName,  FocusNode focusNode,  String? score,  bool wonRound)  $default,) {final _that = this;
switch (_that) {
case _PlayerRoundScore():
return $default(_that.playerName,_that.focusNode,_that.score,_that.wonRound);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String playerName,  FocusNode focusNode,  String? score,  bool wonRound)?  $default,) {final _that = this;
switch (_that) {
case _PlayerRoundScore() when $default != null:
return $default(_that.playerName,_that.focusNode,_that.score,_that.wonRound);case _:
  return null;

}
}

}

/// @nodoc


class _PlayerRoundScore extends PlayerRoundScore {
  const _PlayerRoundScore({required this.playerName, required this.focusNode, this.score, this.wonRound = false}): super._();
  

@override final  String playerName;
@override final  FocusNode focusNode;
@override final  String? score;
@override@JsonKey() final  bool wonRound;

/// Create a copy of PlayerRoundScore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerRoundScoreCopyWith<_PlayerRoundScore> get copyWith => __$PlayerRoundScoreCopyWithImpl<_PlayerRoundScore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerRoundScore&&(identical(other.playerName, playerName) || other.playerName == playerName)&&(identical(other.focusNode, focusNode) || other.focusNode == focusNode)&&(identical(other.score, score) || other.score == score)&&(identical(other.wonRound, wonRound) || other.wonRound == wonRound));
}


@override
int get hashCode => Object.hash(runtimeType,playerName,focusNode,score,wonRound);

@override
String toString() {
  return 'PlayerRoundScore(playerName: $playerName, focusNode: $focusNode, score: $score, wonRound: $wonRound)';
}


}

/// @nodoc
abstract mixin class _$PlayerRoundScoreCopyWith<$Res> implements $PlayerRoundScoreCopyWith<$Res> {
  factory _$PlayerRoundScoreCopyWith(_PlayerRoundScore value, $Res Function(_PlayerRoundScore) _then) = __$PlayerRoundScoreCopyWithImpl;
@override @useResult
$Res call({
 String playerName, FocusNode focusNode, String? score, bool wonRound
});




}
/// @nodoc
class __$PlayerRoundScoreCopyWithImpl<$Res>
    implements _$PlayerRoundScoreCopyWith<$Res> {
  __$PlayerRoundScoreCopyWithImpl(this._self, this._then);

  final _PlayerRoundScore _self;
  final $Res Function(_PlayerRoundScore) _then;

/// Create a copy of PlayerRoundScore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? playerName = null,Object? focusNode = null,Object? score = freezed,Object? wonRound = null,}) {
  return _then(_PlayerRoundScore(
playerName: null == playerName ? _self.playerName : playerName // ignore: cast_nullable_to_non_nullable
as String,focusNode: null == focusNode ? _self.focusNode : focusNode // ignore: cast_nullable_to_non_nullable
as FocusNode,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String?,wonRound: null == wonRound ? _self.wonRound : wonRound // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
