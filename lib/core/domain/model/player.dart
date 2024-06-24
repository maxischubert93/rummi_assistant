import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';

@freezed
class Player with _$Player {
  const factory Player({
    required String name,
    @Default([]) List<int> scores,
  }) = _Player;
}
