import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:rummi_assistant/core/app/navigation/router.dart';
import 'package:rummi_assistant/core/data/remote/url_launch_service.dart';
import 'package:rummi_assistant/core/data/stored/database.dart';
import 'package:rummi_assistant/core/data/stored/game_store.dart';
import 'package:rummi_assistant/core/interactor/url_interactor.dart';
import 'package:rummi_assistant/game/game.dart';
import 'package:rummi_assistant/settings/data/store/user_settings_store.dart';
import 'package:rummi_assistant/settings/domain/user_settings.dart';
import 'package:rummi_assistant/timer/domain/timer_alert_player.dart';
import 'package:rummi_assistant/timer/service/audio_service.dart';

late PackageInfo packageInfo;

GetIt get _container => GetIt.instance;

Future<void> prepareApp() async {
  packageInfo = await PackageInfo.fromPlatform();
  _registerStores();
  //await _setupLogging();
  _registerManagers();
  _registerServices();
  _registerNavigation();
  _registerInteractors();

  await _container.allReady();
}

void _registerStores() {
  _container
    ..registerSingletonAsync(DatabaseBuilder.openDatabase)
    ..registerSingleton<UserSettings>(UserSettingsStore())
    ..registerFactory<GameRepository>(GameStore.new);
}

void _registerInteractors() {
  _container.registerFactory(() => UrlInteractor(urlLaunchService: UrlLaunchService()));
}

void _registerManagers() {
  _container.registerSingletonAsync(
    () => GameManager.createInstance(gameRepository: _container.get()),
    dependsOn: [Isar],
  );
}

void _registerServices() {
  _container.registerFactoryParam<TimerAlertPlayer, String, void>(
    (assetPath, _) => AudioService(assetPath: assetPath),
  );
}

/*Future<void> _setupLogging() async {
  configureLogger(
    logToConsole: kDebugMode,
    logToFile: !kDebugMode,
    logFileDirectory: await _container.get<LogStore>().logDirectory,
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
    logLevel: _container.get<AppConfig>().logLevel,
  );
} */

void _registerNavigation() {
  _container.registerSingleton(buildRouter());
}
