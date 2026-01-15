import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/data/remote/url_launch_service.dart';
import 'package:rummi_assistant/core/data/stored/app_database.dart';
import 'package:rummi_assistant/core/data/stored/database.dart';
import 'package:rummi_assistant/core/interactor/url_interactor.dart';
import 'package:rummi_assistant/core/presentation/navigation/router.dart';
import 'package:rummi_assistant/feature/game/data/stored/game_store.dart';
import 'package:rummi_assistant/feature/game/data/stored/game_store_drift.dart';
import 'package:rummi_assistant/feature/game/data/stored/isar_to_drift_migrator.dart';
import 'package:rummi_assistant/feature/game/game.dart';
import 'package:rummi_assistant/feature/settings/data/store/user_settings_store.dart';
import 'package:rummi_assistant/feature/settings/domain/user_settings.dart';
import 'package:rummi_assistant/feature/timer/domain/timer_alert_player.dart';
import 'package:rummi_assistant/feature/timer/service/audio_service.dart';

late PackageInfo packageInfo;

GetIt get _container => GetIt.instance;

Future<void> prepareApp() async {
  configureLogger(logLevel: Level.info);
  packageInfo = await PackageInfo.fromPlatform();

  await _registerStores();
  _registerManagers();
  _registerServices();
  _registerNavigation();
  _registerInteractors();

  await _container.allReady();
}

Future<void> _registerStores() async {
  _container
    ..registerSingletonAsync(DatabaseBuilder.openDatabase)
    ..registerSingleton(AppDatabase())
    ..registerSingleton<UserSettings>(UserSettingsStore())
    ..registerFactory<GameRepository>(GameStoreDrift.new);

  final oldStore = GameStore();
  final migrator = IsarToDriftMigrator(isarStore: oldStore, driftStore: _container.get());
  await migrator.migrate();
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

void _registerNavigation() {
  _container.registerSingleton(buildRouter());
}
