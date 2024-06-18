import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/home/presentation/model/home_screen_state.dart';

final homeControllerProvider =
    NotifierProvider<HomeController, HomeScreenState>(HomeController.new);

class HomeController extends Notifier<HomeScreenState> {
  @override
  HomeScreenState build() => HomeScreenState.initial();

  void setPlayerAmount(int playerAmount) {
    state = state.copyWith(playerAmount: playerAmount);
  }

  void setTimerDuration(Duration timerDuration) {
    state = state.copyWith(timerDuration: timerDuration);
  }
}
