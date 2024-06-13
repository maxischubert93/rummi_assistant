import 'package:flutter/widgets.dart';

class AppColors {
  static const Color black = Color(0xFF000000);
  static const Color transparent = Color(0x00000000);

  static const int _redPrimaryColor = 0xFF870819;
  static const red = ColorSwatch(_redPrimaryColor, {
    50: Color(0xFFF3E6E8),
    100: Color(0xFFDAB2B8),
    200: Color(0xFFC88D95),
    300: Color(0xFFF44336),
    400: Color(0xFF9F3947),
    500: Color(_redPrimaryColor),
    600: Color(0xFF7B0717),
    700: Color(0xFF600612),
    800: Color(0xFF4A040E),
    900: Color(0xFF39030B),
  });

  static const int _bluePrimaryColor = 0xFF457CA5;
  static const blue = ColorSwatch(_bluePrimaryColor, {
    50: Color(0xFFECF2F6),
    100: Color(0xFFC5D6E3),
    200: Color(0xFFA9C3D6),
    300: Color(0xFF0D47A1),
    400: Color(0xFF6A96B7),
    500: Color(_bluePrimaryColor),
    600: Color(0xFF3F7196),
    700: Color(0xFF315875),
    800: Color(0xFF26445B),
    900: Color(0xFF242c3e),
  });

  static const int _orangePrimaryColor = 0xFFFB940E;
  static const orange = ColorSwatch(_orangePrimaryColor, {
    50: Color(0xFFFFF4E7),
    100: Color(0xFFFEDEB4),
    200: Color(0xFFFDCE90),
    300: Color(0xFFFCB75E),
    400: Color(0xFFFCA93E),
    500: Color(_orangePrimaryColor),
    600: Color(0xFFE4870D),
    700: Color(0xFFB2690A),
    800: Color(0xFF8A5108),
    900: Color(0xFF693E06),
  });

  static const int _greyPrimaryColor = 0xFF8E8E93;
  static const grey = ColorSwatch(_greyPrimaryColor, {
    50: Color(0xFFFAFAFA),
    100: Color(0xFFF2F2F7),
    200: Color(0xFFE5E5EA),
    300: Color(0xFFD1D1D6),
    400: Color(0xFFA1A1AA),
    500: Color(_greyPrimaryColor),
    600: Color(0xFF75757D),
    700: Color(0xFF62626A),
    800: Color(0xFF4C4C52),
    900: Color(0xFF3A3A40),
  });

  static const int _whitePrimaryColor = 0xFFFFFFFF;
  static const white = ColorSwatch(_whitePrimaryColor, {
    50: Color(_whitePrimaryColor),
    100: Color(0xFFFDFCF8),
    200: Color(0xFFFDFAF5),
    300: Color(0xFFFCF8F0),
    400: Color(0xFFFBF6ED),
    500: Color(0xFFFAF4E9),
    600: Color(0xFFE4DED4),
    700: Color(0xFFB2ADA5),
    800: Color(0xFF8A8680),
    900: Color(0xFF696662),
  });
}
