import 'package:flutter/foundation.dart';

extension TargetPlatformExtension on TargetPlatform {
  bool get isIOS => this == TargetPlatform.iOS;
}