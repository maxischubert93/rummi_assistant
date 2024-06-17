import 'package:flutter/cupertino.dart';

class Geometry {
  const Geometry();

  BorderRadius get buttonRadius => BorderRadius.circular(40);

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
}

extension WidgetExtension on double {
  SizedBox get verticalBox => SizedBox(height: this);

  SizedBox get horizontalBox => SizedBox(width: this);
}
