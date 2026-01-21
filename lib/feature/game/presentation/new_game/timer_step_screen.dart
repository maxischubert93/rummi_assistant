import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/feature/game/presentation/new_game/new_game_config.dart';
import 'package:rummi_assistant/feature/game/presentation/new_game/new_game_controller.dart';
import 'package:rummi_assistant/feature/timer/presentation/widget/timer_section.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class TimerStepScreen extends ConsumerWidget {
  const TimerStepScreen({required this.config, super.key});

  final NewGameConfig config;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(newGameControllerProvider(config));
    final controller = ref.read(newGameControllerProvider(config).notifier);

    return AppScaffold(
      appBarTitle: context.localizations.newGameTimerStepTitle,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TimerSection(
                currentValue: state.timerDuration,
                onValueChanged: controller.onTimerDurationChanged,
              ),
              context.geometry.spacingMedium.verticalBox,
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: context.geometry.maxContentWidth),
                child: AppButton.primary(
                  text: context.localizations.newGameConfigurationFinishedButton,
                  onPressed: controller.onTimerStepFinished,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
