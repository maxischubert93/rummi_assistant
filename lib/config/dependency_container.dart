import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:rummi_assistant/app/navigation/router.dart';

late PackageInfo packageInfo;

Future<void> prepareApp() async {
  final container = GetIt.instance;
  packageInfo = await PackageInfo.fromPlatform();
  _registerStores(container);
  //await _setupLogging(container);
  _registerServices(container);
  await _registerManagers(container);
  _registerNavigation(container);
  _registerInteractors(container);
}

void _registerServices(GetIt container) {}

void _registerStores(GetIt container) {}

void _registerInteractors(GetIt container) {}

Future<void> _registerManagers(GetIt container) async {}

/*Future<void> _setupLogging(GetIt container) async {
  configureLogger(
    logToConsole: kDebugMode,
    logToFile: !kDebugMode,
    logFileDirectory: await container.get<LogStore>().logDirectory,
    errorCallback: (message, error, stackTrace, {required isFatal}) async {
      if (kDebugMode) return;
      await Sentry.captureException(
        error,
        stackTrace: stackTrace,
        hint: Hint.withMap({
          'message': message,
          'isFatal': isFatal,
        }),
      );
    },
    logLevel: container.get<AppConfig>().logLevel,
  );
} */

void _registerNavigation(GetIt container) {
  container.registerSingleton(buildRouter());
}
