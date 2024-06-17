import 'package:flutter/cupertino.dart';
import 'package:rummi_assistant/app/theme/app_theme.dart';
import 'package:rummi_assistant/app/theme/app_typography.dart';
import 'package:rummi_assistant/app/theme/color_scheme.dart';

extension ThemeExtension on BuildContext {
  AppColorScheme get colors => AppTheme.of(this).colors;
  AppTypography get typography => AppTheme.of(this).typography;
}
