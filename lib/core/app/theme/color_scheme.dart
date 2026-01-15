import 'package:flutter/material.dart';
import 'package:rummi_assistant/core/app/theme/app_button_theme.dart';
import 'package:rummi_assistant/core/app/theme/app_colors.dart';
import 'package:rummi_assistant/core/app/theme/app_nav_bar_theme.dart';
import 'package:rummi_assistant/core/app/theme/segmented_control_theme.dart';

@immutable
abstract class AppColorScheme {
  factory AppColorScheme.brightness(Brightness brightness) {
    return switch (brightness) {
      Brightness.dark => AppColorScheme.dark,
      _ => AppColorScheme.light,
    };
  }

  static AppColorScheme get light => const _LightAppColorScheme();

  static AppColorScheme get dark => const _LightAppColorScheme();

  ColorScheme get materialColorScheme;

  AppButtonTheme get buttonTheme;

  SegmentedControlTheme get segmentedControlTheme;

  AppNavBarTheme get navBarTheme;

  Color get primary;

  Color get primaryLight;

  Color get primaryLightest;

  Color get onPrimary;

  Color get secondary;

  Color get secondaryLight;

  Color get secondaryLightest;

  Color get onSecondary;

  Color get tertiary;

  Color get tertiaryLight;

  Color get tertiaryLightest;

  Color get onTertiary;

  Color get disabled;

  Color get onDisabled;

  Color get error;

  Color get onError;

  Color get surface;

  Color get onSurface;

  Color get background;

  Color get backgroundDark;

  Color get onBackground;

  Color get divider;

  Color get link;

  Color get navigation;

  Color get inactiveNavigation;
}

@immutable
class _LightAppColorScheme implements AppColorScheme {
  const _LightAppColorScheme();

  @override
  AppButtonTheme get buttonTheme => AppButtonTheme(this);

  @override
  SegmentedControlTheme get segmentedControlTheme => SegmentedControlTheme(this);

  @override
  AppNavBarTheme get navBarTheme => AppNavBarTheme(this);

  @override
  Color get background => AppColors.white;

  @override
  Color get divider => AppColors.grey[400]!;

  @override
  Color get error => AppColors.red[300]!;

  @override
  Color get link => AppColors.blue[300]!;

  @override
  Color get onBackground => AppColors.blue[900]!;

  @override
  Color get onError => AppColors.white;

  @override
  Color get onPrimary => AppColors.white;

  @override
  Color get onSecondary => AppColors.white;

  @override
  Color get onSurface => AppColors.blue[900]!;

  @override
  Color get onTertiary => AppColors.white;

  @override
  Color get primary => AppColors.red;

  @override
  Color get secondary => AppColors.blue;

  @override
  Color get surface => AppColors.white[500]!;

  @override
  Color get tertiary => AppColors.orange;

  @override
  ColorScheme get materialColorScheme => ColorScheme(
        primary: primary,
        onPrimary: onPrimary,
        primaryContainer: AppColors.red[50],
        onPrimaryContainer: AppColors.red[900],
        primaryFixed: AppColors.red[50],
        onPrimaryFixed: AppColors.red[900],
        primaryFixedDim: AppColors.red[100],
        onPrimaryFixedVariant: AppColors.black,
        secondary: secondary,
        onSecondary: onSecondary,
        secondaryContainer: AppColors.blue[100],
        onSecondaryContainer: AppColors.blue[900],
        secondaryFixed: AppColors.blue[100],
        onSecondaryFixed: AppColors.blue[900],
        secondaryFixedDim: AppColors.blue[200],
        onSecondaryFixedVariant: AppColors.black,
        tertiary: tertiary,
        onTertiary: onTertiary,
        surface: background,
        surfaceDim: AppColors.white[600],
        surfaceBright: AppColors.white[200],
        onSurface: onSurface,
        error: error,
        onError: onError,
        brightness: Brightness.light,
      );

  @override
  Color get navigation => AppColors.grey[300]!;

  @override
  Color get disabled => AppColors.grey[500]!;

  @override
  Color get onDisabled => AppColors.black;

  @override
  Color get primaryLight => AppColors.red[400]!;

  @override
  Color get secondaryLight => AppColors.blue[400]!;

  @override
  Color get tertiaryLight => AppColors.orange[400]!;

  @override
  Color get inactiveNavigation => AppColors.grey[800]!;

  @override
  Color get primaryLightest => AppColors.red[200]!;

  @override
  Color get backgroundDark => AppColors.red[900]!;

  @override
  Color get tertiaryLightest => AppColors.orange[200]!;

  @override
  Color get secondaryLightest => AppColors.blue[200]!;
}
