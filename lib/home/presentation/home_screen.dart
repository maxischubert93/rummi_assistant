import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/app/app.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/home/presentation/controller/home_controller.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      body: Column(
        children: [
          context.geometry.spacingDoubleExtraLarge.verticalBox,
          Center(
            child: Display(
              context.localizations.appName,
              singleLine: false,
            ),
          ),
          const Spacer(),
          const _PlayerSelection(),
          const Spacer(),
          const _TimerSelection(),
          const Spacer(),
          AppButton.secondary(
            text: context.localizations.homeStartGameButton,
            onPressed: () => ref.read(homeControllerProvider.notifier).newGame(
                  defaultPlayerName: context.localizations.defaultPlayerName,
                ),
          ),
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
          Subtitle(context.localizations.homePlayerSection),
          context.geometry.spacingMedium.verticalBox,
          SegmentedControl<int>(
            segments: {
              2: context.localizations.homePlayerAmountSegment(2),
              3: context.localizations.homePlayerAmountSegment(3),
              4: context.localizations.homePlayerAmountSegment(4),
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
          Subtitle(context.localizations.homeTimerSection),
          context.geometry.spacingMedium.verticalBox,
          SegmentedControl<Duration>(
            segments: {
              const Duration(minutes: 1): '60',
              const Duration(minutes: 2): '120',
            },
            currentValue: state.timerDuration,
            onValueChanged: (value) =>
                ref.read(homeControllerProvider.notifier).setTimerDuration(value),
            customSegmentText:
                state.customTimerDuration ?? context.localizations.homeCustomTimerSegment,
            onCustomSegmentPressed: () =>
                ref.read(homeControllerProvider.notifier).showTimerSelection(),
            isCustomSegmentSelected: state.isCustomTimerSelected,
          ),
          context.geometry.spacingMedium.verticalBox,
        ],
      ),
    );
  }
}
