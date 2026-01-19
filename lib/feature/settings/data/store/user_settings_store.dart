import 'package:rummi_assistant/feature/settings/domain/user_settings.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSettingsStore implements UserSettings {
  UserSettingsStore() {
    _init();
  }

  static const _timerSoundEnabled = 'timer_sound_enabled';
  static const _migrationDone = 'drift_migration_done';

  final BehaviorSubject<bool> _timerSoundEnabledSubject = BehaviorSubject<bool>.seeded(true);

  Future<void> _init() async {
    final prefs = await SharedPreferences.getInstance();
    _timerSoundEnabledSubject.add(prefs.getBool(_timerSoundEnabled) ?? true);
  }

  @override
  Stream<bool> get isTimerSoundEnabledStream => _timerSoundEnabledSubject.stream;

  @override
  bool get isTimerSoundEnabled => _timerSoundEnabledSubject.value;

  @override
  Future<void> setIsTimerSoundEnabled(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_timerSoundEnabled, value);
    _timerSoundEnabledSubject.add(value);
  }

  @override
  Future<bool> isDriftMigrationDone() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_migrationDone) ?? false;
  }

  @override
  Future<void> setIsDriftMigrationDone(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_migrationDone, value);
  }
}
