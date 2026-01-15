import 'package:flutter/foundation.dart';

extension CurrentPlatform on TargetPlatform {
  bool get isIOS => defaultTargetPlatform == TargetPlatform.iOS;

  bool get isAndroid => defaultTargetPlatform == TargetPlatform.android;
}
