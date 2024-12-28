import 'package:flutter/foundation.dart';
import 'package:rummi_assistant/app/theme/app_colors.dart';
import 'package:rummi_assistant/app/theme/color_scheme.dart';
import 'package:rummi_assistant/app/theme/component_styles/app_button_style.dart';

@immutable
class AppButtonTheme {
  const AppButtonTheme(this.colors);

  final AppColorScheme colors;

  AppButtonStyle get primary => AppButtonStyle(
        active: AppButtonStateStyle(
          background: colors.primary,
          border: AppColors.transparent,
          content: colors.onPrimary,
        ),
        iOSPressed: AppButtonStateStyle(
          background: colors.primaryLight,
          border: AppColors.transparent,
          content: colors.onPrimary,
        ),
        disabled: AppButtonStateStyle(
          background: colors.disabled,
          border: AppColors.transparent,
          content: colors.onDisabled,
        ),
        androidRipple: colors.onPrimary.withValues(alpha: 0.2),
      );

  AppButtonStyle get secondary => AppButtonStyle(
        active: AppButtonStateStyle(
          background: colors.secondary,
          border: AppColors.transparent,
          content: colors.onSecondary,
        ),
        iOSPressed: AppButtonStateStyle(
          background: colors.secondaryLight,
          border: AppColors.transparent,
          content: colors.onSecondary,
        ),
        disabled: AppButtonStateStyle(
          background: colors.disabled,
          border: AppColors.transparent,
          content: colors.onDisabled,
        ),
        androidRipple: colors.onSecondary.withValues(alpha: 0.2),
      );

  AppButtonStyle get tertiary => AppButtonStyle(
        active: AppButtonStateStyle(
          background: colors.tertiary,
          border: AppColors.transparent,
          content: colors.onTertiary,
        ),
        iOSPressed: AppButtonStateStyle(
          background: colors.tertiaryLight,
          border: AppColors.transparent,
          content: colors.onTertiary,
        ),
        disabled: AppButtonStateStyle(
          background: colors.disabled,
          border: AppColors.transparent,
          content: colors.onDisabled,
        ),
        androidRipple: colors.onTertiary.withValues(alpha: 0.2),
      );

  AppButtonStyle get appBarButton => AppButtonStyle(
        active: AppButtonStateStyle(
          background: AppColors.transparent,
          border: AppColors.transparent,
          content: colors.onBackground,
        ),
        iOSPressed: AppButtonStateStyle(
          background: AppColors.transparent,
          border: AppColors.transparent,
          content: colors.onBackground.withValues(alpha: 0.5),
        ),
        disabled: AppButtonStateStyle(
          background: colors.disabled,
          border: AppColors.transparent,
          content: colors.onDisabled,
        ),
        androidRipple: colors.onBackground.withValues(alpha: 0.2),
      );
}
