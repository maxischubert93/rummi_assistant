import 'package:flutter/material.dart';

import 'app_colors.dart';

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

  Color get primary;

  Color get onPrimary;

  Color get secondary;

  Color get onSecondary;

  Color get tertiary;

  Color get onTertiary;

  Color get error;

  Color get onError;

  Color get surface;

  Color get onSurface;

  Color get background;

  Color get onBackground;

  Color get divider;

  Color get link;
}

@immutable
class _LightAppColorScheme implements AppColorScheme {
  const _LightAppColorScheme();

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
        surface: surface,
        surfaceDim: AppColors.white[600],
        surfaceBright: AppColors.white[200],
        onSurface: onSurface,
        error: error,
        onError: onError,
        brightness: Brightness.light,
      );
}
