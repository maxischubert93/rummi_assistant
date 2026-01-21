// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewGameState {

 Duration get timerDuration; int get amountOfPlayers; List<String> get playerNames; List<FocusNode> get focusNodes;
/// Create a copy of NewGameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewGameStateCopyWith<NewGameState> get copyWith => _$NewGameStateCopyWithImpl<NewGameState>(this as NewGameState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewGameState&&(identical(other.timerDuration, timerDuration) || other.timerDuration == timerDuration)&&(identical(other.amountOfPlayers, amountOfPlayers) || other.amountOfPlayers == amountOfPlayers)&&const DeepCollectionEquality().equals(other.playerNames, playerNames)&&const DeepCollectionEquality().equals(other.focusNodes, focusNodes));
}


@override
int get hashCode => Object.hash(runtimeType,timerDuration,amountOfPlayers,const DeepCollectionEquality().hash(playerNames),const DeepCollectionEquality().hash(focusNodes));

@override
String toString() {
  return 'NewGameState(timerDuration: $timerDuration, amountOfPlayers: $amountOfPlayers, playerNames: $playerNames, focusNodes: $focusNodes)';
}


}

/// @nodoc
abstract mixin class $NewGameStateCopyWith<$Res>  {
  factory $NewGameStateCopyWith(NewGameState value, $Res Function(NewGameState) _then) = _$NewGameStateCopyWithImpl;
@useResult
$Res call({
 Duration timerDuration, int amountOfPlayers, List<String> playerNames, List<FocusNode> focusNodes
});




}
/// @nodoc
class _$NewGameStateCopyWithImpl<$Res>
    implements $NewGameStateCopyWith<$Res> {
  _$NewGameStateCopyWithImpl(this._self, this._then);

  final NewGameState _self;
  final $Res Function(NewGameState) _then;

/// Create a copy of NewGameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timerDuration = null,Object? amountOfPlayers = null,Object? playerNames = null,Object? focusNodes = null,}) {
  return _then(_self.copyWith(
timerDuration: null == timerDuration ? _self.timerDuration : timerDuration // ignore: cast_nullable_to_non_nullable
as Duration,amountOfPlayers: null == amountOfPlayers ? _self.amountOfPlayers : amountOfPlayers // ignore: cast_nullable_to_non_nullable
as int,playerNames: null == playerNames ? _self.playerNames : playerNames // ignore: cast_nullable_to_non_nullable
as List<String>,focusNodes: null == focusNodes ? _self.focusNodes : focusNodes // ignore: cast_nullable_to_non_nullable
as List<FocusNode>,
  ));
}

}


/// Adds pattern-matching-related methods to [NewGameState].
extension NewGameStatePatterns on NewGameState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewGameState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewGameState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewGameState value)  $default,){
final _that = this;
switch (_that) {
case _NewGameState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewGameState value)?  $default,){
final _that = this;
switch (_that) {
case _NewGameState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Duration timerDuration,  int amountOfPlayers,  List<String> playerNames,  List<FocusNode> focusNodes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewGameState() when $default != null:
return $default(_that.timerDuration,_that.amountOfPlayers,_that.playerNames,_that.focusNodes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Duration timerDuration,  int amountOfPlayers,  List<String> playerNames,  List<FocusNode> focusNodes)  $default,) {final _that = this;
switch (_that) {
case _NewGameState():
return $default(_that.timerDuration,_that.amountOfPlayers,_that.playerNames,_that.focusNodes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Duration timerDuration,  int amountOfPlayers,  List<String> playerNames,  List<FocusNode> focusNodes)?  $default,) {final _that = this;
switch (_that) {
case _NewGameState() when $default != null:
return $default(_that.timerDuration,_that.amountOfPlayers,_that.playerNames,_that.focusNodes);case _:
  return null;

}
}

}

/// @nodoc


class _NewGameState extends NewGameState {
  const _NewGameState({required this.timerDuration, required this.amountOfPlayers, required final  List<String> playerNames, required final  List<FocusNode> focusNodes}): _playerNames = playerNames,_focusNodes = focusNodes,super._();
  

@override final  Duration timerDuration;
@override final  int amountOfPlayers;
 final  List<String> _playerNames;
@override List<String> get playerNames {
  if (_playerNames is EqualUnmodifiableListView) return _playerNames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_playerNames);
}

 final  List<FocusNode> _focusNodes;
@override List<FocusNode> get focusNodes {
  if (_focusNodes is EqualUnmodifiableListView) return _focusNodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_focusNodes);
}


/// Create a copy of NewGameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewGameStateCopyWith<_NewGameState> get copyWith => __$NewGameStateCopyWithImpl<_NewGameState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewGameState&&(identical(other.timerDuration, timerDuration) || other.timerDuration == timerDuration)&&(identical(other.amountOfPlayers, amountOfPlayers) || other.amountOfPlayers == amountOfPlayers)&&const DeepCollectionEquality().equals(other._playerNames, _playerNames)&&const DeepCollectionEquality().equals(other._focusNodes, _focusNodes));
}


@override
int get hashCode => Object.hash(runtimeType,timerDuration,amountOfPlayers,const DeepCollectionEquality().hash(_playerNames),const DeepCollectionEquality().hash(_focusNodes));

@override
String toString() {
  return 'NewGameState(timerDuration: $timerDuration, amountOfPlayers: $amountOfPlayers, playerNames: $playerNames, focusNodes: $focusNodes)';
}


}

/// @nodoc
abstract mixin class _$NewGameStateCopyWith<$Res> implements $NewGameStateCopyWith<$Res> {
  factory _$NewGameStateCopyWith(_NewGameState value, $Res Function(_NewGameState) _then) = __$NewGameStateCopyWithImpl;
@override @useResult
$Res call({
 Duration timerDuration, int amountOfPlayers, List<String> playerNames, List<FocusNode> focusNodes
});




}
/// @nodoc
class __$NewGameStateCopyWithImpl<$Res>
    implements _$NewGameStateCopyWith<$Res> {
  __$NewGameStateCopyWithImpl(this._self, this._then);

  final _NewGameState _self;
  final $Res Function(_NewGameState) _then;

/// Create a copy of NewGameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timerDuration = null,Object? amountOfPlayers = null,Object? playerNames = null,Object? focusNodes = null,}) {
  return _then(_NewGameState(
timerDuration: null == timerDuration ? _self.timerDuration : timerDuration // ignore: cast_nullable_to_non_nullable
as Duration,amountOfPlayers: null == amountOfPlayers ? _self.amountOfPlayers : amountOfPlayers // ignore: cast_nullable_to_non_nullable
as int,playerNames: null == playerNames ? _self._playerNames : playerNames // ignore: cast_nullable_to_non_nullable
as List<String>,focusNodes: null == focusNodes ? _self._focusNodes : focusNodes // ignore: cast_nullable_to_non_nullable
as List<FocusNode>,
  ));
}


}

// dart format on
