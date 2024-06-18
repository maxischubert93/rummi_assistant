import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required int playerAmount,
  }) = _HomeScreenState;

  factory HomeScreenState.initial() => const HomeScreenState(playerAmount: 2);
}
