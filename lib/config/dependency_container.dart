import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:rummi_assistant/app/navigation/router.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/data/store/database.dart';
import 'package:rummi_assistant/core/data/store/game_store.dart';
import 'package:rummi_assistant/core/domain/repository/game_repository.dart';
import 'package:rummi_assistant/in_game/domain/timer_alert_player.dart';
import 'package:rummi_assistant/in_game/service/audio_service.dart';

late PackageInfo packageInfo;

Future<void> prepareApp() async {
  final container = GetIt.instance;
  packageInfo = await PackageInfo.fromPlatform();
  await _registerStores(container);
  //await _setupLogging(container);
  await _registerManagers(container);
  _registerServices(container);
  _registerNavigation(container);
  _registerInteractors(container);
}

Future<void> _registerStores(GetIt container) async {
  container
    ..registerSingleton(await DatabaseBuilder.openDatabase())
    ..registerFactory<GameRepository>(GameStore.new);
}

void _registerInteractors(GetIt container) {}

Future<void> _registerManagers(GetIt container) async {
  container.registerSingleton(GameManager());
}

void _registerServices(GetIt container) {
  container.registerFactory<TimerAlertPlayer>(AudioService.new);
}

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
