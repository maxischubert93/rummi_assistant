import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/app/app.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/home/presentation/controller/home_controller.dart';
import 'package:rummi_assistant/l10n/l10n.dart';
import 'package:rummi_assistant/settings/presentation/widget/settings_legal_section.dart';
import 'package:rummi_assistant/timer/timer.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  context.geometry.spacingDoubleExtraLarge.verticalBox,
                  Center(
                    child: Display(
                      context.localizations.appName,
                      singleLine: false,
                    ),
                  ),
                  context.geometry.spacingDoubleExtraLarge.verticalBox,
                  const _PlayerSelection(),
                  context.geometry.spacingDoubleExtraLarge.verticalBox,
                  const _TimerSelection(),
                  context.geometry.spacingDoubleExtraLarge.verticalBox,
                  const _GameHistory(),
                  context.geometry.spacingDoubleExtraLarge.verticalBox,
                  const SettingsLegalSection(),
                  context.geometry.spacingDoubleExtraLarge.verticalBox,
                ],
              ),
            ),
          ),
          context.geometry.spacingMedium.verticalBox,
          AppButton.primary(
            text: context.localizations.homeStartGameButton,
            onPressed: () => ref.read(homeControllerProvider.notifier).newGame(),
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

class _TimerSelection extends ConsumerWidget {
  const _TimerSelection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeControllerProvider);

    return Surface(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Subtitle(context.localizations.homeTimerSection),
          context.geometry.spacingMedium.verticalBox,
          TimerSegmentedControl(
            currentValue: state.timerDuration,
            onValueChanged: (duration) =>
                ref.read(homeControllerProvider.notifier).setTimerDuration(duration),
          ),
          context.geometry.spacingMedium.verticalBox,
        ],
      ),
    );
  }
}

class _GameHistory extends StatelessWidget {
  const _GameHistory();

  @override
  Widget build(BuildContext context) {
    return Surface(
      expand: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Subtitle(context.localizations.homeTimerSection),
          context.geometry.spacingMedium.verticalBox,
          context.geometry.spacingMedium.verticalBox,
        ],
      ),
    );
  }
}

