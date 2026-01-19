// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ScoreState {

 List<Player> get players; bool get canEdit;
/// Create a copy of ScoreState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScoreStateCopyWith<ScoreState> get copyWith => _$ScoreStateCopyWithImpl<ScoreState>(this as ScoreState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScoreState&&const DeepCollectionEquality().equals(other.players, players)&&(identical(other.canEdit, canEdit) || other.canEdit == canEdit));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(players),canEdit);

@override
String toString() {
  return 'ScoreState(players: $players, canEdit: $canEdit)';
}


}

/// @nodoc
abstract mixin class $ScoreStateCopyWith<$Res>  {
  factory $ScoreStateCopyWith(ScoreState value, $Res Function(ScoreState) _then) = _$ScoreStateCopyWithImpl;
@useResult
$Res call({
 List<Player> players, bool canEdit
});




}
/// @nodoc
class _$ScoreStateCopyWithImpl<$Res>
    implements $ScoreStateCopyWith<$Res> {
  _$ScoreStateCopyWithImpl(this._self, this._then);

  final ScoreState _self;
  final $Res Function(ScoreState) _then;

/// Create a copy of ScoreState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? players = null,Object? canEdit = null,}) {
  return _then(_self.copyWith(
players: null == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as List<Player>,canEdit: null == canEdit ? _self.canEdit : canEdit // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ScoreState].
extension ScoreStatePatterns on ScoreState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScoreState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScoreState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScoreState value)  $default,){
final _that = this;
switch (_that) {
case _ScoreState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScoreState value)?  $default,){
final _that = this;
switch (_that) {
case _ScoreState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Player> players,  bool canEdit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScoreState() when $default != null:
return $default(_that.players,_that.canEdit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Player> players,  bool canEdit)  $default,) {final _that = this;
switch (_that) {
case _ScoreState():
return $default(_that.players,_that.canEdit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Player> players,  bool canEdit)?  $default,) {final _that = this;
switch (_that) {
case _ScoreState() when $default != null:
return $default(_that.players,_that.canEdit);case _:
  return null;

}
}

}

/// @nodoc


class _ScoreState extends ScoreState {
  const _ScoreState({required final  List<Player> players, required this.canEdit}): _players = players,super._();
  

 final  List<Player> _players;
@override List<Player> get players {
  if (_players is EqualUnmodifiableListView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_players);
}

@override final  bool canEdit;

/// Create a copy of ScoreState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScoreStateCopyWith<_ScoreState> get copyWith => __$ScoreStateCopyWithImpl<_ScoreState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScoreState&&const DeepCollectionEquality().equals(other._players, _players)&&(identical(other.canEdit, canEdit) || other.canEdit == canEdit));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_players),canEdit);

@override
String toString() {
  return 'ScoreState(players: $players, canEdit: $canEdit)';
}


}

/// @nodoc
abstract mixin class _$ScoreStateCopyWith<$Res> implements $ScoreStateCopyWith<$Res> {
  factory _$ScoreStateCopyWith(_ScoreState value, $Res Function(_ScoreState) _then) = __$ScoreStateCopyWithImpl;
@override @useResult
$Res call({
 List<Player> players, bool canEdit
});




}
/// @nodoc
class __$ScoreStateCopyWithImpl<$Res>
    implements _$ScoreStateCopyWith<$Res> {
  __$ScoreStateCopyWithImpl(this._self, this._then);

  final _ScoreState _self;
  final $Res Function(_ScoreState) _then;

/// Create a copy of ScoreState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? players = null,Object? canEdit = null,}) {
  return _then(_ScoreState(
players: null == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<Player>,canEdit: null == canEdit ? _self.canEdit : canEdit // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$TotalPlayerScore {

 int get totalScore; bool get isWinning;
/// Create a copy of TotalPlayerScore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TotalPlayerScoreCopyWith<TotalPlayerScore> get copyWith => _$TotalPlayerScoreCopyWithImpl<TotalPlayerScore>(this as TotalPlayerScore, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TotalPlayerScore&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.isWinning, isWinning) || other.isWinning == isWinning));
}


@override
int get hashCode => Object.hash(runtimeType,totalScore,isWinning);

@override
String toString() {
  return 'TotalPlayerScore(totalScore: $totalScore, isWinning: $isWinning)';
}


}

/// @nodoc
abstract mixin class $TotalPlayerScoreCopyWith<$Res>  {
  factory $TotalPlayerScoreCopyWith(TotalPlayerScore value, $Res Function(TotalPlayerScore) _then) = _$TotalPlayerScoreCopyWithImpl;
@useResult
$Res call({
 int totalScore, bool isWinning
});




}
/// @nodoc
class _$TotalPlayerScoreCopyWithImpl<$Res>
    implements $TotalPlayerScoreCopyWith<$Res> {
  _$TotalPlayerScoreCopyWithImpl(this._self, this._then);

  final TotalPlayerScore _self;
  final $Res Function(TotalPlayerScore) _then;

/// Create a copy of TotalPlayerScore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalScore = null,Object? isWinning = null,}) {
  return _then(_self.copyWith(
totalScore: null == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int,isWinning: null == isWinning ? _self.isWinning : isWinning // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TotalPlayerScore].
extension TotalPlayerScorePatterns on TotalPlayerScore {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TotalPlayerScore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TotalPlayerScore() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TotalPlayerScore value)  $default,){
final _that = this;
switch (_that) {
case _TotalPlayerScore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TotalPlayerScore value)?  $default,){
final _that = this;
switch (_that) {
case _TotalPlayerScore() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalScore,  bool isWinning)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TotalPlayerScore() when $default != null:
return $default(_that.totalScore,_that.isWinning);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalScore,  bool isWinning)  $default,) {final _that = this;
switch (_that) {
case _TotalPlayerScore():
return $default(_that.totalScore,_that.isWinning);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalScore,  bool isWinning)?  $default,) {final _that = this;
switch (_that) {
case _TotalPlayerScore() when $default != null:
return $default(_that.totalScore,_that.isWinning);case _:
  return null;

}
}

}

/// @nodoc


class _TotalPlayerScore implements TotalPlayerScore {
  const _TotalPlayerScore({required this.totalScore, required this.isWinning});
  

@override final  int totalScore;
@override final  bool isWinning;

/// Create a copy of TotalPlayerScore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TotalPlayerScoreCopyWith<_TotalPlayerScore> get copyWith => __$TotalPlayerScoreCopyWithImpl<_TotalPlayerScore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TotalPlayerScore&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.isWinning, isWinning) || other.isWinning == isWinning));
}


@override
int get hashCode => Object.hash(runtimeType,totalScore,isWinning);

@override
String toString() {
  return 'TotalPlayerScore(totalScore: $totalScore, isWinning: $isWinning)';
}


}

/// @nodoc
abstract mixin class _$TotalPlayerScoreCopyWith<$Res> implements $TotalPlayerScoreCopyWith<$Res> {
  factory _$TotalPlayerScoreCopyWith(_TotalPlayerScore value, $Res Function(_TotalPlayerScore) _then) = __$TotalPlayerScoreCopyWithImpl;
@override @useResult
$Res call({
 int totalScore, bool isWinning
});




}
/// @nodoc
class __$TotalPlayerScoreCopyWithImpl<$Res>
    implements _$TotalPlayerScoreCopyWith<$Res> {
  __$TotalPlayerScoreCopyWithImpl(this._self, this._then);

  final _TotalPlayerScore _self;
  final $Res Function(_TotalPlayerScore) _then;

/// Create a copy of TotalPlayerScore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalScore = null,Object? isWinning = null,}) {
  return _then(_TotalPlayerScore(
totalScore: null == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int,isWinning: null == isWinning ? _self.isWinning : isWinning // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
