import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/data/stored/file_store.dart';

class DatabaseFileStore extends FileStore {
  Future<String> get databaseDirectoryPath async {
    var path = (await getApplicationDocumentsDirectory()).path;

    if (defaultTargetPlatform.isAndroid) {
      path = p.join(path, 'database');
    }

    return path;
  }

  LazyDatabase openDatabase(String name) {
    return LazyDatabase(() async {
      final dbFolder = await databaseDirectoryPath;

      final file = File(p.join(dbFolder, '$name.db'));
      return NativeDatabase(file);
    });
  }
}
