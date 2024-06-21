import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/app/theme/app_colors.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/in_game/presentation/controller/timer_controller.dart';

class TimerScreen extends ConsumerWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      statusBarBrightness: Brightness.dark,
      excludePadding: true,
      body: GestureDetector(
        onTap: () => ref.read(timerControllerProvider.notifier).reset(),
        onDoubleTap: () => ref.read(timerControllerProvider.notifier).stop(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: AppColors.red[900],
          child: const _Timer(),
        ),
      ),
    );
  }
}

class _Timer extends ConsumerWidget {
  const _Timer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(timerControllerProvider);
    final screenWidth = MediaQuery.sizeOf(context).width;
    final screenHeight = MediaQuery.sizeOf(context).height;

    final isPortrait = screenWidth < screenHeight;
    final padding = switch (isPortrait) {
      true => screenWidth / 8,
      false => screenHeight / 6,
    };

    final dimension = switch (isPortrait) {
      true => screenWidth - padding * 2,
      false => screenHeight - padding * 2,
    };

    return Center(
      child: SizedBox(
        width: dimension,
        height: dimension,
        child: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.all(context.geometry.spacingDoubleExtraLarge),
                child: FittedBox(
                  child: Text(
                    state.timerText,
                    style: context.typography.timer,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: CircularProgressIndicator(
                value: state.timerProgress,
                color: context.colors.tertiary,
                backgroundColor: AppColors.red[700],
                strokeWidth: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
