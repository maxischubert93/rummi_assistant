import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/feature/game/presentation/new_game/new_game_config.dart';
import 'package:rummi_assistant/feature/game/presentation/new_game/new_game_controller.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class PlayerAmountStepScreen extends StatelessWidget {
  const PlayerAmountStepScreen({required this.config, super.key});

  final NewGameConfig config;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: context.localizations.newGamePlayerAmountStepTitle,
      body: SafeArea(
        child: Center(
          child: _PlayerAmountSelection(config),
        ),
      ),
    );
  }
}

class _PlayerAmountSelection extends ConsumerWidget {
  const _PlayerAmountSelection(this.config);

  final NewGameConfig config;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(newGameControllerProvider(config).notifier);

    return Surface(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Subtitle(context.localizations.playerSection),
          context.geometry.spacingMedium.verticalBox,
          SegmentedControl<int>(
            segments: {
              2: context.localizations.playerAmountSegment(2),
              3: context.localizations.playerAmountSegment(3),
              4: context.localizations.playerAmountSegment(4),
            },
            currentValue: ref.watch(newGameControllerProvider(config)).amountOfPlayers,
            onValueChanged: controller.onAmountOfPlayersChanged,
          ),
          context.geometry.spacingMedium.verticalBox,
          AppButton.secondary(
            text: context.localizations.newGameContinueButton,
            onPressed: controller.onPlayerAmountStepFinished,
          ),
        ],
      ),
    );
  }
}
