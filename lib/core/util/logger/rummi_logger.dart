import 'package:logger/logger.dart';
import 'package:rummi_assistant/core/util/logger/compact_printer.dart';

Logger? _defaultLogger;
Logger _fallbackLogger = Logger();

Logger get logger => _defaultLogger ?? _fallbackLogger;

void configureLogger({
  required Level logLevel,
}) {
  Logger.level = logLevel;

  _defaultLogger = Logger(
    printer: CompactPrinter(
      stackOffset: 4,
    ),
  );
}
