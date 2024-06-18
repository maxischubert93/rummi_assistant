// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeScreenState {
  int get playerAmount => throw _privateConstructorUsedError;
  Duration get timerDuration => throw _privateConstructorUsedError;
  bool get isCustomTimerSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
  @useResult
  $Res call(
      {int playerAmount, Duration timerDuration, bool isCustomTimerSelected});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerAmount = null,
    Object? timerDuration = null,
    Object? isCustomTimerSelected = null,
  }) {
    return _then(_value.copyWith(
      playerAmount: null == playerAmount
          ? _value.playerAmount
          : playerAmount // ignore: cast_nullable_to_non_nullable
              as int,
      timerDuration: null == timerDuration
          ? _value.timerDuration
          : timerDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isCustomTimerSelected: null == isCustomTimerSelected
          ? _value.isCustomTimerSelected
          : isCustomTimerSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeScreenStateImplCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$HomeScreenStateImplCopyWith(_$HomeScreenStateImpl value,
          $Res Function(_$HomeScreenStateImpl) then) =
      __$$HomeScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int playerAmount, Duration timerDuration, bool isCustomTimerSelected});
}

/// @nodoc
class __$$HomeScreenStateImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$HomeScreenStateImpl>
    implements _$$HomeScreenStateImplCopyWith<$Res> {
  __$$HomeScreenStateImplCopyWithImpl(
      _$HomeScreenStateImpl _value, $Res Function(_$HomeScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerAmount = null,
    Object? timerDuration = null,
    Object? isCustomTimerSelected = null,
  }) {
    return _then(_$HomeScreenStateImpl(
      playerAmount: null == playerAmount
          ? _value.playerAmount
          : playerAmount // ignore: cast_nullable_to_non_nullable
              as int,
      timerDuration: null == timerDuration
          ? _value.timerDuration
          : timerDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isCustomTimerSelected: null == isCustomTimerSelected
          ? _value.isCustomTimerSelected
          : isCustomTimerSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeScreenStateImpl implements _HomeScreenState {
  const _$HomeScreenStateImpl(
      {required this.playerAmount,
      required this.timerDuration,
      required this.isCustomTimerSelected});

  @override
  final int playerAmount;
  @override
  final Duration timerDuration;
  @override
  final bool isCustomTimerSelected;

  @override
  String toString() {
    return 'HomeScreenState(playerAmount: $playerAmount, timerDuration: $timerDuration, isCustomTimerSelected: $isCustomTimerSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenStateImpl &&
            (identical(other.playerAmount, playerAmount) ||
                other.playerAmount == playerAmount) &&
            (identical(other.timerDuration, timerDuration) ||
                other.timerDuration == timerDuration) &&
            (identical(other.isCustomTimerSelected, isCustomTimerSelected) ||
                other.isCustomTimerSelected == isCustomTimerSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, playerAmount, timerDuration, isCustomTimerSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenStateImplCopyWith<_$HomeScreenStateImpl> get copyWith =>
      __$$HomeScreenStateImplCopyWithImpl<_$HomeScreenStateImpl>(
          this, _$identity);
}

abstract class _HomeScreenState implements HomeScreenState {
  const factory _HomeScreenState(
      {required final int playerAmount,
      required final Duration timerDuration,
      required final bool isCustomTimerSelected}) = _$HomeScreenStateImpl;

  @override
  int get playerAmount;
  @override
  Duration get timerDuration;
  @override
  bool get isCustomTimerSelected;
  @override
  @JsonKey(ignore: true)
  _$$HomeScreenStateImplCopyWith<_$HomeScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
