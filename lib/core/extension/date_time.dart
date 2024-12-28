import 'dart:io';

import 'package:intl/intl.dart';

extension FormatExtension on DateTime {
  String get dayMonthYearTime {
    return DateFormat('dd. MMMM yyyy, HH:mm', Platform.localeName).format(this);
  }
}
