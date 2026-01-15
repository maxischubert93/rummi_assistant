import 'package:logger/logger.dart';

class LogLevelFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    if (level == null) return true;
    return event.level.index >= level!.index;
  }
}
