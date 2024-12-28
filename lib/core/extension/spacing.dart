import 'package:flutter/widgets.dart';

extension SpacingExtension on double {
  SizedBox get verticalBox => SizedBox(height: this);

  SizedBox get horizontalBox => SizedBox(width: this);
}
