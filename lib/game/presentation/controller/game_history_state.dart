import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rummi_assistant/game/game.dart';

part 'game_history_state.freezed.dart';

@freezed
class GameHistoryState with _$GameHistoryState {
  const factory GameHistoryState({
    required List<Game> games,
  }) = _GameHistoryState;

  factory GameHistoryState.initial() => const GameHistoryState(
        games: [],
      );

  const GameHistoryState._();

  bool get showEmptyState => games.isEmpty;
}
