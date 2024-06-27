import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'license.freezed.dart';

@freezed
@immutable
class License with _$License {
  const factory License({
    required String packageName,
    required List<LicenseParagraph> paragraphs,
  }) = _License;

  const License._();

  @override
  bool operator ==(Object other) => other is License && other.packageName == packageName;

  @override
  int get hashCode => packageName.hashCode;
}
