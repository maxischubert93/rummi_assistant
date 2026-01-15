import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rummi_assistant/core/core.dart';

class FileStore {
  Directory? _internalDirectory;
  Directory? _cacheDirectory;

  Future<void> deleteFile(File file) async {
    try {
      await file.delete();
    } on Exception catch (_) {}
  }

  Future<String> cacheDirectory(String subDirectory) async {
    final directory = Directory('${await _cacheDirectoryPath}/$subDirectory');
    await directory.create();
    return directory.path;
  }

  Future<String> storeDirectory(String subDirectory) async {
    final directory = Directory('${await _internalDirectoryPath}/$subDirectory');
    await directory.create();
    return directory.path;
  }

  Future<String> get _internalDirectoryPath async {
    final internal = _internalDirectory ??= defaultTargetPlatform.isIOS
        ? await getApplicationSupportDirectory()
        : await getApplicationDocumentsDirectory();
    return internal.path;
  }

  Future<String> get _cacheDirectoryPath async {
    final cache = _cacheDirectory ??= await getTemporaryDirectory();
    return cache.path;
  }
}
