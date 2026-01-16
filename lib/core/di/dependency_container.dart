import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/data/remote/url_launch_service.dart';
import 'package:rummi_assistant/core/data/stored/app_database.dart';
import 'package:rummi_assistant/core/interactor/url_interactor.dart';
import 'package:rummi_assistant/core/presentation/navigation/router.dart';
import 'package:rummi_assistant/feature/game/data/stored/game_store.dart';
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
    ..registerSingleton(AppDatabase())
    ..registerSingleton<UserSettings>(UserSettingsStore())
    ..registerFactory<GameRepository>(GameStoreDrift.new);
}

void _registerInteractors() {
  _container.registerFactory(() => UrlInteractor(urlLaunchService: UrlLaunchService()));
}

void _registerManagers() {
  _container.registerSingletonAsync(
    () => GameManager.createInstance(gameRepository: _container.get()),
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
