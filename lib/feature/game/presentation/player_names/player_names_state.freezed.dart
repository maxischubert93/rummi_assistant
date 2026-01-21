// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_names_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlayerNamesState {

 List<String> get playerNames; List<FocusNode> get focusNodes;
/// Create a copy of PlayerNamesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerNamesStateCopyWith<PlayerNamesState> get copyWith => _$PlayerNamesStateCopyWithImpl<PlayerNamesState>(this as PlayerNamesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerNamesState&&const DeepCollectionEquality().equals(other.playerNames, playerNames)&&const DeepCollectionEquality().equals(other.focusNodes, focusNodes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(playerNames),const DeepCollectionEquality().hash(focusNodes));

@override
String toString() {
  return 'PlayerNamesState(playerNames: $playerNames, focusNodes: $focusNodes)';
}


}

/// @nodoc
abstract mixin class $PlayerNamesStateCopyWith<$Res>  {
  factory $PlayerNamesStateCopyWith(PlayerNamesState value, $Res Function(PlayerNamesState) _then) = _$PlayerNamesStateCopyWithImpl;
@useResult
$Res call({
 List<String> playerNames, List<FocusNode> focusNodes
});




}
/// @nodoc
class _$PlayerNamesStateCopyWithImpl<$Res>
    implements $PlayerNamesStateCopyWith<$Res> {
  _$PlayerNamesStateCopyWithImpl(this._self, this._then);

  final PlayerNamesState _self;
  final $Res Function(PlayerNamesState) _then;

/// Create a copy of PlayerNamesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? playerNames = null,Object? focusNodes = null,}) {
  return _then(_self.copyWith(
playerNames: null == playerNames ? _self.playerNames : playerNames // ignore: cast_nullable_to_non_nullable
as List<String>,focusNodes: null == focusNodes ? _self.focusNodes : focusNodes // ignore: cast_nullable_to_non_nullable
as List<FocusNode>,
  ));
}

}


/// Adds pattern-matching-related methods to [PlayerNamesState].
extension PlayerNamesStatePatterns on PlayerNamesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerNamesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerNamesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerNamesState value)  $default,){
final _that = this;
switch (_that) {
case _PlayerNamesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerNamesState value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerNamesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> playerNames,  List<FocusNode> focusNodes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerNamesState() when $default != null:
return $default(_that.playerNames,_that.focusNodes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> playerNames,  List<FocusNode> focusNodes)  $default,) {final _that = this;
switch (_that) {
case _PlayerNamesState():
return $default(_that.playerNames,_that.focusNodes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> playerNames,  List<FocusNode> focusNodes)?  $default,) {final _that = this;
switch (_that) {
case _PlayerNamesState() when $default != null:
return $default(_that.playerNames,_that.focusNodes);case _:
  return null;

}
}

}

/// @nodoc


class _PlayerNamesState extends PlayerNamesState {
  const _PlayerNamesState({required final  List<String> playerNames, required final  List<FocusNode> focusNodes}): _playerNames = playerNames,_focusNodes = focusNodes,super._();
  

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


/// Create a copy of PlayerNamesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerNamesStateCopyWith<_PlayerNamesState> get copyWith => __$PlayerNamesStateCopyWithImpl<_PlayerNamesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerNamesState&&const DeepCollectionEquality().equals(other._playerNames, _playerNames)&&const DeepCollectionEquality().equals(other._focusNodes, _focusNodes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_playerNames),const DeepCollectionEquality().hash(_focusNodes));

@override
String toString() {
  return 'PlayerNamesState(playerNames: $playerNames, focusNodes: $focusNodes)';
}


}

/// @nodoc
abstract mixin class _$PlayerNamesStateCopyWith<$Res> implements $PlayerNamesStateCopyWith<$Res> {
  factory _$PlayerNamesStateCopyWith(_PlayerNamesState value, $Res Function(_PlayerNamesState) _then) = __$PlayerNamesStateCopyWithImpl;
@override @useResult
$Res call({
 List<String> playerNames, List<FocusNode> focusNodes
});




}
/// @nodoc
class __$PlayerNamesStateCopyWithImpl<$Res>
    implements _$PlayerNamesStateCopyWith<$Res> {
  __$PlayerNamesStateCopyWithImpl(this._self, this._then);

  final _PlayerNamesState _self;
  final $Res Function(_PlayerNamesState) _then;

/// Create a copy of PlayerNamesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? playerNames = null,Object? focusNodes = null,}) {
  return _then(_PlayerNamesState(
playerNames: null == playerNames ? _self._playerNames : playerNames // ignore: cast_nullable_to_non_nullable
as List<String>,focusNodes: null == focusNodes ? _self._focusNodes : focusNodes // ignore: cast_nullable_to_non_nullable
as List<FocusNode>,
  ));
}


}

// dart format on
