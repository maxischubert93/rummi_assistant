import 'package:flutter/material.dart';
import 'package:rummi_assistant/app/theme/app_typography.dart';
import 'package:rummi_assistant/app/theme/color_scheme.dart';
import 'package:rummi_assistant/app/theme/geometry.dart';

class AppTheme extends InheritedWidget {
  AppTheme({
    required this.brightness,
    required super.child,
    super.key,
  }) : colors = AppColorScheme.brightness(brightness);

  final Brightness brightness;
  final AppColorScheme colors;
  late final AppTypography typography = AppTypography(colors);
  final Geometry geometry = const Geometry();

  static AppTheme of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<AppTheme>();
    if (result == null) {
      throw StateError('Missing inherited theme in context');
    }
    return result;
  }

  @override
  bool updateShouldNotify(AppTheme oldWidget) => oldWidget.brightness != brightness;
}
