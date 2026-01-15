import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_round.freezed.dart';

@freezed
class GameRound with _$GameRound {
  const factory GameRound({
    required List<PlayerScore> scores,
  }) = _GameRound;
}

@freezed
class PlayerScore with _$PlayerScore {
  const factory PlayerScore({
    required String playerName,
    required int score,
  }) = _PlayerScore;
}
