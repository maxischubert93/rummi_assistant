import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:rummi_assistant/core/app/theme/color_scheme.dart';

@immutable
class AppNavBarTheme {
  const AppNavBarTheme(this.colors);

  final AppColorScheme colors;

  Color get active => colors.primary;

  Color get activeContent => colors.onPrimary;

  Color get disabled => colors.disabled;

  Color get background => colors.navigation;

  Color get inactive => colors.inactiveNavigation;

  Color get materialIndicatorColor => colors.primaryLight;

  Color get materialRippleColor => colors.primaryLightest;

}
