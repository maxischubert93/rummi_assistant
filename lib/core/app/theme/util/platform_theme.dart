import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:rummi_assistant/core/app/theme/app_theme.dart';
import 'package:rummi_assistant/core/app/theme/app_typography.dart';
import 'package:rummi_assistant/core/app/theme/color_scheme.dart';

extension AppPlatformThemeExtension on AppTheme {
  MaterialAppRouterData get materialAppRouterData {
    final colorSchemeLight = AppColorScheme.light.materialColorScheme;
    final textTheme = const TextTheme().apply(
      fontFamily: AppTypography.textFont,
      displayColor: colors.primary,
      bodyColor: colors.onBackground,
    );

    final navigationBarTheme = NavigationBarThemeData(
      backgroundColor: colors.navigation,
      iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return IconThemeData(
              color: colors.navBarTheme.activeContent,
            );
          } else if (states.contains(WidgetState.disabled)) {
            return IconThemeData(
              color: colors.navBarTheme.disabled,
            );
          } else {
            return IconThemeData(
              color: colors.navBarTheme.inactive,
            );
          }
        },
      ),
      labelTextStyle: WidgetStateTextStyle.resolveWith((widgetState) {
        if (widgetState.contains(WidgetState.selected)) {
          return typography.body.copyWith(
            color: colors.navBarTheme.active,
          );
        } else {
          return typography.body.copyWith(
            color: colors.navBarTheme.inactive,
          );
        }
      }),
    );

    final lightTheme = ThemeData(
      colorScheme: colorSchemeLight,
      textTheme: textTheme,
      navigationBarTheme: navigationBarTheme,
    );

    final colorSchemeDark = AppColorScheme.dark.materialColorScheme;
    final darkTheme = ThemeData(
      colorScheme: colorSchemeDark,
      textTheme: textTheme,
      navigationBarTheme: navigationBarTheme,
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
        color: lightColorScheme.navigation,
        darkColor: darkColorScheme.navigation,
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
      textTheme: CupertinoTextThemeData(
        textStyle: TextStyle(
          fontFamily: AppTypography.textFont,
          color: lightColorScheme.onBackground,
        ),
        primaryColor: primaryColor,
      ),
    );

    return CupertinoAppRouterData(theme: theme);
  }
}
