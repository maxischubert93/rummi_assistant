import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';

@freezed
abstract class Player with _$Player {
  const factory Player({
    required String name,
    @Default([]) List<int> scores,
  }) = _Player;

  const Player._();

  int get totalScore => scores.fold(0, (value, element) => value + element);
}
