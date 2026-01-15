import 'package:drift/drift.dart';

class ScoresListConverter extends TypeConverter<List<int>, String> {
  const ScoresListConverter();

  static const separator = ',';

  @override
  List<int> fromSql(String fromDb) {
    if (fromDb.isEmpty) return [];
    return fromDb.split(separator).map((e) => int.parse(e.trim())).toList();
  }

  @override
  String toSql(List<int> value) {
    return value.join(separator);
  }
}
