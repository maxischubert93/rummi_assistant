import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class AppButtonStyle {
  const AppButtonStyle({
    required this.active,
    required this.iOSPressed,
    required this.disabled,
    required this.androidRipple,
  });

  final AppButtonStateStyle active;
  final AppButtonStateStyle iOSPressed;
  final AppButtonStateStyle disabled;
  final Color androidRipple;
}

@immutable
class AppButtonStateStyle {
  const AppButtonStateStyle({
    required this.background,
    required this.border,
    required this.content,
  });

  final Color background;
  final Color border;
  final Color content;
}
