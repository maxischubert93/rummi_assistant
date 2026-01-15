import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/app/theme/app_colors.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/timer/presentation/controller/timer_controller.dart';

class TimerScreen extends ConsumerWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      statusBarBrightness: Brightness.dark,
      excludePadding: true,
      body: GestureDetector(
        onTap: () => ref.read(timerControllerProvider.notifier).reset(),
        onDoubleTap: () => ref.read(timerControllerProvider.notifier).togglePause(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: context.colors.backgroundDark,
          child: const _Timer(),
        ),
      ),
    );
  }
}

class _Timer extends ConsumerStatefulWidget {
  const _Timer();

  @override
  ConsumerState<_Timer> createState() => _TimerState();
}

class _TimerState extends ConsumerState<_Timer> {
  final group = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
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

    final timerFont = context.typography.timer.copyWith(fontSize: 300);

    return Center(
      child: SizedBox(
        width: dimension,
        height: dimension,
        child: Stack(
          children: [
            _TextContainer(
              child: AutoSizeText(
                state.timerText,
                style: timerFont,
                group: group,
              ),
            ),
            _TextContainer(
              child: Visibility.maintain(
                visible: false,
                child: AutoSizeText(
                  '123',
                  textAlign: TextAlign.center,
                  style: timerFont,
                  group: group,
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

class _TextContainer extends StatelessWidget {
  const _TextContainer({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        padding: EdgeInsets.all(context.geometry.spacingDoubleExtraLarge),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
