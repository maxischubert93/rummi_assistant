import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/app/presentation/app.dart';
import 'package:rummi_assistant/config/dependency_container.dart';

void main() async {
  final _ = WidgetsFlutterBinding.ensureInitialized();

  await prepareApp();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
