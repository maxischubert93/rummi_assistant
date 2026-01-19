// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsState {

 List<Player> get players; Duration get timerDuration; bool get isTimerSoundEnabled;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStateCopyWith<SettingsState> get copyWith => _$SettingsStateCopyWithImpl<SettingsState>(this as SettingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState&&const DeepCollectionEquality().equals(other.players, players)&&(identical(other.timerDuration, timerDuration) || other.timerDuration == timerDuration)&&(identical(other.isTimerSoundEnabled, isTimerSoundEnabled) || other.isTimerSoundEnabled == isTimerSoundEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(players),timerDuration,isTimerSoundEnabled);

@override
String toString() {
  return 'SettingsState(players: $players, timerDuration: $timerDuration, isTimerSoundEnabled: $isTimerSoundEnabled)';
}


}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res>  {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) _then) = _$SettingsStateCopyWithImpl;
@useResult
$Res call({
 List<Player> players, Duration timerDuration, bool isTimerSoundEnabled
});




}
/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? players = null,Object? timerDuration = null,Object? isTimerSoundEnabled = null,}) {
  return _then(_self.copyWith(
players: null == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as List<Player>,timerDuration: null == timerDuration ? _self.timerDuration : timerDuration // ignore: cast_nullable_to_non_nullable
as Duration,isTimerSoundEnabled: null == isTimerSoundEnabled ? _self.isTimerSoundEnabled : isTimerSoundEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns on SettingsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsState value)  $default,){
final _that = this;
switch (_that) {
case _SettingsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsState value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Player> players,  Duration timerDuration,  bool isTimerSoundEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.players,_that.timerDuration,_that.isTimerSoundEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Player> players,  Duration timerDuration,  bool isTimerSoundEnabled)  $default,) {final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that.players,_that.timerDuration,_that.isTimerSoundEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Player> players,  Duration timerDuration,  bool isTimerSoundEnabled)?  $default,) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.players,_that.timerDuration,_that.isTimerSoundEnabled);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsState extends SettingsState {
  const _SettingsState({required final  List<Player> players, required this.timerDuration, required this.isTimerSoundEnabled}): _players = players,super._();
  

 final  List<Player> _players;
@override List<Player> get players {
  if (_players is EqualUnmodifiableListView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_players);
}

@override final  Duration timerDuration;
@override final  bool isTimerSoundEnabled;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsStateCopyWith<_SettingsState> get copyWith => __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsState&&const DeepCollectionEquality().equals(other._players, _players)&&(identical(other.timerDuration, timerDuration) || other.timerDuration == timerDuration)&&(identical(other.isTimerSoundEnabled, isTimerSoundEnabled) || other.isTimerSoundEnabled == isTimerSoundEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_players),timerDuration,isTimerSoundEnabled);

@override
String toString() {
  return 'SettingsState(players: $players, timerDuration: $timerDuration, isTimerSoundEnabled: $isTimerSoundEnabled)';
}


}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(_SettingsState value, $Res Function(_SettingsState) _then) = __$SettingsStateCopyWithImpl;
@override @useResult
$Res call({
 List<Player> players, Duration timerDuration, bool isTimerSoundEnabled
});




}
/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(this._self, this._then);

  final _SettingsState _self;
  final $Res Function(_SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? players = null,Object? timerDuration = null,Object? isTimerSoundEnabled = null,}) {
  return _then(_SettingsState(
players: null == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<Player>,timerDuration: null == timerDuration ? _self.timerDuration : timerDuration // ignore: cast_nullable_to_non_nullable
as Duration,isTimerSoundEnabled: null == isTimerSoundEnabled ? _self.isTimerSoundEnabled : isTimerSoundEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
