import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:rummi_assistant/app/theme/color_scheme.dart';

@immutable
class SegmentedControlTheme {
  const SegmentedControlTheme(this.colors);

  final AppColorScheme colors;

  List<Color> get backgroundColorSequence => [
        colors.primary,
        colors.secondary,
        colors.tertiary,
      ];

  List<Color> get contentColorSequence => [
        colors.onPrimary,
        colors.onSecondary,
        colors.onTertiary,
      ];

  Color get borderColor => colors.divider;

  Color get unselectedBackgroundColor => colors.background;

  Color get unselectedContentColor => colors.onBackground;
}
