import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
//
// ignore: depend_on_referenced_packages
import 'package:stack_trace/stack_trace.dart';

class CompactPrinter extends LogPrinter {
  CompactPrinter({
    required int stackOffset,
    int maxMessageLength = 120,
  })  : _stackOffset = stackOffset,
        _maxMessageLength = maxMessageLength,
        super();

  static final Map<Level, String> _levelPrefixes = {
    Level.trace: '[T]',
    Level.debug: '[D]',
    Level.info: '[I]',
    Level.warning: '[W]',
    Level.error: '[E]',
    Level.fatal: '[FATAL]',
  };

  final int _stackOffset;
  final int _maxMessageLength;

  @override
  List<String> log(LogEvent event) {
    final prefix = _levelPrefixes[event.level];
    final time = DateTime.now().toUtc().toLogString();
    var file = LogTrace.formattedFrame(stackOffset: _stackOffset);

    // Don't print file name for http logger
    if (file?.contains('pretty_dio_logger') ?? false) {
      file = '';
    }

    final String message;

    if (event.message is String) {
      message = event.message as String;
    } else {
      message = event.message.toString();
    }

    final splitMessage = message.splitByLength(_maxMessageLength);
    final String firstLine;
    if (kDebugMode) {
      firstLine = '$prefix ${splitMessage.first}';
    } else {
      firstLine = '$prefix $time $file ${splitMessage.first}';
    }

    final lines = splitMessage.skip(1).map((line) => '\t$line').toList()
      ..insert(0, firstLine)
      ..addAll(_errorLines(event.error, event.stackTrace));

    if (event.error != null) {
      lines.add('\tERROR: ${event.error}');
    }

    if (event.stackTrace != null) {
      lines.add('\t${event.stackTrace}');
    }

    return lines;
  }

  List<String> _errorLines(Object? error, StackTrace? stackTrace) {
    if (error == null) return [];

    final lines = <String>['\t$error'];

    final printTrace = stackTrace ?? Trace.current(_stackOffset).vmTrace;
    final stringTrace = printTrace.toString().split('\n').map((line) => '\t$line');
    lines.addAll(stringTrace);

    return lines;
  }
}

extension LogToStringExtension on DateTime {
  static String _fourDigits(int n) {
    final absN = n.abs();
    final sign = n < 0 ? '-' : '';
    if (absN >= 1000) return '$n';
    if (absN >= 100) return '${sign}0$absN';
    if (absN >= 10) return '${sign}00$absN';
    return '${sign}000$absN';
  }

  static String _twoDigits(int n) {
    if (n >= 10) return '$n';
    return '0$n';
  }

  String toLogString() {
    final y = _fourDigits(year);
    final m = _twoDigits(month);
    final d = _twoDigits(day);
    final h = _twoDigits(hour);
    final min = _twoDigits(minute);
    final sec = _twoDigits(second);

    return '$y-$m-$d $h:$min:$sec';
  }
}

extension LogTrace on Trace {
  static String? formattedFrame({required int stackOffset}) {
    final trace = Trace.current(stackOffset);

    if (trace.frames.isEmpty) return null;

    final frame = trace.frames.first;
    final file = frame.uri.pathSegments.last;

    return '$file:${frame.line}';
  }
}

extension on String {
  List<String> splitByLength(int length) {
    return split('\n')
        .map((line) => line._splitLineByLength(length))
        .fold([], (previousValue, element) => previousValue + element);
  }

  List<String> _splitLineByLength(int length) {
    var string = this;
    final splits = <String>[];

    while (string.length > length) {
      splits.add(string.substring(0, length));
      string = string.substring(length);
    }
    splits.add(string);

    return splits;
  }
}
