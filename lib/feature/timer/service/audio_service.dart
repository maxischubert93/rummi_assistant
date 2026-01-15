import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rummi_assistant/feature/settings/domain/user_settings.dart';
import 'package:rummi_assistant/feature/timer/domain/timer_alert_player.dart';

class AudioService implements TimerAlertPlayer {
  AudioService({required String assetPath}) {
    _player.setAsset(assetPath);
    _subscription = _player.processingStateStream.listen((state) {
      if (state == ProcessingState.completed) {
        stop();
      }
    });
  }

  late final UserSettings _userSettings = GetIt.instance.get();

  final _player = AudioPlayer();
  StreamSubscription<ProcessingState>? _subscription;

  @override
  Future<void> play() async {
    if (!_userSettings.isTimerSoundEnabled) return;
    await _player.play();
  }

  @override
  Future<void> dispose() async {
    await _player.dispose();
    await _subscription?.cancel();
  }

  @override
  Future<void> stop() async {
    await _player.pause();
    await _player.seek(Duration.zero);
  }
}
