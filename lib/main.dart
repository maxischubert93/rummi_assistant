import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/app/presentation/app.dart';
import 'package:rummi_assistant/core/di/dependency_container.dart';

void main() async {
  final binding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: binding);

  await prepareApp();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
  FlutterNativeSplash.remove();
}
