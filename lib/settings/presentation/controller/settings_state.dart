import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rummi_assistant/core/core.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required List<Player> players,
    required Duration timerDuration,
  }) = _SettingsState;

  factory SettingsState.initial() => const SettingsState(
        players: [],
        timerDuration: Duration(minutes: 1),
      );

  const SettingsState._();
}
