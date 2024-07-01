abstract class UserSettings {
  Stream<bool> get isTimerSoundEnabledStream;
  Future<void> setIsTimerSoundEnabled(bool value);
  bool get isTimerSoundEnabled;
}
