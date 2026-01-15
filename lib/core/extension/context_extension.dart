import 'package:flutter/cupertino.dart';
import 'package:rummi_assistant/core/app/theme/app_theme.dart';
import 'package:rummi_assistant/core/app/theme/app_typography.dart';
import 'package:rummi_assistant/core/app/theme/color_scheme.dart';
import 'package:rummi_assistant/core/app/theme/geometry.dart';

extension ThemeExtension on BuildContext {
  AppColorScheme get colors => AppTheme.of(this).colors;
  AppTypography get typography => AppTheme.of(this).typography;
  Geometry get geometry => AppTheme.of(this).geometry;
}
