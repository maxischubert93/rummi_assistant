import 'package:flutter/rendering.dart';
import 'package:rummi_assistant/app/theme/color_scheme.dart';
import 'package:rummi_assistant/util/assets/fonts.gen.dart';

class AppTypography {
  const AppTypography(this.colors);

  final AppColorScheme colors;

  static const textFont = FontFamily.lato;
  static const displayFont = FontFamily.luckiestGuy;

  TextStyle get display => TextStyle(
        color: colors.primary,
        fontFamily: displayFont,
        fontSize: 45,
      );

  TextStyle get headlineLarge => TextStyle(
        color: colors.onBackground,
        fontFamily: textFont,
        fontSize: 32,
        fontWeight: FontWeight.w700,
        height: 1.2,
      );

  TextStyle get headlineMedium => TextStyle(
        color: colors.onBackground,
        fontFamily: textFont,
        fontSize: 28,
        fontWeight: FontWeight.w700,
        height: 1.25,
      );

  TextStyle get headlineSmall => TextStyle(
        color: colors.onBackground,
        fontFamily: textFont,
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 1.375,
      );

  TextStyle get titleLarge => TextStyle(
        color: colors.onBackground,
        fontFamily: textFont,
        fontSize: 22,
        fontWeight: FontWeight.w400,
      );

  TextStyle get titleMedium => TextStyle(
        color: colors.onBackground,
        fontFamily: textFont,
        fontSize: 19,
        fontWeight: FontWeight.w400,
      );

  TextStyle get subTitleLarge => TextStyle(
        color: colors.onBackground,
        fontFamily: textFont,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      );

  TextStyle get subTitle => TextStyle(
        color: colors.onBackground,
        fontFamily: textFont,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  TextStyle get bodyLarge => TextStyle(
        color: colors.onBackground,
        fontFamily: textFont,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.35,
      );

  TextStyle get body => TextStyle(
        color: colors.onBackground,
        fontFamily: textFont,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.25,
      );

  TextStyle get bodySmall => TextStyle(
        fontFamily: textFont,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: colors.onBackground,
      );


  TextStyle get label => TextStyle(
        color: colors.onBackground,
        fontFamily: textFont,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.1,
        letterSpacing: -0.14,
      );

  TextStyle get button => TextStyle(
        color: colors.onBackground,
        fontFamily: textFont,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.22,
      );
}
