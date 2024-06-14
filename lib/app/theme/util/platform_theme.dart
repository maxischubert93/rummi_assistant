import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:rummi_assistant/app/theme/app_theme.dart';
import 'package:rummi_assistant/app/theme/color_scheme.dart';

extension AppPlatformThemeExtension on AppTheme {
  MaterialAppRouterData get materialAppRouterData {
    final colorSchemeLight = AppColorScheme.light.materialColorScheme;
    final lightTheme = ThemeData(
      colorScheme: colorSchemeLight,
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: colors.navigationColor,
      ),
    );

    final colorSchemeDark = AppColorScheme.dark.materialColorScheme;
    final darkTheme = ThemeData(
      colorScheme: colorSchemeDark,
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: colors.navigationColor,
      ),
    );

    return MaterialAppRouterData(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
    );
  }

  CupertinoAppRouterData get cupertinoAppRouterData {
    final lightColorScheme = AppColorScheme.light;
    final darkColorScheme = AppColorScheme.dark;

    final primaryColor = CupertinoDynamicColor.withBrightness(
      color: lightColorScheme.primary,
      darkColor: darkColorScheme.primary,
    );

    final theme = CupertinoThemeData(
      brightness: brightness,
      barBackgroundColor: CupertinoDynamicColor.withBrightness(
        color: lightColorScheme.navigationColor,
        darkColor: darkColorScheme.navigationColor,
      ),
      primaryColor: primaryColor,
      primaryContrastingColor: CupertinoDynamicColor.withBrightness(
        color: lightColorScheme.onPrimary,
        darkColor: darkColorScheme.onPrimary,
      ),
      scaffoldBackgroundColor: CupertinoDynamicColor.withBrightness(
        color: lightColorScheme.background,
        darkColor: darkColorScheme.background,
      ),
    );

    return CupertinoAppRouterData(theme: theme);
  }
}
