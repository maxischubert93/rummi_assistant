// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'license.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$License implements DiagnosticableTreeMixin {

 String get packageName; List<LicenseParagraph> get paragraphs;
/// Create a copy of License
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LicenseCopyWith<License> get copyWith => _$LicenseCopyWithImpl<License>(this as License, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'License'))
    ..add(DiagnosticsProperty('packageName', packageName))..add(DiagnosticsProperty('paragraphs', paragraphs));
}



@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'License(packageName: $packageName, paragraphs: $paragraphs)';
}


}

/// @nodoc
abstract mixin class $LicenseCopyWith<$Res>  {
  factory $LicenseCopyWith(License value, $Res Function(License) _then) = _$LicenseCopyWithImpl;
@useResult
$Res call({
 String packageName, List<LicenseParagraph> paragraphs
});




}
/// @nodoc
class _$LicenseCopyWithImpl<$Res>
    implements $LicenseCopyWith<$Res> {
  _$LicenseCopyWithImpl(this._self, this._then);

  final License _self;
  final $Res Function(License) _then;

/// Create a copy of License
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packageName = null,Object? paragraphs = null,}) {
  return _then(_self.copyWith(
packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,paragraphs: null == paragraphs ? _self.paragraphs : paragraphs // ignore: cast_nullable_to_non_nullable
as List<LicenseParagraph>,
  ));
}

}


/// Adds pattern-matching-related methods to [License].
extension LicensePatterns on License {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _License value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _License() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _License value)  $default,){
final _that = this;
switch (_that) {
case _License():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _License value)?  $default,){
final _that = this;
switch (_that) {
case _License() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String packageName,  List<LicenseParagraph> paragraphs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _License() when $default != null:
return $default(_that.packageName,_that.paragraphs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String packageName,  List<LicenseParagraph> paragraphs)  $default,) {final _that = this;
switch (_that) {
case _License():
return $default(_that.packageName,_that.paragraphs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String packageName,  List<LicenseParagraph> paragraphs)?  $default,) {final _that = this;
switch (_that) {
case _License() when $default != null:
return $default(_that.packageName,_that.paragraphs);case _:
  return null;

}
}

}

/// @nodoc


class _License extends License with DiagnosticableTreeMixin {
  const _License({required this.packageName, required final  List<LicenseParagraph> paragraphs}): _paragraphs = paragraphs,super._();
  

@override final  String packageName;
 final  List<LicenseParagraph> _paragraphs;
@override List<LicenseParagraph> get paragraphs {
  if (_paragraphs is EqualUnmodifiableListView) return _paragraphs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paragraphs);
}


/// Create a copy of License
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LicenseCopyWith<_License> get copyWith => __$LicenseCopyWithImpl<_License>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'License'))
    ..add(DiagnosticsProperty('packageName', packageName))..add(DiagnosticsProperty('paragraphs', paragraphs));
}



@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'License(packageName: $packageName, paragraphs: $paragraphs)';
}


}

/// @nodoc
abstract mixin class _$LicenseCopyWith<$Res> implements $LicenseCopyWith<$Res> {
  factory _$LicenseCopyWith(_License value, $Res Function(_License) _then) = __$LicenseCopyWithImpl;
@override @useResult
$Res call({
 String packageName, List<LicenseParagraph> paragraphs
});




}
/// @nodoc
class __$LicenseCopyWithImpl<$Res>
    implements _$LicenseCopyWith<$Res> {
  __$LicenseCopyWithImpl(this._self, this._then);

  final _License _self;
  final $Res Function(_License) _then;

/// Create a copy of License
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packageName = null,Object? paragraphs = null,}) {
  return _then(_License(
packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,paragraphs: null == paragraphs ? _self._paragraphs : paragraphs // ignore: cast_nullable_to_non_nullable
as List<LicenseParagraph>,
  ));
}


}

// dart format on
