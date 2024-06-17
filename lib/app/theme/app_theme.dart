import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rummi_assistant/app/theme/app_typography.dart';
import 'package:rummi_assistant/app/theme/color_scheme.dart';
import 'package:rummi_assistant/app/theme/geometry.dart';
import 'package:rummi_assistant/app/theme/util/context_extension.dart';

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

  @override
  Widget get child => _SystemStyleWrapper(child: super.child);
}

class _SystemStyleWrapper extends StatelessWidget {
  const _SystemStyleWrapper({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final brightness = AppTheme.of(context).brightness;

    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: brightness == Brightness.dark ? Brightness.light : Brightness.dark,
        statusBarBrightness: brightness,
        systemNavigationBarColor: context.colors.navigationColor,
        systemNavigationBarIconBrightness:
            brightness == Brightness.dark ? Brightness.light : Brightness.dark,
        statusBarColor: context.colors.navigationColor,
      ),
      child: child,
    );
  }
}
