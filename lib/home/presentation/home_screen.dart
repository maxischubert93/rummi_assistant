import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/app/app.dart';
import 'package:rummi_assistant/home/presentation/model/home_controller.dart';
import 'package:rummi_assistant/util/assets/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Column(
        children: [
          context.geometry.spacingDoubleExtraLarge.verticalBox,
          Center(
            child: Display(
              'Rummi Assistant',
              singleLine: false,
            ),
          ),
          const Spacer(),
          const _PlayerSelection(),
          const Spacer(),
          const _TimerSelection(),
          const Spacer(),
          AppButton.primary(text: 'Start Game', onPressed: () {}),
        ],
      ),
    );
  }
}

class _PlayerSelection extends ConsumerWidget {
  const _PlayerSelection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Surface(
      expand: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Subtitle('Players'),
          context.geometry.spacingMedium.verticalBox,
          SegmentedControl<int>(
            segments: const {
              2: '2 Players',
              3: '3 Players',
              4: '4 Players',
            },
            currentValue: ref.watch(homeControllerProvider).playerAmount,
            onValueChanged: (value) =>
                ref.read(homeControllerProvider.notifier).setPlayerAmount(value),
          ),
        ],
      ),
    );
  }
}

class _TimerSelection extends ConsumerWidget {
  const _TimerSelection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeControllerProvider);

    return Surface(
      expand: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Subtitle('Timer'),
          context.geometry.spacingMedium.verticalBox,
          SegmentedControl<Duration>(
            segments: {
              const Duration(minutes: 1): '60',
              const Duration(minutes: 2): '120',
            },
            currentValue: state.timerDuration,
            onValueChanged: (value) =>
                ref.read(homeControllerProvider.notifier).setTimerDuration(value),
            customSegmentText: 'Custom',
            onCustomSegmentPressed: () {},
            isCustomSegmentSelected: state.isCustomTimerSelected,
          ),
          context.geometry.spacingMedium.verticalBox,
        ],
      ),
    );
  }
}


