import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rummi_assistant/core/domain/model/player.dart';

part 'game.freezed.dart';

@freezed
class Game with _$Game {
  const factory Game({
    required int id,
    required Duration timerDuration,
    required bool isFinished,
    required List<Player> players,
  }) = _Game;
}
