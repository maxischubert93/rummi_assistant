import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rummi_assistant/core/core.dart';

part 'score_state.freezed.dart';

@freezed
class ScoreState with _$ScoreState {
  const factory ScoreState({
    required List<Player> players,
  }) = _ScoreState;

  factory ScoreState.initial() => const ScoreState(
        players: [],
      );

  const ScoreState._();
}
