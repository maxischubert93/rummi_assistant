// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_names_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayerNamesState {
  List<String> get playerNames => throw _privateConstructorUsedError;
  List<FocusNode> get focusNodes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerNamesStateCopyWith<PlayerNamesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerNamesStateCopyWith<$Res> {
  factory $PlayerNamesStateCopyWith(
          PlayerNamesState value, $Res Function(PlayerNamesState) then) =
      _$PlayerNamesStateCopyWithImpl<$Res, PlayerNamesState>;
  @useResult
  $Res call({List<String> playerNames, List<FocusNode> focusNodes});
}

/// @nodoc
class _$PlayerNamesStateCopyWithImpl<$Res, $Val extends PlayerNamesState>
    implements $PlayerNamesStateCopyWith<$Res> {
  _$PlayerNamesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerNames = null,
    Object? focusNodes = null,
  }) {
    return _then(_value.copyWith(
      playerNames: null == playerNames
          ? _value.playerNames
          : playerNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      focusNodes: null == focusNodes
          ? _value.focusNodes
          : focusNodes // ignore: cast_nullable_to_non_nullable
              as List<FocusNode>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerNamesStateImplCopyWith<$Res>
    implements $PlayerNamesStateCopyWith<$Res> {
  factory _$$PlayerNamesStateImplCopyWith(_$PlayerNamesStateImpl value,
          $Res Function(_$PlayerNamesStateImpl) then) =
      __$$PlayerNamesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> playerNames, List<FocusNode> focusNodes});
}

/// @nodoc
class __$$PlayerNamesStateImplCopyWithImpl<$Res>
    extends _$PlayerNamesStateCopyWithImpl<$Res, _$PlayerNamesStateImpl>
    implements _$$PlayerNamesStateImplCopyWith<$Res> {
  __$$PlayerNamesStateImplCopyWithImpl(_$PlayerNamesStateImpl _value,
      $Res Function(_$PlayerNamesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerNames = null,
    Object? focusNodes = null,
  }) {
    return _then(_$PlayerNamesStateImpl(
      playerNames: null == playerNames
          ? _value._playerNames
          : playerNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      focusNodes: null == focusNodes
          ? _value._focusNodes
          : focusNodes // ignore: cast_nullable_to_non_nullable
              as List<FocusNode>,
    ));
  }
}

/// @nodoc

class _$PlayerNamesStateImpl extends _PlayerNamesState {
  const _$PlayerNamesStateImpl(
      {required final List<String> playerNames,
      required final List<FocusNode> focusNodes})
      : _playerNames = playerNames,
        _focusNodes = focusNodes,
        super._();

  final List<String> _playerNames;
  @override
  List<String> get playerNames {
    if (_playerNames is EqualUnmodifiableListView) return _playerNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playerNames);
  }

  final List<FocusNode> _focusNodes;
  @override
  List<FocusNode> get focusNodes {
    if (_focusNodes is EqualUnmodifiableListView) return _focusNodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_focusNodes);
  }

  @override
  String toString() {
    return 'PlayerNamesState(playerNames: $playerNames, focusNodes: $focusNodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerNamesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._playerNames, _playerNames) &&
            const DeepCollectionEquality()
                .equals(other._focusNodes, _focusNodes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_playerNames),
      const DeepCollectionEquality().hash(_focusNodes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerNamesStateImplCopyWith<_$PlayerNamesStateImpl> get copyWith =>
      __$$PlayerNamesStateImplCopyWithImpl<_$PlayerNamesStateImpl>(
          this, _$identity);
}

abstract class _PlayerNamesState extends PlayerNamesState {
  const factory _PlayerNamesState(
      {required final List<String> playerNames,
      required final List<FocusNode> focusNodes}) = _$PlayerNamesStateImpl;
  const _PlayerNamesState._() : super._();

  @override
  List<String> get playerNames;
  @override
  List<FocusNode> get focusNodes;
  @override
  @JsonKey(ignore: true)
  _$$PlayerNamesStateImplCopyWith<_$PlayerNamesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
