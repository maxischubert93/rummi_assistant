import 'package:rxdart/rxdart.dart';

extension NullableStreamExtensions<T> on Stream<T?> {
  Stream<T> throwOnNull() => map((value) {
        if (value == null) throw Exception('Null value received');
        return value;
      });

  Stream<T> replaceNull(T defaultValue) => map((value) => value ?? defaultValue);

  Stream<T> filterNull() => whereType<T>();
}
