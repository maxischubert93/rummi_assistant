import 'dart:async';

import 'package:just_audio/just_audio.dart';
import 'package:rummi_assistant/timer/domain/timer_alert_player.dart';

class AudioService implements TimerAlertPlayer {
  AudioService({required String assetPath}) {
    _player.setAsset(assetPath);
    _subscription = _player.processingStateStream.listen((state) {
      if (state == ProcessingState.completed) {
        stop();
      }
    });
  }

  final _player = AudioPlayer();
  StreamSubscription<ProcessingState>? _subscription;

  @override
  Future<void> play() async {
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
