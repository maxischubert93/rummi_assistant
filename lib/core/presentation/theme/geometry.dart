import 'package:flutter/cupertino.dart';

class Geometry {
  const Geometry();

  BorderRadius get radiusLarge => BorderRadius.circular(16);

  BorderRadius get radiusMedium => BorderRadius.circular(12);

  BorderRadius get radiusSmall => BorderRadius.circular(8);

  double get spacingExtraSmall => 4;

  double get spacingSmall => 8;

  double get spacingMedium => 16;

  double get spacingLarge => 24;

  double get spacingExtraLarge => 32;

  double get spacingDoubleExtraLarge => 40;

  double get spacingTripleExtraLarge => 64;

  double get maxContentWidth => 1000;

  EdgeInsets get largePadding => EdgeInsets.symmetric(
    vertical: spacingLarge,
    horizontal: spacingLarge,
  );

  EdgeInsets get mediumPadding => EdgeInsets.symmetric(
    vertical: spacingMedium,
    horizontal: spacingMedium,
  );

  EdgeInsets get smallPadding => EdgeInsets.symmetric(
    vertical: spacingSmall,
    horizontal: spacingSmall,
  );
}
