import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/feature/game/game.dart';
import 'package:rummi_assistant/feature/home/presentation/controller/home_controller.dart';
import 'package:rummi_assistant/feature/settings/settings.dart';
import 'package:rummi_assistant/feature/timer/timer.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(homeControllerProvider.notifier);
    final state = ref.watch(homeControllerProvider);

    return AppScaffold(
      resizeToAvoidBottomInset: false,
      excludePadding: true,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: context.geometry.mediumPadding,
                child: Column(
                  children: [
                    context.geometry.spacingExtraLarge.verticalBox,
                    Center(
                      child: Display(
                        context.localizations.appName,
                        singleLine: false,
                      ),
                    ),
                    context.geometry.spacingDoubleExtraLarge.verticalBox,
                    const _PlayerSelection(),
                    context.geometry.spacingLarge.verticalBox,
                    TimerSection(
                      currentValue: state.timerDuration,
                      onValueChanged: controller.onTimerDurationChanged,
                    ),
                    context.geometry.spacingLarge.verticalBox,
                    const GameHistorySection(),
                    context.geometry.spacingLarge.verticalBox,
                    const SettingsLegalSection(),
                    context.geometry.spacingDoubleExtraLarge.verticalBox,
                  ],
                ),
              ),
            ),
            Padding(
              padding: context.geometry.mediumPadding,
              child: AppButton.primary(
                text: context.localizations.homeStartGameButton,
                onPressed: () => ref.read(homeControllerProvider.notifier).newGame(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlayerSelection extends ConsumerWidget {
  const _PlayerSelection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Surface(
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
          context.geometry.spacingMedium.verticalBox,
          AppButton.secondary(
            text: context.localizations.homePlayerSectionChangeNamesButton,
            onPressed: () => ref.read(homeControllerProvider.notifier).showPlayerNamesModal(),
          ),
        ],
      ),
    );
  }
}
