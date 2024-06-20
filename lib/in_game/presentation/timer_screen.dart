import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/in_game/presentation/controller/timer_controller.dart';

class TimerScreen extends ConsumerWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(timerControllerProvider);
    return AppScaffold(
      excludePadding: true,
      body: GestureDetector(
        onTap: () => ref.read(timerControllerProvider.notifier).reset(),
        onDoubleTap: () => ref.read(timerControllerProvider.notifier).stop(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: context.colors.primary,
          child: Center(
            child: Text(
              state.timerText,
              style: context.typography.timer,
            ),
          ),
        ),
      ),
    );
  }
}
